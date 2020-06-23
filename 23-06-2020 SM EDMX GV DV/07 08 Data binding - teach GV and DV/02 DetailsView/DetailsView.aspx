<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailsView.aspx.cs" Inherits="DetailsView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MovieID"
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." AllowPaging="True" 
            AllowSorting="True" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="MovieID" HeaderText="MovieID" ReadOnly="True" SortExpression="MovieID" />
                <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                <asp:BoundField DataField="MovieTypeID" HeaderText="MovieTypeID" SortExpression="MovieTypeID" />
                <asp:BoundField DataField="Copies" HeaderText="Copies" SortExpression="Copies" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Lenght" HeaderText="Lenght" SortExpression="Lenght" />
                <asp:BoundField DataField="CountryID" HeaderText="CountryID" SortExpression="CountryID" />
                <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active" />
                <asp:BoundField DataField="DateAdded" HeaderText="DateAdded" SortExpression="DateAdded" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VideoLibProjectV01ConnectionString1 %>"
            DeleteCommand="DELETE FROM [Movie] WHERE [MovieID] = @MovieID" InsertCommand="INSERT INTO [Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (@MovieID, @MovieName, @MovieTypeID, @Copies, @Summary, @Year, @Lenght, @CountryID, @MoviePicUrl, @TrailerUrl, @Active, @DateAdded)"
            ProviderName="<%$ ConnectionStrings:VideoLibProjectV01ConnectionString1.ProviderName %>"
            SelectCommand="SELECT [MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded] FROM [Movie]"
            UpdateCommand="UPDATE [Movie] SET [MovieName] = @MovieName, [MovieTypeID] = @MovieTypeID, [Copies] = @Copies, [Summary] = @Summary, [Year] = @Year, [Lenght] = @Lenght, [CountryID] = @CountryID, [MoviePicUrl] = @MoviePicUrl, [TrailerUrl] = @TrailerUrl, [Active] = @Active, [DateAdded] = @DateAdded WHERE [MovieID] = @MovieID">
            <DeleteParameters>
                <asp:Parameter Name="MovieID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MovieID" Type="String" />
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="MovieTypeID" Type="Int16" />
                <asp:Parameter Name="Copies" Type="Int16" />
                <asp:Parameter Name="Summary" Type="String" />
                <asp:Parameter Name="Year" Type="Int16" />
                <asp:Parameter Name="Lenght" Type="Int16" />
                <asp:Parameter Name="CountryID" Type="Int16" />
                <asp:Parameter Name="MoviePicUrl" Type="String" />
                <asp:Parameter Name="TrailerUrl" Type="String" />
                <asp:Parameter Name="Active" Type="Byte" />
                <asp:Parameter DbType="Date" Name="DateAdded" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="MovieTypeID" Type="Int16" />
                <asp:Parameter Name="Copies" Type="Int16" />
                <asp:Parameter Name="Summary" Type="String" />
                <asp:Parameter Name="Year" Type="Int16" />
                <asp:Parameter Name="Lenght" Type="Int16" />
                <asp:Parameter Name="CountryID" Type="Int16" />
                <asp:Parameter Name="MoviePicUrl" Type="String" />
                <asp:Parameter Name="TrailerUrl" Type="String" />
                <asp:Parameter Name="Active" Type="Byte" />
                <asp:Parameter DbType="Date" Name="DateAdded" />
                <asp:Parameter Name="MovieID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="MovieDS" 
            Height="50px" Width="674px" AllowPaging="True" AutoGenerateRows="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="MemberID,MovieID">
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <Fields>
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" ReadOnly="True" 
                    SortExpression="MemberID" />
                <asp:BoundField DataField="MovieID" HeaderText="MovieID" ReadOnly="True" 
                    SortExpression="MovieID" />
                <asp:BoundField DataField="ReviewText" HeaderText="ReviewText" 
                    SortExpression="ReviewText" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:BoundField DataField="ReviewDate" HeaderText="ReviewDate" 
                    SortExpression="ReviewDate" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:DetailsView>
       
        <asp:SqlDataSource ID="MovieDS" runat="server" 
            ConnectionString="<%$ ConnectionStrings:VideoLibProjectV01ConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Review] WHERE [MemberID] = @MemberID AND [MovieID] = @MovieID" 
            InsertCommand="INSERT INTO [Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (@MemberID, @MovieID, @ReviewText, @Rate, @ReviewDate)" 
            SelectCommand="SELECT * FROM [Review] WHERE ([MovieID] = @MovieID)" 
            UpdateCommand="UPDATE [Review] SET [ReviewText] = @ReviewText, [Rate] = @Rate, [ReviewDate] = @ReviewDate WHERE [MemberID] = @MemberID AND [MovieID] = @MovieID">
            <DeleteParameters>
                <asp:Parameter Name="MemberID" Type="Int32" />
                <asp:Parameter Name="MovieID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MemberID" Type="Int32" />
                <asp:Parameter Name="MovieID" Type="String" />
                <asp:Parameter Name="ReviewText" Type="String" />
                <asp:Parameter Name="Rate" Type="Byte" />
                <asp:Parameter Name="ReviewDate" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="MovieID" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ReviewText" Type="String" />
                <asp:Parameter Name="Rate" Type="Byte" />
                <asp:Parameter Name="ReviewDate" Type="DateTime" />
                <asp:Parameter Name="MemberID" Type="Int32" />
                <asp:Parameter Name="MovieID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
    </div>
    </form>
</body>
</html>
