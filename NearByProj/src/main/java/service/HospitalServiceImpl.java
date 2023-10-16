package service;

import java.util.Iterator;
import java.util.List;

import dao.HospitalDao;
import dao.HospitalDaoImpl;
import dto.Hospital;

public class HospitalServiceImpl implements HospitalService {

	static final double EARTH_RADIUS = 6371;

	private HospitalDao hospitalDao;

	public HospitalServiceImpl() {
		hospitalDao = new HospitalDaoImpl();
	}

	@Override
	public Hospital hospitalHinfo(Integer num) throws Exception {
		return null;
	}

	@Override
	public Hospital login(String comnum, String hpassword) throws Exception {
		Hospital hospital = hospitalDao.selectHospital(comnum);
		if (hospital == null)
			throw new Exception("사업자등록번호틀림");
		if (hospital.getHpassword().equals(hpassword) == false)
			throw new Exception("비밀번호 오류");
		return hospital;
	}

	@Override
	public void hospitaljoin(Hospital hospital) throws Exception {
		Hospital shospital = hospitalDao.selectHospital(hospital.getComnum());
		if (shospital != null)
			throw new Exception("사업자등록번호 중복오류");
		hospitalDao.insertHospital(hospital);

	}

	@Override
	public String comnumcheck(String comnum) throws Exception {
		Hospital hospital = hospitalDao.selectHospital(comnum);
		if (hospital == null)
			return "notexist";
		return "exist";
	}

	@Override
	public List<Hospital> hospitalList(String department,String lat, String lon) throws Exception {
		List<Hospital> hospitalList = hospitalDao.selectHospitalList(department);
		for(Iterator<Hospital> iterator = hospitalList.iterator(); iterator.hasNext();) {
			Hospital h = iterator.next();
			double dlat=Double.parseDouble(lat);
			double dlon=Double.parseDouble(lon);
			double hlat=h.getLat().doubleValue();
			double hlon=h.getLon().doubleValue();
			double dis= getDistance(hlat,hlon,dlat,dlon);
			if(dis>5000.0) {
				iterator.remove();
			}
		}
		return hospitalList;
	}

	@Override
	public Hospital selectHospitalBycomnum(String comnum) throws Exception {
		return hospitalDao.selectHospital(comnum);
	}

	@Override
	public Hospital hospitalModify(String comnum) {
		// TODO Auto-generated method stub
		return null;
	}

	public static double getDistance(double lat1, double lon1, double lat2, double lon2) {
		double dLat = Math.toRadians(lat2 - lat1);
		double dLon = Math.toRadians(lon2 - lon1);

		double a = Math.sin(dLat / 2) * Math.sin(dLat / 2) + Math.cos(Math.toRadians(lat1))
				* Math.cos(Math.toRadians(lat2)) * Math.sin(dLon / 2) * Math.sin(dLon / 2);
		double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
		double d = EARTH_RADIUS * c * 1000; // Distance in m
		return d;
	}
}
