﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myFirstPage.aspx.cs" Inherits="myFirstPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DropDownList runat="server" ID="ddlColor" AutoPostBack="true" 
            onselectedindexchanged="ddlColor_SelectedIndexChanged" 
            style="margin-bottom: 0px"></asp:DropDownList>
    <br /><asp:Label runat="server" ID="lbl">This text will be colored!</asp:Label>
    </div>
    <div>
        <br />HEB:<asp:TextBox runat="server" ID="txtHeb"></asp:TextBox>
        <br />ENG:<asp:TextBox runat="server" ID="txtEng"></asp:TextBox>
        <br /><asp:Button runat="server" ID="btn" Text="add a new color" 
            onclick="btn_Click" />

    </div>
    </form>
</body>
</html>
