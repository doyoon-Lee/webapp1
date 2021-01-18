package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.Ch13BoardDao;
import com.mycompany.webapp.dao.Ch13BoardDao1;
import com.mycompany.webapp.dao.Ch13BoardDao2;
import com.mycompany.webapp.dao.Ch13BoardDao3;
import com.mycompany.webapp.dao.Ch13BoardDao4;


@Service
public class Ch13Service6 {
	private static final Logger logger = 
			LoggerFactory.getLogger(Ch13Service6.class);
	//방법1
	@Resource(name="ch13BoardDao5")
	private Ch13BoardDao boardDao5;
	//방법2
	//autowired 쓸경우 밑에 하나더 작성
	@Autowired
	@Qualifier("Ch13BoardDao5Qualifier")
	private Ch13BoardDao boardDao6;
	
	
	public void method() {
		logger.info("실행");
		boardDao5.insert();
		boardDao6.insert();
		
	}
}
