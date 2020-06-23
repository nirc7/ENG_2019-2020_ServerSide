<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2WayBinding.aspx.cs" Inherits="_2WayBinding" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        without the template<br />
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MovieID" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="MovieID" HeaderText="MovieID" ReadOnly="True" 
                    SortExpression="MovieID" />
                <asp:BoundField DataField="MovieName" HeaderText="MovieName" 
                    SortExpression="MovieName" />
                <asp:BoundField DataField="DateAdded" HeaderText="DateAdded" 
                    SortExpression="DateAdded" />
                <asp:BoundField DataField="Active" HeaderText="Active" 
                    SortExpression="Active" />
                <asp:BoundField DataField="Lenght" HeaderText="Lenght" 
                    SortExpression="Lenght" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:VideoLibProjectV01ConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Movie] WHERE [MovieID] = @MovieID" 
            InsertCommand="INSERT INTO [Movie] ([MovieID], [MovieName], [DateAdded], [Active], [Lenght]) VALUES (@MovieID, @MovieName, @DateAdded, @Active, @Lenght)" 
            ProviderName="<%$ ConnectionStrings:VideoLibProjectV01ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [MovieID], [MovieName], [DateAdded], [Active], [Lenght] FROM [Movie]" 
            UpdateCommand="UPDATE [Movie] SET [MovieName] = @MovieName, [DateAdded] = @DateAdded, [Active] = @Active, [Lenght] = @Lenght WHERE [MovieID] = @MovieID">
            <DeleteParameters>
                <asp:Parameter Name="MovieID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MovieID" Type="String" />
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateAdded" />
                <asp:Parameter Name="Active" Type="Byte" />
                <asp:Parameter Name="Lenght" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateAdded" />
                <asp:Parameter Name="Active" Type="Byte" />
                <asp:Parameter Name="Lenght" Type="Int16" />
                <asp:Parameter Name="MovieID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        with the template<br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MovieID" 
                DataSourceID="SqlDataSource1" 
                EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowSelectButton="True" />
                    <asp:BoundField DataField="MovieID" HeaderText="MovieID" ReadOnly="True" 
                        SortExpression="MovieID" />
                    <asp:BoundField DataField="MovieName" HeaderText="MovieName" 
                        SortExpression="MovieName" />
                    <asp:TemplateField HeaderText="DateAdded" SortExpression="DateAdded">
                        <EditItemTemplate>
                            <asp:Calendar ID="Calendar1" runat="server" 
                                SelectedDate='<%# Bind("DateAdded") %>' VisibleDate='<%# Eval("DateAdded") %>'>
                            </asp:Calendar>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateAdded") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Active" HeaderText="Active" 
                        SortExpression="Active" />
                    <asp:BoundField DataField="Lenght" HeaderText="Lenght" 
                        SortExpression="Lenght" />
                    <asp:TemplateField HeaderText="stam DDL">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="MovieName" 
                                DataValueField="MovieID">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
    </div>
    </form>
</body>
</html>
