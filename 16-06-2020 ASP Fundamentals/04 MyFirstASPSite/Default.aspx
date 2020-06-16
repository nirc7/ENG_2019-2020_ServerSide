<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>nir's page</title>
    <script type="text/javascript">
        function Change() {
            var label = document.getElementById("stam");
            stam.innerText = "from JS !";
            //alert(label.innerText);
        }
    </script>
</head>
<body onload="Change();">
    <form id="form1" runat="server">
    <div>
     <h5 align="center">This is our first web site</h5>
        <div style="border-style: solid">
         <label id="lblText" >What's your name? </label>
         <br /><asp:TextBox ID="txtName" runat="server" placeholder="insert a text"  ></asp:TextBox>
         <%-- When you add runat="server" the HTML control gets a field in the class built for the page--%>
         <br /><br /><label id="lblResult" runat="server" >Will be displayed only at start</label>
         <br /><br /><asp:Label ID="lblResult2" runat="server" >Will behave like the label above</asp:Label>
        </div>
     
        <div style="background-color: #00FFFF">
        <br /><br /><asp:Label ID="lblPostBack" runat="server" ></asp:Label>
        </div>
     
        <br /><br /><input type="submit" value="Push"/>
        <br /><br /><asp:Button ID="btnASPBtn" OnClick="nirs_Click" Text="nir's button" runat="server"/>
        
        <div style="font-family: Aharoni">
        <br /><br /><asp:Label id="stam" runat="server" >first time</asp:Label>
        </div>
        
    </div>
    </form>
</body>
</html>
