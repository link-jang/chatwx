package wx.com.dao;

import org.springframework.stereotype.Repository;

import wx.com.entity.event.Msg_Event;

@Repository
public class MsgDAO implements IMsgDAO {

	@Override
	public boolean save(Object obj) {
		// TODO Auto-generated method stub
		
		System.out.println("helloDD");
		return false;
	}

	@Override
	public String getIndex(int i) {
		// TODO Auto-generated method stub
		
		return "欢迎关注微信"+i;
	}

	@Override
	public boolean updateSub(Msg_Event event_sub) {
		// TODO Auto-generated method stub
		
		System.out.println("save one subcribe:"+event_sub.getFromUserName());
		
		return true;
	}

	@Override
	public boolean saveLocation(Msg_Event event_sub) {
		// TODO Auto-generated method stub
		
		System.out.println("Latitud:"+event_sub.getLatitude()+"  Longtitud:"+event_sub.getLongitude());
		return false;
	}

}
