<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="NavProj.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
        <form id="form1" runat="server">
            <div>
                Page 2 <br />
                <a href="../Page1.aspx">Page1.aspx</a> <br />
                <asp:Button runat="server" ID="btngo2P1" Text="go2p1" OnClick="Dotan" />
            </div>
        </form>
    </center>
</body>
</html>
