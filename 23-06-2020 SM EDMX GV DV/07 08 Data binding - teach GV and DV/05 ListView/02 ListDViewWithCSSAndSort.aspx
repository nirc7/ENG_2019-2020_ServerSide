<%@ Page Language="C#" AutoEventWireup="true" CodeFile="02 ListDViewWithCSSAndSort.aspx.cs" Inherits="ListDViewWithCSS" %>

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
            DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" >
            <AlternatingItemTemplate>
                <tr class="line1" >
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="MovieIDLabel" runat="server" Text='<%# Eval("MovieID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LenghtLabel" runat="server" Text='<%# Eval("Lenght") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ActiveLabel" runat="server" Text='<%# Eval("Active") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="MovieIDLabel1" runat="server" Text='<%# Eval("MovieID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MovieNameTextBox" runat="server" 
                            Text='<%# Bind("MovieName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LenghtTextBox" runat="server" Text='<%# Bind("Lenght") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ActiveTextBox" runat="server" Text='<%# Bind("Active") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateAddedTextBox" runat="server" 
                            Text='<%# Bind("DateAdded") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="MovieIDTextBox" runat="server" Text='<%# Bind("MovieID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MovieNameTextBox" runat="server" 
                            Text='<%# Bind("MovieName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LenghtTextBox" runat="server" Text='<%# Bind("Lenght") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ActiveTextBox" runat="server" Text='<%# Bind("Active") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateAddedTextBox" runat="server" 
                            Text='<%# Bind("DateAdded") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr class="line2">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="MovieIDLabel" runat="server" Text='<%# Eval("MovieID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LenghtLabel" runat="server" Text='<%# Eval("Lenght") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ActiveLabel" runat="server" Text='<%# Eval("Active") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded") %>' />
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
                                    </th>
                                    <th runat="server">
                                        <asp:LinkButton runat="server" ID="lbMovieID" CommandName="Sort" CommandArgument="MovieId">MovieID Sort</asp:LinkButton>
                                        MovieID</th>
                                    <th runat="server">
                                        <asp:LinkButton runat="server" ID="LinkButton1" CommandName="Sort" CommandArgument="MovieName">MovieName Sort</asp:LinkButton>
                                        MovieName</th>
                                    <th runat="server">
                                        Lenght</th>
                                    <th runat="server">
                                        Active</th>
                                    <th runat="server">
                                        DateAdded</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
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
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="MovieIDLabel" runat="server" Text='<%# Eval("MovieID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LenghtLabel" runat="server" Text='<%# Eval("Lenght") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ActiveLabel" runat="server" Text='<%# Eval("Active") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded") %>' />
                    </td>
                </tr>
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
