<%@ Page Language="C#" AutoEventWireup="true" CodeFile="01 DataSource.aspx.cs" Inherits="DataSource" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Declerative(הצהרתי) way of binding:
    <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="MovieName" 
            DataValueField="MovieID" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True">
    </asp:DropDownList>
    <asp:Label runat="server" ID="lblRes1"></asp:Label>
    
    <br />
    Imperative(מוחלט) way of binding:
    <asp:DropDownList ID="DropDownList2" runat="server" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
            AutoPostBack="True">
    </asp:DropDownList>
    <asp:Label runat="server" ID="lblRes2"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MovieConStr %>" 
        SelectCommand="SELECT * FROM [Movie]"></asp:SqlDataSource>


    <hr />
    <asp:DropDownList ID="DropDownList3" runat="server" 
        onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
            AutoPostBack="True">
    </asp:DropDownList>
    <asp:Label runat="server" ID="lblRes3"></asp:Label>

    
    
    
    </div>
    </form>
</body>
</html>
