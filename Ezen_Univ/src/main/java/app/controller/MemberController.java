package app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
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
			
		}else if(location.equals("studentJoinAction.do")) {
			

			String s_id = request.getParameter("memberId");
			String s_pwd = request.getParameter("memberPwd");
			String s_name = request.getParameter("memberName");
			String s_phone = request.getParameter("memberPhone");
			String s_email = request.getParameter("memberEmail");
			int s_birth = Integer.parseInt(request.getParameter("memberBirth"));
			String s_major = request.getParameter("memberMajor");
			
			LocalDate now = LocalDate.now();
			int year = now.getYear();
			
			
			
			//int s_no = year*100000;
			//s_no += (int)(Math.random() * 89999);
			//중복 체크하는 메소드 필요
			
			MemberDao md = new MemberDao();
			int exec = md.studentInsert(s_id, s_pwd, s_name, s_phone, s_email, s_birth, s_major);

			PrintWriter out = response.getWriter();
			//boolean tf = stmt.execute(sql);//해당 구문(쿼리)를 실행시킨다

			//System.out.println(sql);
			//System.out.println(tf);
			if(exec == 1){
				//자동 이동 메소드
				//response.sendRedirect(request.getContextPath()+"/member/memberList.html");
				out.println("<script>alert(\"회원가입되었습니다.\");"
				+"document.location.href='"+request.getContextPath()+"/index.jsp'</script>");
			}else{
				out.println("<script>history.back();</script>");
			}
			
		}else if(location.equals("professorJoinAction.do")) {
			

			String p_id = request.getParameter("memberId");
			String p_pwd = request.getParameter("memberPwd");
			String p_name = request.getParameter("memberName");
			String p_phone = request.getParameter("memberPhone");
			String p_email = request.getParameter("memberEmail");
			int p_birth = Integer.parseInt(request.getParameter("memberBirth"));
			String p_major = request.getParameter("memberMajor");
			
			LocalDate now = LocalDate.now();
			int year = now.getYear();
			
			//int p_no = year*10000;
			//p_no += (int)(Math.random() * 8999);
			//중복 체크하는 메소드 필요
			
			MemberDao md = new MemberDao();
			int exec = md.professorInsert(p_id, p_pwd, p_name, p_phone, p_email, p_birth, p_major);

			PrintWriter out = response.getWriter();
			//boolean tf = stmt.execute(sql);//해당 구문(쿼리)를 실행시킨다

			//System.out.println(sql);
			//System.out.println(tf);
			if(exec == 1){
				//자동 이동 메소드
				//response.sendRedirect(request.getContextPath()+"/member/memberList.html");
				out.println("<script>alert(\"회원가입되었습니다.\");"
				+"document.location.href='"+request.getContextPath()+"/index.jsp'</script>");
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
			
		}else if(location.equals("studentLoginAction.do")) {
			
			String s_id = request.getParameter("memberId");
			String s_pwd = request.getParameter("memberPwd");
			
			
			MemberDao md = new MemberDao();
			int midx = 0;
			midx = md.studentLoginCheck(s_id, s_pwd);
			if (midx!=0){ //아이디비번 일치
				//세션에 회원 아이디를 담는다
				HttpSession session = request.getSession();
				session.setAttribute("memberId", s_id);
				session.setAttribute("midx", midx);
				
				response.sendRedirect(request.getContextPath()+"/main/main_s.jsp");
				
			}else{//아이디 비번 불일치
				response.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script language='javascript' type='text/javascript'> alert('로그인 실패'); </script>");
				out.println("<script>location.href='../index.jsp';</script>");
				//response.sendRedirect("./main/main_s.do");
			}
			
		}else if(location.equals("professorLoginAction.do")) {
			
			String p_id = request.getParameter("memberId");
			String p_pwd = request.getParameter("memberPwd");
			
			
			MemberDao md = new MemberDao();
			int pidx = 0;
			pidx = md.professorLoginCheck(p_id, p_pwd);
			if (pidx!=0){ //아이디비번 일치
				//세션에 회원 아이디를 담는다
				HttpSession session = request.getSession();
				session.setAttribute("p_id", p_id);
				session.setAttribute("pidx", pidx);
				
				response.sendRedirect(request.getContextPath()+"/main/main_p.jsp");
				
			}else{//아이디 비번 불일치
				response.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script language='javascript' type='text/javascript'> alert('로그인 실패'); </script>");
				out.println("<script>location.href='../index.jsp';</script>");
				//response.sendRedirect("./main/main_s.do");
			}
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
