package webprj.a02_mvc;

import java.util.ArrayList;

import webprj.dao.PrjDao;
import webprj.z01_vo.Emp;

public class A06_EmpService {
	private PrjDao dao;
	
	public A06_EmpService() {
		dao = new PrjDao();
	}
	public ArrayList<Emp> getEmpList2(Emp sch){
		return dao.getEmpList2(sch);
	}
}
