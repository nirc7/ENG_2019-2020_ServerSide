<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XMLDataSource.aspx.cs" Inherits="XMLDataSource" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="XmlDataSource1">
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="isbnLabel" runat="server" Text='<%# Eval("isbn") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# XPath("@isbn") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# XPath("title") %>' ForeColor="#0066FF" Font-Size="Large" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# XPath("authors/author/@fname") %>' />
                    </td>
                    
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">
                                        isbn
                                    </th>
                                    <th id="Th1" runat="server">
                                        isbn
                                    </th>
                                    <th id="Th2" runat="server">
                                        title
                                    </th>
                                    <th id="Th3" runat="server">
                                        fname
                                    </th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </div>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
        DataFile="~/App_Data/Books.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
