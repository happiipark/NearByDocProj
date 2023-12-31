package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dto.Hospital;
import service.HospitalService;
import service.HospitalServiceImpl;

/**
 * Servlet implementation class HInfo
 */
@WebServlet("/hinfo")
public class HInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		Hospital hospital=(Hospital)session.getAttribute("hospitaluser");
		String comnum =hospital.getComnum();
		
		HospitalService hospitalService= new HospitalServiceImpl();
		try {
			Hospital hinfo =hospitalService.hospitalInfo(comnum);
			request.setAttribute("hinfo", hinfo);
			request.getRequestDispatcher("hinfo.jsp").forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("err", "글 상세 조회 실패");
			request.getRequestDispatcher("herror.jsp").forward(request, response);
		}

	
	}
}
