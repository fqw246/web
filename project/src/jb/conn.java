package jb;
import java.sql.*;
public class conn
{
    private Statement stmt = null;
    ResultSet rs = null;
    private Connection conn = null;
    private String dsn;
    //构造函数
    public conn() { }
    //根据dsn参数，加载驱动程序，建立连接
    public void getConn(String dbname, String uid, String pwd)
    {
        try
        {
            dsn = dbname;
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dsn, uid, pwd);
        }
        catch (Exception ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
    }
//执行查询类的SQL语句，有返回集
    public ResultSet executeQuery1(String sql)
    {
        rs = null;
        try
        {
            stmt =conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs = stmt.executeQuery(sql);
        }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery:"+ex.getMessage());
        }
        return rs;
    }
//执行更新类的SQL语句，无返回集
        public void executeUpdate2(String sql)
        {
            stmt = null;
            rs=null;
            try
            {
                stmt =conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                stmt.execute(sql);
                stmt.close();
                conn.close();
            }
            catch(SQLException ex)
            {
                System.err.println("aq.executeQuery: " + ex.getMessage());
            }
        }
//关闭对象
        public void closeStmt()
        {
            try{ stmt.close(); }
            catch(SQLException ex)
            {
                System.err.println("aq.executeQuery: " + ex.getMessage());
            }
        }
        public void closeConn()
        {
            try{conn.close(); }
            catch(SQLException ex)
        {
        System.err.println("aq.executeQuery: " + ex.getMessage());
    }
}
}
