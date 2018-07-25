<%@page language="java" import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>

<%
String name,phno,id;int C=0;
Connection conn=null;
  Statement stmt=null;
  ResultSet rs=null;
  Class.forName("com.mysql.jdbc.Driver");
  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","secret");
  						//DATABASE NAME-----------------------------------------------
name=request.getParameter("n1");
phno=request.getParameter("id1");
try{
stmt=conn.createStatement();
String query="INSERT INTO student(name,phno)VALUES('"+name+"','"+phno+"')";  //TABLE NAME-----------------

   int result=stmt.executeUpdate(query);
stmt.close();
}
catch(Exception e){%>

 <%}

   stmt=conn.createStatement();
String query1="select * from student where phno='"+phno+"'";
   //String query1="SELECT * FROM student WHERE student_name='"+firstname+"'";
   rs=stmt.executeQuery(query1);

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=windows-1252">
	<TITLE>ROUND 1</TITLE>
	<META NAME="GENERATOR" CONTENT="LibreOffice 3.4  (Win32)">
	<META NAME="CREATED" CONTENT="0;0">
	<META NAME="CHANGED" CONTENT="20130825;18313469">
	<script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>

  

</HEAD>
<BODY LANG="en-US" BGCOLOR="white" DIR="LTR">


<TABLE CELLPADDING=2 CELLSPACING=2>
	

</TABLE>
<HR>
<FORM NAME="form" ACTION="set4a.jsp" METHOD="POST"> 	<!-- JSP PAGE NAME INSERTION -->
	<INPUT TYPE=HIDDEN NAME="action" VALUE="list">
<span id="countdown" class="timer"></span>


<script>

var seconds = 900;
//redirect="http://localhost:8080/zzzz/exam.jsp";
function secondPassed() {

	var minutes = Math.round((seconds - 30)/60);

	var remainingSeconds = seconds % 60;

	if (remainingSeconds < 10) {

		remainingSeconds = "0" + remainingSeconds;	

	}

	document.getElementById('countdown').innerHTML = "Time Left " + minutes + ":" + remainingSeconds;

	if (seconds == 0) {

		clearInterval(countdownTimer);
 
		document.forms["form"].submit();
//window.location.href="set1a.jsp";
		//document.getElementById('countdown').innerHTML = redirect;

	} else {

		seconds--;

	}

}



var countdownTimer = setInterval('secondPassed()', 1000);

</script>
 <%
        while(rs.next()) {
      %>
<input type="hidden" align="right" name="text3" id="i" value="<%=rs.getString(2)%>"/>
<%
       }
       rs.close();
       stmt.close();
       conn.close();
      %>


      



	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><b><h1>SET 4</h1></b><br><B>
			
			1)The earlier Roman method of cryptography, popularly known as the -------------


		</B>
<BR><INPUT TYPE=RADIO NAME="q1" VALUE="A" STYLE="width: 0.14in; height: 0.14in">

		Caesar Shift Cipher


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q1" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		Rain Fence Cipher

 
		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q1" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		Transposition Cipher


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q1" VALUE="D" STYLE="width: 0.14in; height: 0.14in"> 

		 Vigenere Cipher


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q1" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default
</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><B>

2)---------------------manipulates traditional characters



 <br> 

<br></B><BR>
<INPUT TYPE=RADIO NAME="q2" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


		Modern Crytography


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q2" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

		Classic Crytography


	 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q2" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
		

		Encryption Cipher



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q2" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

			Decryption Cipher
    



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q2" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<OL START=2>
		<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR><BR>
		</P>
	</OL>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><B>


		3)--------------------------operates on binary bit sequences



 </B><BR><INPUT TYPE=RADIO NAME="q3" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


 				 Modern Crytography


				</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="B" STYLE="width: 0.14in; height: 0.14in">

 Classic Crytography


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		Encryption Cipher


	</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="D" STYLE="width: 0.14in; height: 0.14in">

		Decryption Cipher

