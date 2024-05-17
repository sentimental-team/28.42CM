<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
 <%
 System.out.print("product_small_json()..."); 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String pSmall_ctgr_id = request.getParameter("small_ctgr_id");

 if(pSmall_ctgr_id == null || pSmall_ctgr_id.equals("")) pSmall_ctgr_id = "138"; 

 int small_ctgr_id = Integer.parseInt(pSmall_ctgr_id); 

String sql =" SELECT brand_name, pd_name, pd_price, pd_grade, pd_image_url"
			+" FROM product p"
			+" JOIN brand b ON p.brand_id=b.brand_id"
			+" Join small_ctgr s ON s.small_ctgr_id = p.small_ctgr_id"
			+" JOIN product_grade g ON p.pd_id= g.pd_id"
			+" JOIN product_image i ON p.pd_id=i.pd_id"
			+" WHERE p.small_ctgr_id=?";
		



JSONObject jsonData = new JSONObject();
JSONArray jsonEmpArray = new JSONArray();

try{
    conn = ConnectionProvider.getConnection();
    pstmt = conn.prepareStatement(sql);
     pstmt.setInt(1, small_ctgr_id); 
    rs = pstmt.executeQuery();

    while(rs.next()){       
        String brand_name = rs.getString("brand_name");
        String pd_name = rs.getString("pd_name");
        int pd_price = rs.getInt("pd_price");
        int pd_grade = rs.getInt("pd_grade");
        String pd_image_url = rs.getString("pd_image_url");
        
        

        JSONObject jsonProduct_small = new JSONObject();
        jsonProduct_small.put("brand_name", brand_name);
        jsonProduct_small.put("pd_name", pd_name);
        jsonProduct_small.put("pd_price", pd_price);
        jsonProduct_small.put("pd_grade", pd_grade);
        jsonProduct_small.put("pd_image_url", pd_image_url);
        jsonProduct_small.put("small_ctgr_id", small_ctgr_id);

        jsonEmpArray.add(jsonProduct_small);
    }

    jsonData.put("Product_small", jsonEmpArray);

} catch(Exception e){
    e.printStackTrace();
} finally{
    JdbcUtil.close(rs);
    JdbcUtil.close(pstmt);
    JdbcUtil.close(conn);
}

%>
<%= jsonData %>
 