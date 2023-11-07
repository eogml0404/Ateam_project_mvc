package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import app.dbconn.DbConn;
import app.domain.MemberVo;

public class MemberDao {
	
	//멤버변수 선언하고 전역으로 활용하려고 한다.
	
	private Connection conn; //멤버 변수는 선언만해도 자동초기화됨
	private PreparedStatement pstmt;
	//부분만 사용하는 변수는 전역으로 선언하지 X
	
	
	public MemberDao() {
		DbConn dbconn = new DbConn();
		this.conn = dbconn.getConnection();
	}
	
	public int memberInsert( 
			String memberId, String memberPwd, 
			String memberName, String memberBirth,
			String memberGender, String memberPhone, 
			String memberEmail, String memberAddr, 
			String memberHobby){
		int exec = 0;

		String sql = "insert into member0803(memberid,memberpwd,membername,memberbirth,membergender,memberphone,memberemail,memberaddr,memberhobby)"+
				" values(?,?,?,?,?,?,?,?,?)";
				try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,memberId);
				pstmt.setString(2,memberPwd);
				pstmt.setString(3,memberName);
				pstmt.setString(4,memberBirth);
				pstmt.setString(5,memberGender);
				pstmt.setString(6,memberPhone);
				pstmt.setString(7,memberEmail);
				pstmt.setString(8,memberAddr);
				pstmt.setString(9,memberHobby);
				exec = pstmt.executeUpdate();
				} catch(Exception e){
					e.printStackTrace();
				}
		
		return exec;
	}

	public ArrayList<MemberVo> memberSelectAll(){
		//무한배열클래스 객체생성해서 데이터 담을 준비를 한다.
		ArrayList<MemberVo> alist = new ArrayList<MemberVo>();
		ResultSet rs;
		String sql="select midx, membername, memberid, date_format(writeday,\"%Y-%m-%d\") as writeday from member0803 where delyn='N' order by midx desc";
		try{
			//구문(쿼리)객체
			pstmt = conn.prepareStatement(sql);
			//DB에 있는 값을 담아오는 전용객체
			rs = pstmt.executeQuery();
			//rs.next() -> 다음값이 있는지 확인하는 메서드(있으면 true, 없으면 false)
			while(rs.next()){
				MemberVo mv = new MemberVo();
				//rs에서 midx값 꺼내서 mv에 옮겨담는다.
				/*
				 * mv.setMidx( rs.getInt("midx") ); mv.setMemberId( rs.getString("memberid") );
				 * mv.setMemberName( rs.getString("membername")); mv.setWriteday(
				 * rs.getString("writeday")); alist.add(mv);
				 */
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return alist;
	}

	public int memberIdCheck(String memberId){
		int value = 0; //결과값이 0인지 아닌지
		String sql = "select count(*) as cnt from member0803 where memberid=?";
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,memberId);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				value = rs.getInt("cnt");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return value;
	}


	public int memberLoginCheck(String memberId, String memberPwd){
		int value=0;
		String sql = "select midx from member0803 where memberid=? and memberpwd=?";
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,memberId);
			pstmt.setString(2,memberPwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				value = rs.getInt("midx");
				//value가 0이면 일치하지 않는다
				//value가 1이면 일치한다
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return value;
	}
	public int studentLoginCheck(String s_id, String s_pwd){
		int value=0;
		String sql = "select sidx from student where s_id=? and s_pwd=?";
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,s_id);
			pstmt.setString(2,s_pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				value = rs.getInt("sidx");
				//value가 0이면 일치하지 않는다
				//value가 1이면 일치한다
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return value;
	}
	public int professorLoginCheck(String p_id, String p_pwd){
		int value=0;
		String sql = "select pidx from professor where p_id=? and p_pwd=?";
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,p_id);
			pstmt.setString(2,p_pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				value = rs.getInt("pidx");
				//value가 0이면 일치하지 않는다
				//value가 1이면 일치한다
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return value;
	}
}
