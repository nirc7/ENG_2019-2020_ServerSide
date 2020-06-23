<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GVAndDV.aspx.cs" Inherits="StateManagementDemo.GVAndDV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MovieID" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="MovieID" HeaderText="MovieID" ReadOnly="True" SortExpression="MovieID" />
                    <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                    <asp:BoundField DataField="MovieTypeID" HeaderText="MovieTypeID" SortExpression="MovieTypeID" />
                    <asp:BoundField DataField="Copies" HeaderText="Copies" SortExpression="Copies" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VIDEOLIBPROJECTV01.MDFConnectionString %>" DeleteCommand="DELETE FROM [Movie] WHERE [MovieID] = @original_MovieID AND [MovieName] = @original_MovieName AND [MovieTypeID] = @original_MovieTypeID AND [Copies] = @original_Copies AND [Year] = @original_Year" InsertCommand="INSERT INTO [Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Year]) VALUES (@MovieID, @MovieName, @MovieTypeID, @Copies, @Year)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MovieID], [MovieName], [MovieTypeID], [Copies], [Year] FROM [Movie]" UpdateCommand="UPDATE [Movie] SET [MovieName] = @MovieName, [MovieTypeID] = @MovieTypeID, [Copies] = @Copies, [Year] = @Year WHERE [MovieID] = @original_MovieID AND [MovieName] = @original_MovieName AND [MovieTypeID] = @original_MovieTypeID AND [Copies] = @original_Copies AND [Year] = @original_Year">
                <DeleteParameters>
                    <asp:Parameter Name="original_MovieID" Type="String" />
                    <asp:Parameter Name="original_MovieName" Type="String" />
                    <asp:Parameter Name="original_MovieTypeID" Type="Int16" />
                    <asp:Parameter Name="original_Copies" Type="Int16" />
                    <asp:Parameter Name="original_Year" Type="Int16" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MovieID" Type="String" />
                    <asp:Parameter Name="MovieName" Type="String" />
                    <asp:Parameter Name="MovieTypeID" Type="Int16" />
                    <asp:Parameter Name="Copies" Type="Int16" />
                    <asp:Parameter Name="Year" Type="Int16" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MovieName" Type="String" />
                    <asp:Parameter Name="MovieTypeID" Type="Int16" />
                    <asp:Parameter Name="Copies" Type="Int16" />
                    <asp:Parameter Name="Year" Type="Int16" />
                    <asp:Parameter Name="original_MovieID" Type="String" />
                    <asp:Parameter Name="original_MovieName" Type="String" />
                    <asp:Parameter Name="original_MovieTypeID" Type="Int16" />
                    <asp:Parameter Name="original_Copies" Type="Int16" />
                    <asp:Parameter Name="original_Year" Type="Int16" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MemberID,MovieID" DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="50px" Width="125px">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" ReadOnly="True" SortExpression="MemberID" />
                <asp:BoundField DataField="MovieID" HeaderText="MovieID" ReadOnly="True" SortExpression="MovieID" />
                <asp:BoundField DataField="ReviewText" HeaderText="ReviewText" SortExpression="ReviewText" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:BoundField DataField="ReviewDate" HeaderText="ReviewDate" SortExpression="ReviewDate" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VIDEOLIBPROJECTV01.MDFConnectionString %>" DeleteCommand="DELETE FROM [Review] WHERE [MemberID] = @original_MemberID AND [MovieID] = @original_MovieID AND [ReviewText] = @original_ReviewText AND [Rate] = @original_Rate AND (([ReviewDate] = @original_ReviewDate) OR ([ReviewDate] IS NULL AND @original_ReviewDate IS NULL))" InsertCommand="INSERT INTO [Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (@MemberID, @MovieID, @ReviewText, @Rate, @ReviewDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Review] WHERE ([MovieID] = @MovieID)" UpdateCommand="UPDATE [Review] SET [ReviewText] = @ReviewText, [Rate] = @Rate, [ReviewDate] = @ReviewDate WHERE [MemberID] = @original_MemberID AND [MovieID] = @original_MovieID AND [ReviewText] = @original_ReviewText AND [Rate] = @original_Rate AND (([ReviewDate] = @original_ReviewDate) OR ([ReviewDate] IS NULL AND @original_ReviewDate IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MemberID" Type="Int32" />
                <asp:Parameter Name="original_MovieID" Type="String" />
                <asp:Parameter Name="original_ReviewText" Type="String" />
                <asp:Parameter Name="original_Rate" Type="Byte" />
                <asp:Parameter Name="original_ReviewDate" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MemberID" Type="Int32" />
                <asp:Parameter Name="MovieID" Type="String" />
                <asp:Parameter Name="ReviewText" Type="String" />
                <asp:Parameter Name="Rate" Type="Byte" />
                <asp:Parameter Name="ReviewDate" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="MovieID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ReviewText" Type="String" />
                <asp:Parameter Name="Rate" Type="Byte" />
                <asp:Parameter Name="ReviewDate" Type="DateTime" />
                <asp:Parameter Name="original_MemberID" Type="Int32" />
                <asp:Parameter Name="original_MovieID" Type="String" />
                <asp:Parameter Name="original_ReviewText" Type="String" />
                <asp:Parameter Name="original_Rate" Type="Byte" />
                <asp:Parameter Name="original_ReviewDate" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
