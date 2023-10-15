package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Hospital;
import dto.Patient;
import dto.Reservation;
import service.ReservationService;
import service.ReservationServiceImpl;

/**
 * Servlet implementation class Reservation
 */
@WebServlet("/insertreservation")
public class InsertReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Hospital hospital = (Hospital)session.getAttribute("hospital");
		ReservationServiceImpl reservationservice = new ReservationServiceImpl();
		try {
			List<String> timelist = new ArrayList<>();
			timelist = reservationservice.timelist(hospital);
			request.setAttribute("timelist", timelist);
			request.getRequestDispatcher("reservation.jsp").forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("err", e.getMessage());
			request.getRequestDispatcher("error404.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Hospital hospital = (Hospital)session.getAttribute("hospital");
		Patient patient = (Patient)session.getAttribute("user");
		
		String pidnum = patient.getPidnum(); // 이름value 보내는데 pidnum 어떻게 얻어올지 수정해야함.
		String comnum = hospital.getComnum();
		String resdate = request.getParameter("resdate");
		String restime = request.getParameter("restime");
		String comment = request.getParameter("comment");
		boolean status = false;
		String doccomment = null;
		Integer id = null;
		Reservation reservation = new Reservation(pidnum,comnum,resdate,restime,comment,status,doccomment,id);
		try {
			session.setAttribute("reservation", reservation);
			response.sendRedirect("completereservation");

		} catch (Exception e) {
			request.setAttribute("err", e.getMessage());
			request.getRequestDispatcher("error404.jsp").forward(request, response); // 에러 페이지 따로 만들거에요
		}
	}

}