<%@ Page Language="C#" AutoEventWireup="true" CodeFile="03 ListDViewGrouping.aspx.cs" Inherits="ListDViewWithCSS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="App_Themes/Theme1/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="MovieID" 
            DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" 
            GroupItemCount="5" >
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;color: #284775;">
                    MovieID:
                    <asp:Label ID="MovieIDLabel" runat="server" Text='<%# Eval("MovieID") %>' />
                    <br />
                    MovieName:
                    <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                    <br />
                    Lenght:
                    <asp:Label ID="LenghtLabel" runat="server" Text='<%# Eval("Lenght") %>' />
                    <br />
                    Active:
                    <asp:Label ID="ActiveLabel" runat="server" Text='<%# Eval("Active") %>' />
                    <br />
                    DateAdded:
                    <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">
                    MovieID:
                    <asp:Label ID="MovieIDLabel1" runat="server" Text='<%# Eval("MovieID") %>' />
                    <br />
                    MovieName:
                    <asp:TextBox ID="MovieNameTextBox" runat="server" 
                        Text='<%# Bind("MovieName") %>' />
                    <br />
                    Lenght:
                    <asp:TextBox ID="LenghtTextBox" runat="server" Text='<%# Bind("Lenght") %>' />
                    <br />
                    Active:
                    <asp:TextBox ID="ActiveTextBox" runat="server" Text='<%# Bind("Active") %>' />
                    <br />
                    DateAdded:
                    <asp:TextBox ID="DateAddedTextBox" runat="server" 
                        Text='<%# Bind("DateAdded") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" 
                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr ID="itemPlaceholderContainer" runat="server">
                    <td ID="itemPlaceholder" runat="server">
                    </td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">
                    MovieID:
                    <asp:TextBox ID="MovieIDTextBox" runat="server" Text='<%# Bind("MovieID") %>' />
                    <br />
                    MovieName:
                    <asp:TextBox ID="MovieNameTextBox" runat="server" 
                        Text='<%# Bind("MovieName") %>' />
                    <br />
                    Lenght:
                    <asp:TextBox ID="LenghtTextBox" runat="server" Text='<%# Bind("Lenght") %>' />
                    <br />
                    Active:
                    <asp:TextBox ID="ActiveTextBox" runat="server" Text='<%# Bind("Active") %>' />
                    <br />
                    DateAdded:
                    <asp:TextBox ID="DateAddedTextBox" runat="server" 
                        Text='<%# Bind("DateAdded") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #E0FFFF;color: #333333;">
                    MovieID:
                    <asp:Label ID="MovieIDLabel" runat="server" Text='<%# Eval("MovieID") %>' />
                    <br />
                    MovieName:
                    <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                    <br />
                    Lenght:
                    <asp:Label ID="LenghtLabel" runat="server" Text='<%# Eval("Lenght") %>' />
                    <br />
                    Active:
                    <asp:Label ID="ActiveLabel" runat="server" Text='<%# Eval("Active") %>' />
                    <br />
                    DateAdded:
                    <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="groupPlaceholderContainer" runat="server" border="1" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr ID="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="15">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" 
                    style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    MovieID:
                    <asp:Label ID="MovieIDLabel" runat="server" Text='<%# Eval("MovieID") %>' />
                    <br />
                    MovieName:
                    <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                    <br />
                    Lenght:
                    <asp:Label ID="LenghtLabel" runat="server" Text='<%# Eval("Lenght") %>' />
                    <br />
                    Active:
                    <asp:Label ID="ActiveLabel" runat="server" Text='<%# Eval("Active") %>' />
                    <br />
                    DateAdded:
                    <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Movie] WHERE [MovieID] = @MovieID" 
            InsertCommand="INSERT INTO [Movie] ([MovieID], [MovieName], [Lenght], [Active], [DateAdded]) VALUES (@MovieID, @MovieName, @Lenght, @Active, @DateAdded)" 
            SelectCommand="SELECT [MovieID], [MovieName], [Lenght], [Active], [DateAdded] FROM [Movie]" 
            UpdateCommand="UPDATE [Movie] SET [MovieName] = @MovieName, [Lenght] = @Lenght, [Active] = @Active, [DateAdded] = @DateAdded WHERE [MovieID] = @MovieID">
            <DeleteParameters>
                <asp:Parameter Name="MovieID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MovieID" Type="String" />
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="Lenght" Type="Int16" />
                <asp:Parameter Name="Active" Type="Byte" />
                <asp:Parameter DbType="Date" Name="DateAdded" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="Lenght" Type="Int16" />
                <asp:Parameter Name="Active" Type="Byte" />
                <asp:Parameter DbType="Date" Name="DateAdded" />
                <asp:Parameter Name="MovieID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
