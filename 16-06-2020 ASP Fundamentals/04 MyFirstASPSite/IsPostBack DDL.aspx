<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IsPostBack DDL.aspx.cs" Inherits="IsPostBack_DDL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList runat="server" ID="myAspDDL" 
            onselectedindexchanged="myAspDDL_SelectedIndexChanged" ></asp:DropDownList>
        <br />
        <input type="submit" id="btn" name="BTN"    />
    </div>

    <div>
        <asp:DropDownList runat="server" ID="DropDownList1" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" >
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label runat="server" ID="res"></asp:Label>
    </div>
    </form>
</body>
</html>
