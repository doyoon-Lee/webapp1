package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.Ch13BoardDao;
import com.mycompany.webapp.dao.Ch13BoardDao1;
import com.mycompany.webapp.dao.Ch13BoardDao2;
import com.mycompany.webapp.dao.Ch13BoardDao3;
import com.mycompany.webapp.dao.Ch13BoardDao4;


@Service
public class Ch13Service7 {
	private static final Logger logger = 
			LoggerFactory.getLogger(Ch13Service7.class);
	
	@Value("${fileupload}")
	private String saveDirPath;
	
	public void method() {
		logger.info("실행");
		logger.info("fileupload: " + saveDirPath);
		
	}
}
