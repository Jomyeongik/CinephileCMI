package notice.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import notice.model.vo.Notice;

public class NoticeDAO {

	public int insertDao(Connection conn, Notice notice) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO NOTICE_TBL VALUES(SEQ_NOTICE_NO.NEXTVAL,?,?,'admin',DEFAULT,DEFAULT)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, notice.getNoticeSubject());
			pstmt.setString(2, notice.getNoticeContent());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	public List<Notice> selectNoticeList(Connection conn) {
		List<Notice> nList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM NOTICE_TBL ORDER BY NOTICE_DATE DESC";
		Notice notice = null;
		try {
			pstmt = conn.prepareStatement(query);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				notice = rsetToNotice(rs);
				nList.add(notice);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
	        // 자원 해제
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
		return nList;
	}

	public Notice selectOneByNo(Connection conn, int noticeNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM NOTICE_TBL WHERE NOTICE_NO=?";
		Notice notice = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, noticeNo);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				notice = rsetToNotice(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
		return notice;
	}
	
	private Notice rsetToNotice(ResultSet rs) throws SQLException {
		Notice notice = new Notice();
		notice.setNoticeNo(rs.getInt("NOTICE_NO"));
		notice.setNoticeSubject(rs.getString("NOTICE_SUBJECT"));
		notice.setNoticeContent(rs.getString("NOTICE_CONTENT"));
		notice.setNoticeWriter(rs.getString("NOTICE_WRITER"));
		notice.setNoticeDate(rs.getDate("NOTICE_DATE"));
		notice.setViewCount(rs.getInt("VIEW_COUNT"));
		return notice;
	}
}
