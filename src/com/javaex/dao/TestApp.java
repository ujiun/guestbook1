package com.javaex.dao;

import com.javaex.vo.GuestVo;

public class TestApp {

	public static void main(String[] args) {
		GuestDao guestDao = new GuestDao();
		
		
		
		GuestVo guestVo = new GuestVo("테스트2", "테스트2", "테스트2");
		
		guestDao.guestInsert(guestVo);
		System.out.println(guestDao.getguestList());
	}

}
