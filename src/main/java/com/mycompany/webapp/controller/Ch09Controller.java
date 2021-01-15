package com.mycompany.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.Ch09User;

@Controller
@RequestMapping("/ch09")
public class Ch09Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch09Controller.class);

	@GetMapping("/content")
	public String content() {
		logger.info("실행");
		return "ch09/content";
	}

	/*
	 * @PostMapping("/fileupload") 
	 * public String fileupload(String title, String
	 * desc, MultipartFile attach) { return "redirect:/ch09/content"; }
	 */
	//Dto사용
	@PostMapping("/photoupload")
	public String photoupload(Ch09User user) {
		//문자파트 정보얻기
		String uid = user.getUid();
		String uname = user.getUname();
		String upassword = user.getUpassword();
		logger.info("uid: " + uid);
		logger.info("uname: " + uname);
		logger.info("upassword: " + upassword);
		//파일파트 정보얻기
		MultipartFile uphoto = user.getUphoto();
		if(!uphoto.isEmpty()) {
			String originalFileName = uphoto.getOriginalFilename();
			String contentType = uphoto.getContentType();
			long size = uphoto.getSize();
			logger.info("originalFileName: " + originalFileName);
			logger.info("contentType: " + contentType);
			logger.info("size: " + size);
			
			//파일 저장 이름 및 경로
			String saveDirPath = "D:/MyWorkspace/uploadfiles/";
			//시간을 두어 증복되지않는 이름으로 만듦
			String fileName = new Date().getTime() +"-"+ originalFileName;
			String filePath = saveDirPath + fileName;
			File file = new File(filePath);
			try {
				uphoto.transferTo(file);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
		return "redirect:/ch09/content";
	}
	
	@GetMapping("/photolist")
	public String photoList(Model model) {
		String saveDirPath = "D:/MyWorkspace/uploadfiles/";
		File dir = new File(saveDirPath);
		String[] fileNames = dir.list();
		model.addAttribute("fileNames", fileNames);
		return "ch09/photolist";
	}
	
	@GetMapping("/photodownload")
	public void photoDownload(String photo, HttpServletResponse response) {
		String saveDirPath = "D:/MyWorkspace/uploadfiles/";
		String filePath = saveDirPath + photo;
		response.setContentType("image/jpeg");
		try {
			OutputStream os = response.getOutputStream();
			InputStream is = new FileInputStream(filePath);
			byte[] data = new byte[1024];
			while(true) {
				int readByteNum = is.read(data);
				if(readByteNum == -1) break;
				os.write(data, 0, readByteNum);
			}
			os.flush();
			os.close();
			is.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
