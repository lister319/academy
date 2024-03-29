package ch02;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.MemberDAO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/ch02_servlet/*")
///ch02_servlet/* : ch02_servlet뒤에는 어떤 이름이 와도 상관없음.
//즉, /login.do, /logout.do 모두 받아서 처리할 수 있음
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws 
	ServletException, IOException {
		System.out.println(request.getRequestURL());//url값을 찍어봄
		System.out.println(request.getRequestURI());
		String uri = request.getRequestURI();
		if(uri.indexOf("login.do") != -1) {//ch02_servlet/login.do로 요청이 왔다면
			//문자열.indexOf("찾을내용") 내용이 있으면 index값, 없으면 -1
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			System.out.println(userid);
			System.out.println(passwd);
			MemberDAO dao=new MemberDAO();
			String name=dao.loginCheck(userid, passwd);
			String message="";
			String page="";//이동할 페이지 주소
			if(name==null) {//로그인 실패
				message="아이디 또는 비밀번호가 일치하지 않습니다.";
				message=URLEncoder.encode(message, "utf-8");
				page="/ch02/sessionTestForm.jsp?message="+message;
			}else {//로그인 성공
				message=name+"님 환영합니다.";
				HttpSession session=request.getSession();
				//서블릿에서는 세션객체를생성을 해야함
				session.setAttribute("userid", userid);
				session.setAttribute("message", message);
				page="/ch02/session_success.jsp";
			}
			System.out.println(message);
			response.sendRedirect(request.getContextPath()+page);
		}else if(uri.indexOf("logout.do") != -1) {
			//1.세션 변수에 저장된 값들을 제거하는 동작
			HttpSession session=request.getSession();
			session.invalidate();//세션초기화
			//2.페이지를 이동하는 동작(로그인 화면으로 이동)
			String message=
					URLEncoder.encode("로그아웃되었습니다.","utf-8");
			response.sendRedirect(request.getContextPath()
					+"/ch02/sessionTestForm.jsp?message="+message);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
