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
<FORM NAME="form" ACTION="set9a.jsp" METHOD="POST"> 	<!-- JSP PAGE NAME INSERTION -->
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
		<P STYLE="margin-bottom: 0in"><b><h1>SET 9</h1></b><br><B>
			
			1) Plain Text : Abandoned village	Clue:  Rail Fence Cipher (Rail size – 3)


		</B>
<BR><INPUT TYPE=RADIO NAME="q1" VALUE="A" STYLE="width: 0.14in; height: 0.14in">

		ANNVL EBDEI ALAOD LGO


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q1" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		ADOVL EBNEI AAAND LGK

 
		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q1" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		ANNVL EDBEI ALOAD LGV


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q1" VALUE="D" STYLE="width: 0.14in; height: 0.14in"> 

		ANNVA EDBEL LSOAD IGS


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

		2) Use keyword cipher technique
        Plain Text : Igniting minds  Keyword : magic
        Find cipher text.


 <br> 

<br></B><BR>
<INPUT TYPE=RADIO NAME="q2" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


		 fdnftfnd lfnis


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q2" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

		hdnhthnd lhnis 


	 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q2" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
		

		gdngtgnd lgnis



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q2" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

			ednetend lenis


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


		3) The _________ attack can endanger the security of the Diffie-Hellman method if two parties 
		are not authenticated to each other.



 </B><BR><INPUT TYPE=RADIO NAME="q3" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


 				man-in-the-middle


				</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		ciphertext attack


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		plaintext attack


	</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q3" VALUE="D" STYLE="width: 0.14in; height: 0.14in">

		none of the above


</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q3" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><BR><B>

				4) The DES function has _______ components.




 </B><BR><INPUT TYPE=RADIO NAME="q4" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


 2


 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		3


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		4

		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q4" VALUE="D" STYLE="width: 0.14in; height: 0.14in"> 


		5

</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in">
<INPUT TYPE=RADIO NAME="q4" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	5.) Developed by Philip R. Zimmermann, this is the most widely used privacy-ensuring program by individuals and is
	also used by many corporations. 


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


		 DSS 



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	OCSP


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	Secure HTTP


	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q5" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

		Pretty Good Privacy



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


		6) A legitimate user who accesses data, programs, or resources for which such access is not authorized, or who is authorized for
		such access but misuses his or her privileges is called:


   </B><BR><INPUT TYPE=RADIO NAME="q6" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


   	 Clandestine User 


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="B" STYLE="width: 0.14in; height: 0.14in"> 
		

		 Masquerader



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="C" STYLE="width: 0.14in; height: 0.14in"> 


		Emissary 



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q6" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


		 Misfeasor



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

		7) In a(n) ________, the key is called the secret key.

		</B>


 <BR><INPUT TYPE=RADIO NAME="q7" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

 	symmetric-key



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo21"></A><INPUT TYPE=RADIO NAME="q7" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
		 

		asymmetric-key



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo31"></A><INPUT TYPE=RADIO NAME="q7" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		either (a) or (b)



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><A NAME="rdo41"></A><INPUT TYPE=RADIO NAME="q7" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		 


		 neither (a) nor (b)




		 </P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q7" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	8) AES has _____ different configurations


	
</B></P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



		 two


		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


		three




		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


		four



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		  


		five



		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q8" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">
		Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	9) The __________ is a polygraphic substitution which can combine much larger groups 
	of letters simultaneously using linear algebra


	 </B>
	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="A" STYLE="width: 0.14in; height: 0.14in"> 


	Four Square Cipher




	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	 Hill Cipher



	</P>
	<P STYLE="margin-bottom: 0in"> <INPUT TYPE=RADIO NAME="q9" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 

	 Playfair Cipher



     
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q9" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	Trifid Cipher


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q9" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	10) The ________ method provides a one-time session key for two parties.


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="A" STYLE="width: 0.14in; height: 0.14in">




	 Diffie-Hellman



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	RSA


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	DES




	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	AES



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q10" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">
	Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	11) This is an encryption/decryption key known only to the party or parties that exchange secret messages. 

 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	e-signature 


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="B" STYLE="width: 0.14in; height: 0.14in">


	digital certificate



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	private key


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	security token


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q11" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	12) In an asymmetric-key cipher, the receiver uses the ______ key.


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	private


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	public


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	either (a) or (b)



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	neither (a) nor (b)


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q12" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B> 


	13) When you receive a public key that has been signed by a number of individuals, that key is part of



</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	illegal scam


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
 

	certificate authority


 </P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 

	web of trust



	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		

		digital fingerprint




		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q13" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>



	14) The _______ cipher is the simplest mono alphabetic cipher. It uses modular arithmetic with a modulus of 26.


 
 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	transposition


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	 

transposition



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	shift

	</P>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
		


		none of the above

		</P>
	</DIV>
	<DIV ALIGN=LEFT>
		<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q14" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	</DIV>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><BR>
	</P>
	<P ALIGN=LEFT STYLE="margin-bottom: 0in"><B>


	15) Use columnar transposition. Keyword: zebras
   Plain Text : Wishing well.  Find the cipher text.



 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	

	WHLNGILSEIWG


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	

	IGWGLSEIWHLN



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	

	ILSEIWHLNGWG


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	 IWGLSEIWHLNG



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q15" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>

16) Plain Text: Hypothetical answer	Clue: Ceasar’s Cipher	( Use frequency analysis )



</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="A" STYLE="width: 0.14in; height: 0.14in">
	


	Newvznlzoigr gtyclx


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	 
      Newvznlzoigr gtyclx



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	 


	Nevuznkzoigr gtyclx


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	Nevuznkzoigr gtyckx



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q16" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"><BR>
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	17) The first and only encryption algorithm that has been proven to be unbreakable.

 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



	Tap code



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="B" STYLE="width: 0.14in; height: 0.14in">
	


	One time pad


</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="C" STYLE="width: 0.14in; height: 0.14in">
	


	Morse code



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="D" STYLE="width: 0.14in; height: 0.14in">
	

	Book cipher


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q17" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


     18) Use Playfair cipher.
      Plain Text: Dawn of dinosaurs	Keyword: Dragonite
      Find the cipher text.


 </B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="A" STYLE="width: 0.14in; height: 0.14in">



	mo py rg vi rk rn bd pg



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	rg vi rk rn bd pg mo py



</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


       rg mo py vi rk rn bd pg


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	mo rg vi rk rn bd pg py



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q18" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


	19) ________ is the science and art of transforming messages to make them secure and immune to attacks.	


 </B>
	</P>
	
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="A" STYLE="width: 0.14in; height: 0.14in">


	Cryptography


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	Cryptoanalysis

	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="C" STYLE="width: 0.14in; height: 0.14in">


	either (a) or (b)


	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="D" STYLE="width: 0.14in; height: 0.14in">


	neither (a) nor (b)



	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q19" VALUE="default" CHECKED STYLE="width: 0.14in; height: 0.14in">Default
	</P>
	<P STYLE="margin-bottom: 0in"> 
	</P>
	<P STYLE="margin-bottom: 0in"><B>


20) The ________ method provides a one-time session key for two parties.

</B>
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="A" STYLE="width: 0.14in; height: 0.14in"> 


	Diffie-Hellman


		</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="B" STYLE="width: 0.14in; height: 0.14in">



	RSA


 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="C" STYLE="width: 0.14in; height: 0.14in">



	DES

 
	</P>
	<P STYLE="margin-bottom: 0in"><INPUT TYPE=RADIO NAME="q20" VALUE="D" STYLE="width: 0.14in; height: 0.14in">



	AES


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