<%@ Page Language="C#" AutoEventWireup="true" CodeFile="01 ListViewDemo1.aspx.cs" Inherits="ListViewDemo1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="LV1" runat="server" DataSourceID="SqlDataSource1" ItemPlaceholderID="myplaceholder">
            <LayoutTemplate>
                <h1>This Is My ListView</h1>
                <asp:PlaceHolder runat="server" ID="myplaceholder"/>
                <h2>Here is the End Of IT</h2>
            </LayoutTemplate>
            <ItemTemplate>
                <div><%#Eval("MovieID") %> &nbsp&nbsp --&nbsp&nbsp
                    <asp:TextBox runat="server" ID="txt1" Text='<%#Eval("MovieName")%>'/>
                </div>
            </ItemTemplate>
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
