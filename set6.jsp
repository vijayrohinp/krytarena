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
<FORM NAME="form" ACTION="set6a.jsp" METHOD="POST"> 	<!-- JSP PAGE NAME INSERTION -->
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
		<P STYLE="margin-bottom: 0in"><b><h1>SET 6</h1></b><br><B>
			
			1) When a user is computing the hash of a message and then encrypting the hash with his private key, he is producing:


		</B>
<BR><INPUT TYPE=RADIO NAME="q1" VALUE="A" STYLE="width: 0.14in; height: 0.14in">

		
          a hash code

		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q1" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		 a timestamp

 
		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q1" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		 a message digest 


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q1" VALUE="D" STYLE="width: 0.14in; height: 0.14in"> 

		 a digital signature


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

		2) The DES function has _______ components.


 <br> 

<br></B><BR>
<INPUT TYPE=RADIO NAME="q2" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


		2


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q2" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

		3

	 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q2" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
		

		4



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q2" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

			5



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


		3) In a(n) ________ cipher, the same key is used by both the sender and receiver.



 </B><BR><INPUT TYPE=RADIO NAME="q3" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


 				symmetric-key

				</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		asymmetric-key



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		either (a) or (b)


	</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="D" STYLE="width: 0.14in; height: 0.14in">

		neither (a) nor (b)


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q3" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><BR><B>

				4) The _______ is a number or a set of numbers on which the cipher operates.




 </B><BR><INPUT TYPE=RADIO NAME="q4" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


   cipher


 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		secret



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		key


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="D" STYLE="width: 0.14in; height: 0.14in"> 


			none of the above


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q4" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	5.) This was commonly used in cryptography during World War II.


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


		tunneling 



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	personalization 



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	van Eck phreaking 


	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

		one-time pad



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


		6) A(n) ______ is a keyless substitution cipher with N inputs and M outputs that uses a formula to define the relationship between the input stream and the output stream.



   </B><BR><INPUT TYPE=RADIO NAME="q6" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


   	S-box



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="B" STYLE="width: 0.14in; height: 0.14in"> 
		

		P-box



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="C" STYLE="width: 0.14in; height: 0.14in"> 


			T-box



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


		none of the above


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

		7) This is a trial and error method used to decode encrypted data through exhaustive effort rather than employing intellectual strategies. 

		</B>


 <BR><INPUT TYPE=RADIO NAME="q7" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

 	 chaffing and winnowing



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo21"></A><INPUT TYPE=RADIO NAME="q7" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
		 

		differential cryptanalysis



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo31"></A><INPUT TYPE=RADIO NAME="q7" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		linear cryptanalysis



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo41"></A><INPUT TYPE=RADIO NAME="q7" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		 


		   serendipity 




		 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q7" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	8) Plain Text: Ethical hacking	Clue: Ceasar’s Cipher	( Use frequency analysis )	


	
</B></P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



		 Kznoigr Ngiqotm



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		 Kzopigr Ngiqotm




		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		Kzqrigs Ngiqrum



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		  


		Kzpqigr Ngiqptm



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">
		Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	9) Key distribution often involves the use of _________ which are generated and distributed for temporary use between two parties.


	 </B>
	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="A" STYLE="width: 0.14in; height: 0.14in"> 


	session keys 




	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	 private key certificates




	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 

	 public key certificates 




     
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q9" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	 master keys



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q9" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	10) DSS is a __________ technique.

 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="A" STYLE="width: 0.14in; height: 0.14in">




	  public key 



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

     firewall



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	 timestamp 




	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	 private key



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">
	Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	11) Insertion of messages into the network from a fraudulent source is a __________ attack.


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	 masquerade 



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


	 source repudiation



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	 sequence modification 



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	 spoofing


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	12) The ________ method provides a one-time session key for two parties.



 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	Diffie-Hellman



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	RSA



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	DES



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	AES



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B> 


	13)What is CMAC?



</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	 MAC based on CFB mode


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
 

	 MAC based on CTR mode


 </P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 

	 MAC based on CCT mode


	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

		 MAC based on CBC mode



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>



	14)Key distribution often involves the use of _________ which are generated and
     distributed for temporary use between two parties.

 
 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	 session keys 


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	 


	 private key certificates



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	 public key certificates


	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		


		 master keys


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	15) Use keyword cipher technique
     Plain Text : walk to remember  Keyword : magic
     Find cipher text.


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	wmkj to rclclacr


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	wjkm to racrclcl



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	wjkm to rlclcarl


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	wmkj to racrlccl



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	16) Use columnar transposition. Keyword: zebras
      Plain Text : We are discovered. Find the cipher text.


</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	


	EVRWIACDESEROJDEQR


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	 

	EVRACDESEROJDEQWIR



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 


	OJDEEVRACDESERQWIR

 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	EOJDEQWVRACDESERIR


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	17) Plain Text :Haunted house	Clue:  Rail Fence Cipher (Rail size – 3)

 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



	HNDUA THSUE OE 



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	


	 HUDUA NHSTE OE


</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	


	HUDSA NHUTE OE 



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	HUNSA DHUTE OE

	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	18)  _________ cipher technique translates letters into numbers.


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



	Polybius



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	Playfair



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	Four square



 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	Four square



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	19) Use Playfair cipher.
    Plain Text: Under the tomb.	Keyword: Dragonite
    Find the cipher text.


 </B>
	</P>
	
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	ai jt lb gn ba ui



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	 lb gn ui ai jt ba


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	 lb gn ai jt ba ui


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


      jt ba ui lb gn ai


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default
	</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


20) This is the encryption algorithm that will begin to supplant the Data Encryption Standard (DES) - and later Triple DES - over the next 
few years as the new standard encryption algorithm. 


</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="A" STYLE="width: 0.14in; height: 0.14in"> 


	Rijndael 


		</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	 Kerberos 


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	 Blowfish


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	 IPsec


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