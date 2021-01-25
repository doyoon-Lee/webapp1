package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.Ch14Board;

@Repository
public class Ch14BoardDao {
	private static final Logger logger 
			= LoggerFactory.getLogger(Ch14BoardDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	public List<Ch14Board> selectAll() {
		return null;
	}
}
