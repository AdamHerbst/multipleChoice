import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class SQLConnection {
	public static void main(String[] args) {
        // create three connections to three different databases on localhost
        Connection conn1 = null;

 
        try {
            // Connect method #1
        	try {
				Class.forName("org.postgresql.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

            String dbURL1 = "jdbc:postgresql:TestDB?user=postgres&password=postgres";
            conn1 = DriverManager.getConnection(dbURL1);
            if (conn1 != null) {
                System.out.println("Connected to database #1");
            }
 
 
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (conn1 != null && !conn1.isClosed()) {
                    conn1.close();
                }

                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
