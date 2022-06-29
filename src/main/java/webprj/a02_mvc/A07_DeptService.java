package webprj.a02_mvc;

import java.util.ArrayList;

import webprj.dao.PrjDao;
import webprj.z01_vo.Dept;

public class A07_DeptService {
	private PrjDao dao;
	
	public A07_DeptService() {
		dao = new PrjDao();
	}
	public ArrayList<Dept> getDeptList2(Dept sch){
		return dao.getDeptList2(sch);
	}
}