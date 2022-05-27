<%@ page contentType="text/html; charset=euc-kr" %> 
<% request.setCharacterEncoding("euc-kr"); %>
<%
try {

 session=request.getSession();
 String id = request.getParameter("id"); 	// 제품 고유번호
 int qty = Integer.parseInt(request.getParameter("quantity")); // 제품 수량
 
 String ca="";	// 카테고리 정보
 String pn="";	// 상품명
 
 if (request.getParameter("cat") != null) 
  if( !(request.getParameter("cat").equals("")) )
   ca=request.getParameter("cat");

 if (request.getParameter("pname") != null) 
  if ( !(request.getParameter("pname").equals("")) ) 
   pn=request.getParameter("pname");
 
 String[] a = session.getValueNames();
 
 for (int i=0; i < a.length; i++) {
  if (id.equals(a[i])) {
   int old=((Integer)session.getValue(id)).intValue();
   qty = qty+old;
  }
 }
 
 session.putValue(id, new Integer(qty));   	//세션 변수에 id(제품 고유번호), qty(구매 갯수)
 
 
 out.println("바구니에 넣었습니다.");
 out.print("[<A href=\"shop_list.jsp?go="+ request.getParameter("go"));
 out.print("&cat="+ ca +"&pname="+pn+"\">계속 쇼핑하기</A>]");
 out.print("[<A href=\"sale_list.jsp?go="+ request.getParameter("go"));
 out.print("&cat="+ ca +"&pname="+pn+"\">장바구니 보기</A>]");
 
} catch (Exception e) {
 out.println(e);
} 
%>