package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import app.dbconn.DbConn;

public class CourseDao {

	private Connection conn; 
	private PreparedStatement pstmt;

	public CourseDao() {
		DbConn dbconn = new DbConn();
		this.conn = dbconn.getConnection();
	}
	
	public int professorCourseList(int pidx){
		
		
		int exec = 0;

		String sql = "select ct_year, ct_semester, c_name, c_major, c_grade, c_sep, c_score, ct_room, ct_week, pe_period "+
				"from course c join coursetime t"+
				"where c.cidx=t.cidx and pidx=?"
;
				try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,pidx);


				exec = pstmt.executeUpdate();
				} catch(Exception e){
					e.printStackTrace();
				}
		
		return exec;
	}
	
}
