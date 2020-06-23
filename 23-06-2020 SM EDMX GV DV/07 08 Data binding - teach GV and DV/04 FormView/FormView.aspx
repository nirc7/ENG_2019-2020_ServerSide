<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormView.aspx.cs" Inherits="FormView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="MovieName" 
            DataValueField="MovieID">
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:movieConStr %>" 
            SelectCommand="SELECT [MovieID], [MovieName] FROM [Movie]">
        </asp:SqlDataSource>
    </div>
    <hr />
    <div>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MovieID" 
            DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                MovieID:
                <asp:Label ID="MovieIDLabel1" runat="server" Text='<%# Eval("MovieID") %>' />
                <br />
                MovieName:
                <asp:TextBox ID="MovieNameTextBox" runat="server" 
                    Text='<%# Bind("MovieName") %>' />
                <br />
                DateAdded(was created automatically):
                <asp:TextBox ID="DateAddedTextBox" runat="server" 
                    Text='<%# Bind("DateAdded") %>' />
                <br />
                DateAdded2(was created manually):
                <asp:Calendar runat="server" ID="calendar" SelectedDate='<%# Bind("DateAdded") %>' VisibleDate='<%# Eval("DateAdded") %>'>
                </asp:Calendar>
                <br />
                Lenght:
                <asp:TextBox ID="LenghtTextBox" runat="server" Text='<%# Bind("Lenght") %>' />
                <br />
                Active:
                <asp:TextBox ID="ActiveTextBox" runat="server" Text='<%# Bind("Active") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <ItemTemplate>
                MovieID:
                <asp:Label ID="MovieIDLabel" runat="server" Text='<%# Eval("MovieID") %>' />
                <br />
                MovieName:
                <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Bind("MovieName") %>' />
                <br />
                DateAdded(was created automatically):
                <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Bind("DateAdded") %>' />
                <br />
                DateAdded2(was created manually):
                <asp:Calendar runat="server" ID="calendar" SelectedDate='<%# Bind("DateAdded") %>' VisibleDate='<%# Eval("DateAdded") %>'>
                </asp:Calendar>
                <br />
                Lenght:
                <asp:Label ID="LenghtLabel" runat="server" Text='<%# Bind("Lenght") %>' />
                <br />
                Active:
                <asp:Label ID="ActiveLabel" runat="server" Text='<%# Bind("Active") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:movieConStr %>" 
            DeleteCommand="DELETE FROM [Movie] WHERE [MovieID] = @MovieID" 
            InsertCommand="INSERT INTO [Movie] ([MovieID], [MovieName], [DateAdded], [Lenght], [Active]) VALUES (@MovieID, @MovieName, @DateAdded, @Lenght, @Active)" 
            SelectCommand="SELECT [MovieID], [MovieName], [DateAdded], [Lenght], [Active] FROM [Movie] WHERE ([MovieID] = @MovieID)" 
            
            UpdateCommand="UPDATE [Movie] SET [MovieName] = @MovieName, [DateAdded] = @DateAdded, [Lenght] = @Lenght, [Active] = @Active WHERE [MovieID] = @MovieID">
            <DeleteParameters>
                <asp:Parameter Name="MovieID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MovieID" Type="String" />
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateAdded" />
                <asp:Parameter Name="Lenght" Type="Int16" />
                <asp:Parameter Name="Active" Type="Byte" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="MovieID" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateAdded" />
                <asp:Parameter Name="Lenght" Type="Int16" />
                <asp:Parameter Name="Active" Type="Byte" />
                <asp:Parameter Name="MovieID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
