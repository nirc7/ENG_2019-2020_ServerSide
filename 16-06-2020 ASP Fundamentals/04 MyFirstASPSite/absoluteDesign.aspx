<%@ Page Language="C#" AutoEventWireup="true" CodeFile="absoluteDesign.aspx.cs" Inherits="absoluteDesign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    see the following link!!! for absolute positioning 
        <br />
    http://blogs.msdn.com/b/webdevtools/archive/2008/03/11/absolute-and-relative-positioning-in-visual-web-developer-2008-designer.aspx

    </div>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" 
            style="top: 78px; left: 237px; position: absolute; height: 36px; width: 70px" 
            Text="Button" />
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="top: 149px; left: 409px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
    </p>
    </form>
</body>
</html>
