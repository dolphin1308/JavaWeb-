package dao;

import bean.Apply;
import util.DBUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ApplyDao {

    public boolean insert(Apply apply){
        Object[] o=new Object[]{apply.getDid(),
                apply.getDname(),
                apply.getWid(),
                apply.getReason(),
                apply.getRequest()};
        String sql="insert into apply values(null,?,?,?,?,now(),?,'等待处理')";
        return DBUtil.executeUpdate(sql,o);
    }
    public ArrayList<HashMap<String, String>> query(String where, Object[] o){
        String sql="select request, workday.worktime,ampm, aid,dname,reason,apply.state,applytime from workday,apply "+where;
       return DBUtil.getHashmap(sql,o);
    }

    public boolean update(String set, Object[] o){
        String sql="update apply "+set;
        return DBUtil.executeUpdate(sql,o);
    }
    public void agree(Object[] o){
        String sql="call agreeApply(?,?)";
        DBUtil.executeUpdate(sql,o);
    }
}
