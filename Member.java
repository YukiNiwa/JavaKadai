package uta1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Member extends HttpServlet {

//private final static String DRIVER = "org.gjt.mm.mysql.Driver";
private final static String URL = "jdbc:mysql://localhost/karaoke";
private final static String USER = "root";
private final static String PASS = "bold810";

    @Override
protected void doGet(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {

Connection conn = null;
ArrayList<String[]> table = new ArrayList<String[]>();

try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(URL, USER, PASS);
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM member");
int columnCount = rs.getMetaData().getColumnCount();

String[] records = null;

while (rs.next()) {

records = new String[columnCount];

for(int i = 0; i < columnCount; i++) {
records[i] = rs.getObject(i + 1).toString();
}

table.add(records);
}

rs.close();
stmt.close();

req.setAttribute("table", table);
req.getRequestDispatcher("./jsp/uta1/memberview.jsp").forward(req, res);

} catch(Exception e) {
throw new ServletException(e);
} finally {
try {
if (conn != null) {
	conn.close();
}
} catch (SQLException e) {
throw new ServletException(e);
            }
        }
}
}

