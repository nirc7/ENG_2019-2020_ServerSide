<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TreeView.aspx.cs" Inherits="TreeView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1" >
            <DataBindings>
                <asp:TreeNodeBinding DataMember="title"     TextField="#InnerText" FormatString="Title: {0}" />
                <asp:TreeNodeBinding DataMember="publisher" TextField="#InnerText" FormatString="Publisher: {0}" />
                <asp:TreeNodeBinding DataMember="author"    TextField="fname" FormatString="first name is: {0}"  />
                <asp:TreeNodeBinding DataMember="price"     TextField="#InnerText"   />
                <asp:TreeNodeBinding DataMember="pages"     TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="chapters"  TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="appendices" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="review"    TextField="eval" />
            </DataBindings>
        </asp:TreeView>
    
    </div>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
        DataFile="~/App_Data/Books.xml" XPath="books/book"></asp:XmlDataSource>
    </form>
</body>
</html>
