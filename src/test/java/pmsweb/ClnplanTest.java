package pmsweb;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.po.CleanPlan;
import com.bdqn.pms.web.po.CleanRecord;
import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.service.clea.IClnplanService;
import com.bdqn.pms.web.service.clea.IClnrecordService;

@Ignore
public class ClnplanTest {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	
	
	   @Test
	   public void test1() {
		ApplicationContext ctx=new 
				ClassPathXmlApplicationContext("applicationContext.xml");
		IClnplanService clnplan=(IClnplanService) ctx.getBean("clnplanServiceImpl");
		List<CleanPlan> plans=null;
		int countPlan=0;
		try {
			countPlan = clnplan.conutClnplan(null,null,null,null);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("总数"+countPlan);
		 PageUtils page=new PageUtils(2,3,new Long(countPlan),5);
		System.out.println(page.getStartrow()+"  "+page.getPagesize());
		try {
			plans=clnplan.ClnplanListByQuery(null,null,null,null,page);
		} catch (Exception e) {
			e.printStackTrace();
		}
		for(CleanPlan p:plans){
			System.out.println(p.getClnplan_id()+"  "+p.getClnplan_name()+"  "+p.getClnplan_charge()+" "+p.getLanddevCompany().getLdcName()+""+p.getClnplan_date());
		}
	}
	   
	   @Test
	   public void test3() {
		ApplicationContext ctx=new 
				ClassPathXmlApplicationContext("applicationContext.xml");
		IClnplanService clnplan=(IClnplanService) ctx.getBean("clnplanServiceImpl");
		List<LanddevCompany> ldcompanys= null;
		int countPlan=0;
		try {
			ldcompanys = clnplan.getCompanyList();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("总数"+countPlan);
		for(LanddevCompany p:ldcompanys){
			System.out.println(p.getLdcName());
		}
	} 
	  
	   @Test
	   public void test4() {
			ApplicationContext ctx=new 
					ClassPathXmlApplicationContext("applicationContext.xml");
			IClnplanService clnplan=(IClnplanService) ctx.getBean("clnplanServiceImpl");
			CleanPlan cleanplan=new CleanPlan();
			LanddevCompany l=new LanddevCompany();
			l.setLdcId(3);
			cleanplan.setLanddevCompany(l);
			cleanplan.setClnplan_name("测试1");
			cleanplan.setClnplan_no("1234434");
			boolean countPlan=false;
			try {
				countPlan=clnplan.addCleanPlan(cleanplan);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			System.out.println("测试：------》"+countPlan);
			
	   } 
	   
	   
	   
	   @Test
	   public void test2() {
		ApplicationContext ctx=new 
				ClassPathXmlApplicationContext("applicationContext.xml");
		IClnrecordService clnrecord= (IClnrecordService) ctx.getBean("clnresordServiceImpl");
		List<CleanRecord> records=null;
		int countrecord=0;
		try {
			countrecord = clnrecord.conutClnrecord(null, null, null, "李");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("总数"+countrecord);
		 PageUtils page=new PageUtils(1,3,new Long(countrecord),5);
		System.out.println(page.getStartrow()+"  "+page.getPagesize());
		try {
			records=clnrecord.getcleanRecordByQuery(null,null,null,"李",page);
		} catch (Exception e) {
			e.printStackTrace();
		}
		for(CleanRecord r:records){
			System.out.println(r.getLanddevCompany().getLdcName()+"  "+r.getClnrecord_cleaner()+"  "+r.getCleanPlan().getClnplan_name());
		}
	}
	   
	   
	   

}
