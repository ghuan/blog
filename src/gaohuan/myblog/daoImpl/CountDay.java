package gaohuan.myblog.daoImpl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class CountDay {
	public static int getBetweenDayNumber(String dateA, String dateB) {
		  long dayNumber = 0;
		  long DAY = 24L * 60L * 60L * 1000L;
		  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		  try {
		   java.util.Date d1 = df.parse(dateA);
		   java.util.Date d2 = df.parse(dateB);
		   dayNumber = (d2.getTime() - d1.getTime()) / DAY;
		  } catch (Exception e) {
		   e.printStackTrace();
		  }
		  return (int) dayNumber;
		 }
	public static String getYestDay(){
		Date date=new Date();//取时间
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(date);
		calendar.add(calendar.DATE,-1);//把日期往后增加一天.整数往后推,负数往前移动
		date=calendar.getTime(); //这个时间就是日期往后推一天的结果
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(date);
		return dateString;
	}
}
