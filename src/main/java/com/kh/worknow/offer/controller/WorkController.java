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

import com.kh.worknow.main.model.service.Job_BoardServiceImpl;
import com.kh.worknow.main.model.service.SearchService;
import com.kh.worknow.main.model.vo.Job_Board;
import com.kh.worknow.member.model.vo.Com_Info;
import com.kh.worknow.offer.model.service.CashService;

@Controller
public class WorkController {
	
	@Autowired
	private CashService cService;
	@Autowired
	private Job_BoardServiceImpl Job_BoardService;
	

	@RequestMapping(value = "cash_refresh.of")
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
	//잡게시판 등록 1순위 작업중 20%
		@RequestMapping(value = "jboardinsert.of")
		public ModelAndView jboardinsert(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		   response.setContentType("text/html; charset=utf-8");
			
		   Job_Board jboard = new Job_Board();
		   Com_Info cboard = new Com_Info();
		   //html내의 내용들을 변환
		   //프리미엄 서비스 1,2,3
		   jboard.setJOB_LEVEL(Integer.parseInt(request.getParameter("p_level")));
		   //제목
		   jboard.setJOB_SUBJECT(request.getParameter("top_subject"));
		   //직종
		   jboard.setJOB_TYPE(request.getParameter("job_select"));
		   //사진이름
		   jboard.setJOB_PHOTO(request.getParameter("photoname"));
		   
		   //숫자 파르세 인트시 에러캐치
		   try {
			 //급여
		   jboard.setJOB_VALUE(Integer.parseInt(request.getParameter("pay_value")));
		 
		   
		   //급여분류
		   jboard.setJOB_VALUETYPE(request.getParameter("pay_select"));
		   //시작시간 넣긔
		   
		   java.sql.Date starttime = new java.sql.Date(java.sql.Date.UTC(1111, 1, 1, Integer.parseInt(request.getParameter("start_hour")), Integer.parseInt(request.getParameter("start_minute")), 0));
		   java.sql.Date endtime = new java.sql.Date(java.sql.Date.UTC(1111, 1, 1, Integer.parseInt(request.getParameter("end_hour")), Integer.parseInt(request.getParameter("end_minute")), 0));
		   System.out.println("시작시간은? "+starttime );
		   System.out.println("끝시간은? "+endtime );
		   jboard.setJOB_STARTTIME(starttime);
		   jboard.setJOB_ENDTIME(endtime);
		   
		   java.sql.Date startday = java.sql.Date.valueOf(request.getParameter("start_day"));
		   java.sql.Date endday = java.sql.Date.valueOf(request.getParameter("start_day"));
		   
		   jboard.setJOB_STARTDAY(startday);
		   jboard.setJOB_ENDDAY(endday);
		   
		   jboard.setJOB_CONTENT(request.getParameter("content_text"));
		   jboard.setJOB_ID(request.getParameter("userid"));
		   jboard.setJOB_KEY(request.getParameter("userid"));
		   //sysdate+7
		   //jboard.setJOB_ENDDATE();
		   jboard.setJOB_MAX_NUM(Integer.parseInt(request.getParameter("max_num")));
		   jboard.setJOB_CURRENT_NUM(0);
		   jboard.setJOB_PUBLIC(1);
		   
		   }
		   catch(Exception e)
		   {
			   jboard.setJOB_VALUE(0);
			   System.out.println("숫자변환 에러");
		   }
		   
		   cboard.setComName(request.getParameter("company_name"));
		   cboard.setComCeo(request.getParameter("ceo"));
		   cboard.setComId(request.getParameter("userid"));
		   cboard.setComAddress(request.getParameter("address1")+"/"+request.getParameter("address2")+"/"+request.getParameter("address3"));
		   cboard.setComPhone(request.getParameter("telnumber"));
		   cboard.setComNumber(request.getParameter("com_number"));
		   
		  
		   
		   //집어넣긔
		   int result=Job_BoardService.insertBoard(jboard,cboard);
		   if(result==0)
		   {
			System.out.println("구인등록실패");   
		   }
		   else if(result==1)
		   {
			   System.out.println("구인등록 둘중하나 실패");      
		   }
		   else {
			   System.out.println("구인등록 성공");   
		   }
		   
		   
		   
		mv.setViewName("offer/StoreOfferView");
		return mv;
		}
	
	
	//회원정보 갱신해서 넣어주긔 2순위  작업 15%
	@RequestMapping(value = "cominfo_refresh.of")
	public void outputCominfo(HttpServletRequest request, HttpServletResponse response) {
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
	
	//파일 업로드 어디서 호출 하던간에 
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
