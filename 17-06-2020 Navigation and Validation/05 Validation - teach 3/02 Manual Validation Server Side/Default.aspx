<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>SERVER SIDE VALIDATION</div>
    <div>
    <table>
        <tr>
            <td>NAME:</td><td><asp:TextBox runat="server" ID="txtName" ></asp:TextBox></td>
            <td><asp:Label runat="server" ID="errName" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td>Age:</td><td><asp:TextBox runat="server" ID="txtAge" ></asp:TextBox></td>
            <td><asp:Label runat="server" ID="errAge" ForeColor="Red" ></asp:Label></td>
        </tr>
        <tr >
        <td colspan="2">
        <asp:Button runat="server" ID="btnCheck" Text="Check" OnClick="Check"/>
        </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
