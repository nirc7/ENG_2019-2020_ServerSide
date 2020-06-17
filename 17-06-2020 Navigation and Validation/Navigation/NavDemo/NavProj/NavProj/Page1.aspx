<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="NavProj.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
        <form id="form1" runat="server">
            <div>
                PAGE 1 <br />
                <a href="Page2.aspx">Page2.aspx</a> <br />
                <asp:Button runat="server" ID="btnGo2PAge2" Text="go2p2" OnClick="btnGo2PAge2_Click" />    
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </div>
        </form>
        </center>
</body>
</html>
