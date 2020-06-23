<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox runat="server" ID="txt">b</asp:TextBox><br />
    <asp:Button runat="server" ID="btn" Text="change starting letter" /><br />
        <br />
    
    </div>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
        BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
        GridLines="None">
        <Columns>
            <asp:BoundField DataField="MovieName" HeaderText="MovieName" 
                SortExpression="MovieName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:VideoConnectionString %>" 

        SelectCommand= "SELECT distinct Movie.MovieName, Member.FirstName, Member.LastName 
                        FROM Movie INNER JOIN Rent ON Movie.MovieID = Rent.MovieID INNER JOIN 
                                Member ON Rent.MemberID = Member.MemberID 
                        WHERE (Movie.MovieName LIKE @moviename + '%')" >
         
        <SelectParameters>
            <asp:ControlParameter ControlID="txt" Name="MovieName" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