</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q3" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><BR><B>

				 4)The art and science of breaking the cipher text is known as-------------------




 </B><BR><INPUT TYPE=RADIO NAME="q4" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


Cryptanalysis.


 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		Crytography



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		Crytology


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="D" STYLE="width: 0.14in; height: 0.14in"> 


		 Crytotech


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q4" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	5)How many Security Services are here-------------


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


		1



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	2



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	3


	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

		4



</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q5" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
		<B>


		6)-----------------------  is the art and science of making a cryptosystem that is capable of providing information security.



   </B><BR><INPUT TYPE=RADIO NAME="q6" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


Cryptanalysis.


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="B" STYLE="width: 0.14in; height: 0.14in"> 
		

		Crytography



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="C" STYLE="width: 0.14in; height: 0.14in"> 


		Crytology



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


		Crytotech

</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q6" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default
				</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><B>

		7)---------------- identifies the originator of the message without any regard router or system that has sent the message.

		</B>


 <BR><INPUT TYPE=RADIO NAME="q7" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

 	Authentication 



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo21"></A><INPUT TYPE=RADIO NAME="q7" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
		 

		Entity Authentication



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo31"></A><INPUT TYPE=RADIO NAME="q7" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		Intergration 



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo41"></A><INPUT TYPE=RADIO NAME="q7" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		 


		  Non Reputation




		 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q7" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	8)For a given cryptosystem, a collection of all possible decryption keys is called  ----------------

	
</B></P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



		Symmetric Key



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		 Decrytion Key




		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		Key space



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		  


		Asymmetric Key



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">
		Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	9) ---------------is an unauthorized entity who attempts to determine the plaintext.

	 </B>
	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="A" STYLE="width: 0.14in; height: 0.14in"> 


	Interceptor




	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	Dceptor




	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 

	User




     
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q9" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	Authenticated


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q9" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	10)------------- types of cryptosystems based on the manner in which encryption-decryption is carried out in the system


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="A" STYLE="width: 0.14in; height: 0.14in">




	1



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	2



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	3



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	4


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">
	Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	11) In a group of n people, to enable two-party communication between any two persons, the number of keys required for group is---------------


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	n*(n+1)/2


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


	n*(n-1)/2



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	 n*(n+2)/2



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	n*(n-2)/2



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	12)-----------------. cipher suites using PSK authentication



 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	PSK



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	  kPSK



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	aPSK



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	 sPSK



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B> 


	13)Types of Attacks?



</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	1


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
 

	2


 </P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 

	3


	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

		4



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>



	14)The design of a cryptosystem is based on how many types cryptography algorithms

 
 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	4

	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	 


	3



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	2


	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		


		1


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	15)the hash function produces 64 bit hash values, the possible hash values are -----------



 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	1.5x10^19


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	1.6x10^19


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	1.7x10^19


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	1.8x10^19



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	 16)3TDES key has length 



</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	


	256 bits 


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	 

	168 bits 


</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 


	64 bits   


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	16 bits



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	17)a^p= a(mod p)


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



	Format Theorem


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	


	Euler Theorem


</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	


	Shannon’s Theorem



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	Euclid Theorem

	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	 18)Which one not belongs to Substitution Technique


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



	Autokey cipher



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	Hill cipher 



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	One Time Pad



 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	Rail Fence



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	19)In 2004, collisions were found in MD5



 </B>
	</P>
	
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	MD2 



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	MD3


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	MD4  


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	MD 5

	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default
	</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


20)Whirlpool hash has how many bit?


</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="A" STYLE="width: 0.14in; height: 0.14in"> 

256 bits


		</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	164 bits


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	512bits


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	64bits


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default
		</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<HR>
	<DIV ALIGN=CENTER>
		<P><INPUT TYPE=SUBMIT VALUE="submit" STYLE="width: 0.7in; height: 0.37in">
		<INPUT TYPE=RESET VALUE="reset" STYLE="width: 0.55in; height: 0.37in">
				</P>
	</DIV>
</FORM>
</BODY>
</HTML>