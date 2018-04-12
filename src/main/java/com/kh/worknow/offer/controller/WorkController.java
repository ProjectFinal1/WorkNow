package com.kh.worknow.offer.controller;
 
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.worknow.main.model.service.SearchService;
import com.kh.worknow.offer.model.service.CashService;

@Controller
public class WorkController {
	
	@Autowired
	private CashService cService;
	
	@RequestMapping(value = "fileupload.of")
	public void fileUpload(HttpServletRequest request, HttpServletResponse response,@RequestParam(value = "file", required = false) MultipartFile file) {
		
		// 해당 컨테이너의 구동중인 웹 애플리케이션의 루트 경로 알아냄
					String root = request.getSession().getServletContext().getRealPath("resources");
					// 업로드되는 파일이 저장될 폴더명과 경로 연결 처리
					String savePath = root + "\\uploadFiles";

					if (file != null && !file.isEmpty()) {
						if (!new File(savePath).exists()) {
							new File(savePath).mkdir();
						}

						// 업로도된 파일명을 "년월일시분초.확장자" 로 변경함
						SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
						String originFileName = file.getOriginalFilename();
						String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
								+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

						File renameFile = new File(savePath + "\\" + renameFileName);
						try {
							file.transferTo(renameFile);
							System.out.println("업로드파일명"+ renameFileName);
						} catch (IllegalStateException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
						
					}
					
					/*if (jService.insertBoard(board) > 0) {
						mv.setViewName("redirect:blist.do");

					} else {
						mv.addObject("error", "게시 원글 등록 서비스 실패!");
						mv.setViewName("board/boardError");
					}
					return mv;*/
	}

	@RequestMapping(value = "cash_refresh.ma")
	public void outputCash(HttpServletRequest request, HttpServletResponse response) {
	   response.setContentType("text/html; charset=utf-8");
		
		String id = request.getParameter("id");
		System.out.println("id = " + id );
		
		int db = cService.getCashService(id);
		
	   System.out.println("캐쉬수치 : " + db );
	   
	   
	   //ajax로 데이터전송을 위해  printwirter를 만들고 리스폰스의 writer를 넣어준다.
	   PrintWriter out = null;
	   try {
		out = response.getWriter();
		out.append(""+db); //데이터를 넣어준다.
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   out.flush(); //데이터를 보낸다
	   out.close(); //닫기
	}
	@RequestMapping(value = "fileupload")
	public void fileuploadtest( HttpServletRequest request, HttpServletResponse response,
			@RequestParam("file") MultipartFile file , @RequestParam("userid") String userid){
	
		/*String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\fileupload";
		
		if (file != null && !file.isEmpty()) {
			if (!new File(savePath).exists()) {
				new File(savePath).mkdir();
			}
		}*/
		
		
		System.out.println("파일업로드 : "+file.getOriginalFilename());
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\fileupload";
		
		if (file != null && !file.isEmpty()) {
			if (!new File(savePath).exists()) {
				new File(savePath).mkdir();
			}
			//form= request.getAttribute("formData");
			System.out.println("userid : "+ userid);
			String originFileName = file.getOriginalFilename();
			Calendar calendar =Calendar.getInstance();
			String todate = ""+calendar.get(Calendar.YEAR)+"_"+(calendar.get(Calendar.MONTH)+1)+"_"+calendar.get(Calendar.DATE)+"_"+calendar.get(Calendar.HOUR_OF_DAY)
			+"_"+calendar.get(Calendar.MINUTE)+"_"+calendar.get(Calendar.SECOND);
			String renameFileName = userid+"-"+todate+"."+ originFileName.substring(originFileName.lastIndexOf(".") + 1);
			System.out.println("savePath : "+ savePath);
			File renameFile = new File(savePath + "\\" + renameFileName);
			try {
				file.transferTo(renameFile);
				System.out.println("업로드파일명 : "+ renameFileName);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			 //ajax로 데이터전송을 위해  printwirter를 만들고 리스폰스의 writer를 넣어준다.
			PrintWriter out = null;
			   try {
				out = response.getWriter();
				out.append(""+renameFile.getName()); //데이터를 넣어준다.
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			   out.flush(); //데이터를 보낸다
			   out.close(); //닫기
			
		}
		
	}
}
