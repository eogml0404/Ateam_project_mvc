package app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.dao.MemberDao;
import app.domain.MemberVo;

//HttpServlet를 상속받았기 때문에 클래스가 인터넷페이지가 된다.
@WebServlet("/MemberController")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String location;
	public MemberController(String location) {
		this.location = location;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(location.equals("memberList.do")) {
			
			MemberDao md = new MemberDao();
			ArrayList<MemberVo> list = md.memberSelectAll();
			
			request.setAttribute("list", list);
			
			String path = "/member/memberList.jsp";
			//화면용도의 주소는 forward로 토스해서 해당 찐 주소로 보낸다.
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		} else if(location.equals("memberJoin.do")) {
			
			String path = "/member/memberJoin.jsp";
			//화면용도의 주소는 forward로 토스해서 해당 찐 주소로 보낸다.
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		} else if(location.equals("memberJoinAction.do")) {
			
			
			//데이터를 넘겨주면 요청객체는 그 값을 받아서 넘어온 매개변수에 담긴 값을
			//꺼내서 새로운 변수에 담는다
			String memberId = request.getParameter("memberId");
			String memberName = request.getParameter("memberName");
			String memberPwd = request.getParameter("memberPwd");
			String memberPhone = request.getParameter("memberPhone");
			String memberEmail = request.getParameter("memberEmail");
			String memberYear = request.getParameter("memberYear");
			String memberMonth = request.getParameter("memberMonth");
			String memberDay = request.getParameter("memberDay");
			String memberGender = request.getParameter("memberGender");
			String memberAddr = request.getParameter("memberAddr");
			String[] memberHobby = request.getParameterValues("memberHobby");
			String str = "";
			for(int i=0; i<memberHobby.length; i++){
				str += memberHobby[i];
				str += ", ";
			}
			str = str.substring(0, str.length()-2); //마지막 ", " 지우기


			//쿼리를 실행할 객체를 생성해서
			//DB에 입력한다


			String memberBirth=memberYear+memberMonth+memberDay;

			//쿼리를 실행시키는 객체반환 사용
			//stmt 객체 사용
			//Statement stmt = conn.createStatement();

			/* String new_index_q = "SELECT MAX(MIDX) FROM MEMBER0803";
			ResultSet new_index = stmt.executeQuery(new_index_q);
			int index_num =0;
			while(new_index.next()) {
				index_num = new_index.getInt(1) +1;
			} 
			-> 시퀀스 알기 전의 코드*/
			MemberDao md = new MemberDao();
			int exec = md.memberInsert(memberId, memberPwd, memberName, memberBirth, memberGender, memberPhone, memberEmail, memberAddr, str);

			PrintWriter out = response.getWriter();
			//boolean tf = stmt.execute(sql);//해당 구문(쿼리)를 실행시킨다

			//System.out.println(sql);
			//System.out.println(tf);
			if(exec == 1){
				//자동 이동 메소드
				//response.sendRedirect(request.getContextPath()+"/member/memberList.html");
				out.println("<script>alert(\"회원가입되었습니다.\");"
				+"document.location.href='"+request.getContextPath()+"/member/memberList.do'</script>");
			}else{
				out.println("<script>history.back();</script>");
			}
			
		}else if(location.equals("memberLogin.do")) {
			String path = "/member/memberLogin.jsp";
			//화면용도의 주소는 forward로 토스해서 해당 찐 주소로 보낸다.
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if(location.equals("memberLogout.do")) {
			HttpSession session = request.getSession();
			session.removeAttribute("memberId");
			session.removeAttribute("midx");
			session.invalidate(); //초기화
			
			response.sendRedirect(request.getContextPath()+"/");
			
		}else if(location.equals("memberLoginAction.do")) {
			
			String memberId = request.getParameter("memberId");
			String memberPwd = request.getParameter("memberPwd");
			
			
			MemberDao md = new MemberDao();
			int midx = 0;
			midx = md.memberLoginCheck(memberId, memberPwd);
			if (midx!=0){ //아이디비번 일치
				//세션에 회원 아이디를 담는다
				HttpSession session = request.getSession();
				session.setAttribute("memberId", memberId);
				session.setAttribute("midx", midx);
				
				response.sendRedirect(request.getContextPath()+"/index.jsp");
				
			}else{//아이디 비번 불일치
				response.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script language='javascript' type='text/javascript'> alert('로그인 실패'); </script>");
				out.println("<script>location.href='memberLogin.do';</script>");
				//response.sendRedirect("./memberLogin.do");
			}
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
