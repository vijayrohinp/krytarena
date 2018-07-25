<%@page language="java" import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>

<%
String name,phno,id;int C=0,no=0;
Connection conn=null;
  Statement stmt=null;
  ResultSet rs=null;
  Class.forName("com.mysql.jdbc.Driver");
  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","secret");
  						//DATABASE NAME-----------------------------------------------
name=request.getParameter("n1");
phno=request.getParameter("id1");
//try{
//String qr="select * from student where phno='"+phno+"'";
//stmt=conn.createStatement();
//rs=stmt.executeQuery(qr);
//}
//catch(Exception e){

//}


//if(!rs.next())
//{
 
try{
stmt=conn.createStatement();
String query="INSERT INTO student(name,phno)VALUES('"+name+"','"+phno+"')";  //TABLE NAME-----------------

   int result=stmt.executeUpdate(query);
stmt.close();
}
catch(Exception e){

 }
//}
 //else{
 //RequestDispatcher ds=request.getRequestDispatcher("http://localhost:8080/kryptarena/refresh.html");
//}


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
<FORM NAME="form" ACTION="set3a.jsp" METHOD="POST"> 	<!-- JSP PAGE NAME INSERTION -->
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
		<P STYLE="margin-bottom: 0in"><b><h1>SET 3</h1></b><br><B>
			
	 1) In a(n) ________ cipher, the same key is used by both the sender and receiver.


		</B>
<BR><INPUT TYPE=RADIO NAME="q1" VALUE="A" STYLE="width: 0.14in; height: 0.14in">

	symmetric-key


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q1" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


	asymmetric-key

 
		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q1" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	either (a) or (b)


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q1" VALUE="D" STYLE="width: 0.14in; height: 0.14in"> 

	
	neither (a) nor (b)

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

	2) A modern cipher is usually a complex _____cipher made of a combination of different simple ciphers.



 <br> 

<br></B><BR>
<INPUT TYPE=RADIO NAME="q2" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	round


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q2" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	circle


	 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q2" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
		

	square



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q2" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

	none of the above



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


	 3) DES uses a key generator to generate sixteen _______ round keys



 </B><BR><INPUT TYPE=RADIO NAME="q3" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	32-bit


				</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


	48-bit



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	54-bit


	</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="D" STYLE="width: 0.14in; height: 0.14in">

	42-bit


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q3" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><BR><B>

	 4) One commonly used public-key cryptography method is the ______ algorithm.




 </B><BR><INPUT TYPE=RADIO NAME="q4" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


		RSS


 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="B" STYLE="width: 0.14in; height: 0.14in">

		RAS
		



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		RSA


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="D" STYLE="width: 0.14in; height: 0.14in"> 


		RAA


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q4" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	 5) Today, many Internet businesses and users take advantage of cryptography based on this approach. 

 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	 public key infrastructure


</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	 output feedback 



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	 Encrypting File System


	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		
	 single signon



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

	 6) This is the inclusion of a secret message in otherwise unencrypted text or images. 



   </B><BR><INPUT TYPE=RADIO NAME="q6" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	 masquerade



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="B" STYLE="width: 0.14in; height: 0.14in"> 
		

	 steganography



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="C" STYLE="width: 0.14in; height: 0.14in"> 


	 spoof 


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	 eye-in-hand system


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

	 7) Plain Text: Enlightened Soul 	Clue: Ceasar’s Cipher	( Use frequency analysis )

		</B>


 <BR><INPUT TYPE=RADIO NAME="q7" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	KsqnmnykskiXtzq



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo21"></A><INPUT TYPE=RADIO NAME="q7" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
		 

	KsqnmnykskiYtzr



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo31"></A><INPUT TYPE=RADIO NAME="q7" VALUE="C" STYLE="width: 0.14in; height: 0.14in">

	 JsqnlmyjsjiXtzq



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo41"></A><INPUT TYPE=RADIO NAME="q7" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		 


	JsqnlmyjsjiYtzr




		 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q7" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	
	 8) What is the term used for the secret key for symmetric encryption that is generated for use for a short period of time?



	
</B></P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



	stream key



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


	session key




		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	strategic key



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		  


	sequence key



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">
		Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	 9) The RC4 stream cipher is:


	 </B>
	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="A" STYLE="width: 0.14in; height: 0.14in"> 


	byte oriented




	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	16 bit oriented




	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 

	Big-endian oriented




     
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q9" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	Little-endian oriented



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q9" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	10) Plain Text : Relive your life	Clue:  Rail Fence Cipher (Rail size – 3)


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="A" STYLE="width: 0.14in; height: 0.14in">




	RIYRI EFOLE LEUVD




	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	 RILEI EVIYR LEFOU



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	 RIYRV EFOLE LEUIO




	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	 RIYRF EVOLE LEUIS



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">
	Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	 11) A technique that focuses on characterizing the past behaviour of individual users or related groups of users and then detecting significant deviations is called:


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	Statistical anomaly 



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


	Profile - based anomaly



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	Action condition



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	Markov chain



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	 12) Use keyword cipher technique
Plain Text : Instilling knowledge  Keyword : magic
Find cipher text.




 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	fkfndnstfkowkcidcjn



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	fnstfkkfndjnowkcidc



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	fnstfkkfndidcjnowkc



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	fndstfkkfnjnowkcidc



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B> 


	13) On which of the following does RSA cryptography rely on? 



</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	the difficulty in calculating the factors of a large prime number.


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
 

	the difficulty in calculating the prime factors of a large composite number. 




 </P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 

	 the difficulty in calculating the composite factors of a large composite number. 




	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

	 the difficulty in calculating the inverse of a large number.



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>



	 14) Which hash functions are used in S/MIME?


 
 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	MD5 and SHA-1



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	 


	MD4 and MD5



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	MD5 and SHA-2




	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		


	SHA-1 and SHA-2


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	15) Which cryptanalysis attack was the first published attack that is capable of breaking DES in about 247  encryptions.



 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	Meet-in-the-middle




	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	Linear




	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	Differential


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	Statistical




	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	16) Which infrastructure has the principal objective to enable secure, convenient and efficient acquisition of public keys.



</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	


	PKI




 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	 

	KDC




</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 


	CRL



 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	IETF



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	17) Use columnar transposition. Keyword: zebras
Plain Text : Flee at once. Find the cipher text.



 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



	AUECLNEETFFO



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	


	ACLNEUEETOFF
	



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	


	
	AUEFOCLNEETF
	


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	AOUEFFCLNEET


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	18) The technique in which the keyword is constructed by appending the keyword to the beginning of the actual plaintext message.


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



	Vignere





</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	Auto key




</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	Beaufort




 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	Running key



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	19) ______ is a round cipher based on the Rijndael algorithm that uses a 128-bit block of data.



 </B>
	</P>
	
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	AEE
	




	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	DES
	


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	Triple DES
	


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


		AES


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default
	</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


20) Use Playfair cipher.
Plain Text: Rise of guardians	Keyword: Dragonite
Find the cipher text.


</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="A" STYLE="width: 0.14in; height: 0.14in"> 


	if yjrkosgarndtpy




		</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	dtpyif yjrkosgarn


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	if rkosgarndtyjpy




 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	osgarndtpyif yjrk


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