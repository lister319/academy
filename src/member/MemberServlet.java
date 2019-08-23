package member;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException {
		 System.out.println("member servlet...");
	       //dao 생성
	       MemberDAO dao=new MemberDAO();
	       //메모 목록을 받아옴
	       List<MemberDTO> items=dao.listMember();
	       //저장
	       request.setAttribute("list", items); //key, value
	       //페이지 이동
	       RequestDispatcher rd=
	    		   request.getRequestDispatcher("/member/member_list.jsp");
	       rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
