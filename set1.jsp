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
//firstname=request.getParameter("FirstName");
//phno=request.getParameter("no");
name=request.getParameter("n1");
phno=request.getParameter("id1");
try{
stmt=conn.createStatement();
String query="INSERT INTO student(name,phno)VALUES('"+name+"','"+phno+"')";
//String query="INSERT INTO student(student_name,phn)VALUES('"+firstname+"','"+phno+"')";
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
<!DOCTYPE html>
<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="CONTENT-TYPE">

    <title>ROUND 1</title>
    <meta content="LibreOffice 3.4 (Win32)" name="GENERATOR">
    <meta content="0;0" name="CREATED">
    <meta content="20130825;18313469" name="CHANGED">
    <script language="JavaScript" type="text/javascript">
		//window.history.forward(1);
    </script>
</head>

<body bgcolor="white" dir="ltr" lang="en-US">
    <table cellpadding="2" cellspacing="2"></table>
    <hr>

    <form action="set1a.jsp" id="form" method="post" name="form">
        <input name="action" type="hidden" value="list"> <span class="timer"
        id="countdown"></span> 
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
        } 
        
        else {
        seconds--;
        }

        }
        var countdownTimer = setInterval('secondPassed()', 1000);
        //};
        </script> <%
                while(rs.next()) {
              %> <input align="right" id="i" name="text3" type="hidden" value=
        "<%=rs.getString(2)%>"> <%
               }
               rs.close();
               stmt.close();
               conn.close();
              %>
	<div id="questions">
        <div style="text-align: left">
            <p style="margin-bottom: 0in"><b><h1>SET 1</h1></b><br><b>1) In a(n) ________, the key is
            called the secret key.</b><br>
            <input name="q1" style="width: 0.14in; height: 0.14in" type="radio"
            value="A">symmetric-key</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q1" style=
            "width: 0.14in; height: 0.14in" type="radio" value=
            "B">asymmetric-key</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q1" style=
            "width: 0.14in; height: 0.14in" type="radio" value="C"> either (a)
            or (b)</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q1" style=
            "width: 0.14in; height: 0.14in" type="radio" value="D"> neither (a)
            nor (b)</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input checked name="q1" style=
            "width: 0.14in; height: 0.14in" type="radio" value=
            "default">Default</p>
        </div>

        <p style="margin-bottom: 0in; text-align: left"><br></p>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><b>2) The _______ cipher is the
            simplest mono alphabetic cipher. It uses modular arithmetic with a
            modulus of 26.<br>
            <br></b><br>
            <input name="q2" style="width: 0.14in; height: 0.14in" type="radio"
            value="A"> transposition</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q2" style=
            "width: 0.14in; height: 0.14in" type="radio" value="B">
            additive</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q2" style=
            "width: 0.14in; height: 0.14in" type="radio" value="C"> shift</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q2" style=
            "width: 0.14in; height: 0.14in" type="radio" value="D"> none of the
            above</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input checked name="q2" style=
            "width: 0.14in; height: 0.14in" type="radio" value=
            "default">Default</p>
        </div>

        <div start="2" style="margin-left: 2em">
            <p style="margin-bottom: 0in; text-align: left"><br>
            <br></p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><b>3) ________ is the science and art
            of transforming messages to make them secure and immune to
            attacks.</b><br>
            <input name="q3" style="width: 0.14in; height: 0.14in" type="radio"
            value="A">Cryptography</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q3" style=
            "width: 0.14in; height: 0.14in" type="radio" value="B">
            Cryptoanalysis</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q3" style=
            "width: 0.14in; height: 0.14in" type="radio" value="C"> either (a)
            or (b)</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q3" style=
            "width: 0.14in; height: 0.14in" type="radio" value="D"> neither (a)
            nor (b)</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input checked name="q3" style=
            "width: 0.14in; height: 0.14in" type="radio" value=
            "default">Default</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><br>
            <b>4) The _________ attack can endanger the security of the
            Diffie-Hellman method if two parties are not authenticated to each
            other.</b><br>
            <input name="q4" style="width: 0.14in; height: 0.14in" type="radio"
            value="A">man-in-the-middle</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q4" style=
            "width: 0.14in; height: 0.14in" type="radio" value="B">ciphertext
            attack</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q4" style=
            "width: 0.14in; height: 0.14in" type="radio" value="C">plaintext
            attack</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q4" style=
            "width: 0.14in; height: 0.14in" type="radio" value="D"> none of the
            above</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input checked name="q4" style=
            "width: 0.14in; height: 0.14in" type="radio" value=
            "default">Default</p>
        </div>

        <p style="margin-bottom: 0in; text-align: left"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in">5) This is an
        encryption/decryption key known only to the party or parties that
        exchange secret messages.</p>

        <p style="margin-bottom: 0in"><input name="q5" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> e-signature</p>

        <p style="margin-bottom: 0in"><input name="q5" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> digital
        certificate</p>

        <p style="margin-bottom: 0in"><input name="q5" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> private key</p>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q5" style=
            "width: 0.14in; height: 0.14in" type="radio" value="D"> security
            token</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input checked name="q5" style=
            "width: 0.14in; height: 0.14in" type="radio" value=
            "default">Default</p>
        </div>

        <p style="margin-bottom: 0in; text-align: left"><br></p>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><b>6) Developed by Philip R.
            Zimmermann, this is the most widely used privacy-ensuring program
            by individuals and is also used by many corporations.</b><br>
            <input name="q6" style="width: 0.14in; height: 0.14in" type="radio"
            value="A"> DSS</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q6" style=
            "width: 0.14in; height: 0.14in" type="radio" value="B"> OCSP</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q6" style=
            "width: 0.14in; height: 0.14in" type="radio" value="C"> Secure
            HTTP</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q6" style=
            "width: 0.14in; height: 0.14in" type="radio" value="D"> Pretty Good
            Privacy</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input checked name="q6" style=
            "width: 0.14in; height: 0.14in" type="radio" value=
            "default">Default</p>
        </div>

        <p style="margin-bottom: 0in; text-align: left"><br></p>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><b>7) This is a mode of operation for
            a block cipher, with the characteristic that each possible block of
            plaintext has a defined corresponding ciphertext value and vice
            versa.</b><br>
            <input name="q7" style="width: 0.14in; height: 0.14in" type="radio"
            value="A"> footprinting</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><a id="rdo21" name=
            "rdo21"></a><input name="q7" style="width: 0.14in; height: 0.14in"
            type="radio" value="B"> hash function</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><a id="rdo31" name=
            "rdo31"></a><input name="q7" style="width: 0.14in; height: 0.14in"
            type="radio" value="C"> watermark</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><a id="rdo41" name=
            "rdo41"></a><input name="q7" style="width: 0.14in; height: 0.14in"
            type="radio" value="D"> Electronic Code Book</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input checked name="q7" style=
            "width: 0.14in; height: 0.14in" type="radio" value=
            "default">Default</p>
        </div>

        <p style="margin-bottom: 0in; text-align: left"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in; text-align: left">8)
        Plain Text: Hypothetical answer Clue: Ceasar's Cipher ( Use frequency
        analysis )</p>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q8" style=
            "width: 0.14in; height: 0.14in" type="radio" value="A">
            Newvznlzoigr gtyclx</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q8" style=
            "width: 0.14in; height: 0.14in" type="radio" value="B">
            Newvznlzoigr gtyclx</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q8" style=
            "width: 0.14in; height: 0.14in" type="radio" value="C">
            Nevuznkzoigr gtyclx</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q8" style=
            "width: 0.14in; height: 0.14in" type="radio" value="D">
            Nevuznkzoigr gtyckx</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input checked name="q8" style=
            "width: 0.14in; height: 0.14in" type="radio" value="default">
            Default</p>
        </div>

        <p style="margin-bottom: 0in; text-align: left"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in; text-align: left">9)
        Plain Text : Abandoned village<br>
        Clue: Rail Fence Cipher (Rail size: 3)</p>

        <p style="margin-bottom: 0in"><input name="q9" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> ANNVL EBDEI
        ALAOD LGO</p>

        <p style="margin-bottom: 0in"><input name="q9" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> ADOVL EBNEI
        AAAND LGK</p>

        <p style="margin-bottom: 0in"><input name="q9" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> ANNVL EDBEI
        ALOAD LGV</p>

        <p style="margin-bottom: 0in"><input name="q9" style=
        "width: 0.14in; height: 0.14in" type="radio" value="D"> ANNVA EDBEL
        LSOAD IGS</p>

        <p style="margin-bottom: 0in"><input checked name="q9" style=
        "width: 0.14in; height: 0.14in" type="radio" value=
        "default">Default</p>

        <p style="margin-bottom: 0in"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in">10) A legitimate user
        who accesses data, programs, or resources for which such access is not
        authorized, or who is authorized for such access but misuses his or her
        privileges is called:</p>

        <p style="margin-bottom: 0in"><input name="q10" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> Clandestine
        User</p>

        <p style="margin-bottom: 0in"><input name="q10" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> Masquerader</p>

        <p style="margin-bottom: 0in"><input name="q10" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> Emissary</p>

        <p style="margin-bottom: 0in"><input name="q10" style=
        "width: 0.14in; height: 0.14in" type="radio" value="D"> Misfeasor</p>

        <p style="margin-bottom: 0in"><input checked name="q10" style=
        "width: 0.14in; height: 0.14in" type="radio" value="default">
        Default</p>

        <p style="margin-bottom: 0in"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in">11) AES has _____
        different configurations</p>

        <p style="margin-bottom: 0in"><input name="q11" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> two</p>

        <p style="margin-bottom: 0in"><input name="q11" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> three</p>

        <p style="margin-bottom: 0in"><input name="q11" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> four</p>

        <p style="margin-bottom: 0in"><input name="q11" style=
        "width: 0.14in; height: 0.14in" type="radio" value="D"> five</p>

        <p style="margin-bottom: 0in"><input checked name="q11" style=
        "width: 0.14in; height: 0.14in" type="radio" value=
        "default">Default</p>

        <p style="margin-bottom: 0in"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in">12) The ________
        method provides a one-time session key for two parties</p>

        <p style="margin-bottom: 0in"><input name="q12" style=
        "width: 0.14in; height: 0.14in" type="radio" value=
        "A">Diffie-Hellman</p>

        <p style="margin-bottom: 0in"><input name="q12" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> RSA</p>

        <p style="margin-bottom: 0in"><input name="q12" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> DES</p>

        <p style="margin-bottom: 0in"><input name="q12" style=
        "width: 0.14in; height: 0.14in" type="radio" value="D"> AES</p>

        <p style="margin-bottom: 0in"><input checked name="q12" style=
        "width: 0.14in; height: 0.14in" type="radio" value=
        "default">Default</p>

        <p style="margin-bottom: 0in; text-align: left"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in; text-align: left">13)
        In an asymmetric-key cipher, the receiver uses the ______ key.</p>

        <p style="margin-bottom: 0in"><input name="q13" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> private</p>

        <p style="margin-bottom: 0in"><input name="q13" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> public</p>

        <p style="margin-bottom: 0in"><input name="q13" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> either (a) or
        (b)</p>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q13" style=
            "width: 0.14in; height: 0.14in" type="radio" value="D"> neither (a)
            nor (b)</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input checked name="q13" style=
            "width: 0.14in; height: 0.14in" type="radio" value=
            "default">Default</p>
        </div>

        <p style="margin-bottom: 0in; text-align: left"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in; text-align: left">14)
        When you receive a public key that has been signed by a number of
        individuals, that key is part of</p>

        <p style="margin-bottom: 0in"><input name="q14" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> illegal
        scam</p>

        <p style="margin-bottom: 0in"><input name="q14" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> certificate
        authority</p>

        <p style="margin-bottom: 0in"><input name="q14" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> web of
        trust</p>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input name="q14" style=
            "width: 0.14in; height: 0.14in" type="radio" value="D"> digital
            fingerprint</p>
        </div>

        <div style="text-align: left">
            <p style="margin-bottom: 0in"><input checked name="q14" style=
            "width: 0.14in; height: 0.14in" type="radio" value=
            "default">Default</p>
        </div>

        <p style="margin-bottom: 0in; text-align: left"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in; text-align: left">15)
        Use keyword cipher technique<br>
        Plain Text : Igniting minds Keyword : magic<br>
        Find cipher text.<br></p>

        <p style="margin-bottom: 0in"><input name="q15" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> fdnftfnd
        lfnis</p>

        <p style="margin-bottom: 0in"><input name="q15" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> hdnhthnd
        lhnis</p>

        <p style="margin-bottom: 0in"><input name="q15" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> gdngtgnd
        lgnis</p>

        <p style="margin-bottom: 0in"><input name="q15" style=
        "width: 0.14in; height: 0.14in" type="radio" value="D"> ednetend
        lenis</p>

        <p style="margin-bottom: 0in"><input checked name="q15" style=
        "width: 0.14in; height: 0.14in" type="radio" value=
        "default">Default</p>

        <p style="margin-bottom: 0in"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in">16) Use columnar
        transposition. Keyword: zebras<br>
        Plain Text : Wishing well. Find the cipher text.</p>

        <p style="margin-bottom: 0in"><input name="q16" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A">
        WHLNGILSEIWG</p>

        <p style="margin-bottom: 0in"><input name="q16" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B">
        IGWGLSEIWHLN</p>

        <p style="margin-bottom: 0in"><input name="q16" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C">
        ILSEIWHLNGWG</p>

        <p style="margin-bottom: 0in"><input name="q16" style=
        "width: 0.14in; height: 0.14in" type="radio" value="D">
        IWGLSEIWHLNG</p>

        <p style="margin-bottom: 0in"><input checked name="q16" style=
        "width: 0.14in; height: 0.14in" type="radio" value=
        "default">Default</p>

        <p style="margin-bottom: 0in"><br></p>

        <p style="font-weight: bold; margin-bottom: 0in">17) The first and only
        encryption algorithm that has been proven to be unbreakable.</p>

        <p style="margin-bottom: 0in"><input name="q17" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> Tap code</p>

        <p style="margin-bottom: 0in"><input name="q17" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> One time
        pad</p>

        <p style="margin-bottom: 0in"><input name="q17" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> Morse code</p>

        <p style="margin-bottom: 0in"><input name="q17" style=
        "width: 0.14in; height: 0.14in" type="radio" value="D"> Book cipher</p>

        <p style="margin-bottom: 0in"><input checked name="q17" style=
        "width: 0.14in; height: 0.14in" type="radio" value=
        "default">Default</p>

        <p style="margin-bottom: 0in"></p>

        <p style="font-weight: bold; margin-bottom: 0in">18) The __________ is
        a polygraphic substitution which can combine much larger groups of
        letters simultaneously using linear algebra</p>

        <p style="margin-bottom: 0in"><input name="q18" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> Four Square
        Cipher</p>

        <p style="margin-bottom: 0in"><input name="q18" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> Hill Cipher</p>

        <p style="margin-bottom: 0in"><input name="q18" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> Playfair
        Cipher</p>

        <p style="margin-bottom: 0in"><input name="q18" style=
        "width: 0.14in; height: 0.14in" type="radio" value="D"> Trifid
        Cipher</p>

        <p style="margin-bottom: 0in"><input checked name="q18" style=
        "width: 0.14in; height: 0.14in" type="radio" value=
        "default">Default</p>

        <p style="margin-bottom: 0in"></p>

        <p style="font-weight: bold; margin-bottom: 0in">19) The DES function
        has _______ components.</p>

        <p style="margin-bottom: 0in"><input name="q19" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> 2</p>

        <p style="margin-bottom: 0in"><input name="q19" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> 3</p>

        <p style="margin-bottom: 0in"><input name="q19" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> 4</p>

        <p style="margin-bottom: 0in"><input name="q19" style=
        "width: 0.14in; height: 0.14in" type="radio" value="D"> 5</p>

        <p style="margin-bottom: 0in"><input checked name="q19" style=
        "width: 0.14in; height: 0.14in" type="radio" value=
        "default">Default</p>

        <p style="margin-bottom: 0in"></p>

        <p style="font-weight: bold; margin-bottom: 0in">20) Use Playfair
        cipher.<br>
        Plain Text: Dawn of dinosaurs Keyword: Dragonite<br>
        Find the cipher text.<br></p>

        <p style="margin-bottom: 0in"><input name="q20" style=
        "width: 0.14in; height: 0.14in" type="radio" value="A"> mo py rg vi rk
        rn bd pg</p>

        <p style="margin-bottom: 0in"><input name="q20" style=
        "width: 0.14in; height: 0.14in" type="radio" value="B"> rg vi rk rn bd
        pg mo py</p>

        <p style="margin-bottom: 0in"><input name="q20" style=
        "width: 0.14in; height: 0.14in" type="radio" value="C"> rg mo py vi rk
        rn bd pg</p>

        <p style="margin-bottom: 0in"><input name="q20" style=
        "width: 0.14in; height: 0.14in" type="radio" value="D"> mo rg vi rk rn
        bd pg py</p>

        <p style="margin-bottom: 0in"><input checked name="q20" style=
        "width: 0.14in; height: 0.14in" type="radio" value=
        "default">Default</p>

        <p style="margin-bottom: 0in"></p>

        <p style="margin-bottom: 0in; text-align: left"><br></p>
        <hr>

        <div style="text-align: center">
            <p><input style="width: 0.7in; height: 0.37in" type="submit" value=
            "submit"> <input style="width: 0.55in; height: 0.37in" type="reset"
            value="reset"></p>
        </div>
      </div>
    </form>
</body>
</html>