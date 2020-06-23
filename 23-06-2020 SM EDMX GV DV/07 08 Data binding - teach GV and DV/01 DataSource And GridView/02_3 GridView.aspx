<%@ Page Language="C#" AutoEventWireup="true" CodeFile="02_3 GridView.aspx.cs" Inherits="GridView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="MovieID" DataSourceID="SqlDataSource1" AllowPaging="True" 
            AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" ShowInsertButton="False" />
                <asp:BoundField DataField="MovieID" HeaderText="MovieID" ReadOnly="True" 
                    SortExpression="MovieID" />
                <asp:BoundField DataField="MovieName" HeaderText="MovieName" 
                    SortExpression="MovieName" />
                <asp:BoundField DataField="MovieTypeID" HeaderText="MovieTypeID" 
                    SortExpression="MovieTypeID" />
                <asp:BoundField DataField="Copies" HeaderText="Copies" 
                    SortExpression="Copies" />
               <asp:BoundField DataField="Year" HeaderText="Year" 
                    SortExpression="Year" />
                <asp:BoundField DataField="Lenght" HeaderText="Length" 
                    SortExpression="Lenght" />

            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MovieConStr %>" 
        SelectCommand="SELECT * FROM [Movie]" 
        DeleteCommand="DELETE FROM [Movie] WHERE [MovieID] = @MovieID" 
        InsertCommand="INSERT INTO [Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Year], [Lenght]) VALUES (@MovieID, @MovieName, @MovieTypeID, @Copies, @Year, @Lenght)" 
        UpdateCommand="UPDATE [Movie] SET [MovieName] = @MovieName, [MovieTypeID] = @MovieTypeID, [Copies] = @Copies, [Year] = @Year, [Lenght] = @Lenght WHERE [MovieID] = @MovieID">
        <DeleteParameters>
            <asp:Parameter Name="MovieID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MovieID" Type="String" />
            <asp:Parameter Name="MovieName" Type="String" />
            <asp:Parameter Name="MovieTypeID" Type="Int16" />
            <asp:Parameter Name="Copies" Type="Int16" />
            <asp:Parameter Name="Year" Type="Int16" />
            <asp:Parameter Name="Lenght" Type="Int16" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MovieID" Type="String" />
            <asp:Parameter Name="MovieName" Type="String" />
            <asp:Parameter Name="MovieTypeID" Type="Int16" />
            <asp:Parameter Name="Copies" Type="Int16" />
            <asp:Parameter Name="Year" Type="Int16" />
            <asp:Parameter Name="Lenght" Type="Int16" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
