<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            DataKeyNames="MovieID">
           
           
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
          
           
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button runat="server" ID="btn" CommandName="Select" Text="Select"/>
                    </td>
                    <td>
                        <asp:Label ID="MovieIDLabel" runat="server" Text='<%# Eval("MovieID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MovieTypeNameLabel" runat="server" 
                            Text='<%# Eval("MovieTypeName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
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
                                        MovieID</th>
                                    <th runat="server">
                                        MovieTypeName</th>
                                    <th runat="server">
                                        MovieName</th>
                                </tr>
                                <tr runat="server" ID="itemPlaceholder">
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
                        Selected
                    </td>
                    <td>
                        <asp:Label ID="MovieIDLabel" runat="server" Text='<%# Eval("MovieID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MovieTypeNameLabel" runat="server" 
                            Text='<%# Eval("MovieTypeName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT Movie.MovieID, MovieType.MovieTypeName, Movie.MovieName FROM Movie INNER JOIN MovieType ON Movie.MovieTypeID = MovieType.MovieTypeID ORDER BY MovieType.MovieTypeName" >
    </asp:SqlDataSource>
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AllowPaging="True" AutoGenerateRows="False" CellPadding="4" 
        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ActorName" HeaderText="Actor :" />
            <asp:BoundField DataField="BirthDate" HeaderText="Born on:" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT Actor.ActorName, Actor.BirthDate, Actor.CountryID, Actor.ActorID, ActorMovie.MovieID 
                        FROM ActorMovie INNER JOIN Actor ON ActorMovie.ActorID = Actor.ActorID 
                        WHERE (ActorMovie.MovieID = @MId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListView1" Name="MId" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
