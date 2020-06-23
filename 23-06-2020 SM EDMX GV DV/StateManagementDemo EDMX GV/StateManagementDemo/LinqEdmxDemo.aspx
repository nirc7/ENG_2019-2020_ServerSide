<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LinqEdmxDemo.aspx.cs" Inherits="StateManagementDemo.LinqEdmxDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button runat="server" ID="btnMovies" Text="all Movies" OnClick="btnMovies_Click" /> <br />
            <asp:Button runat="server" ID="btnActorsinMovies" Text="btnActorsinMovies" OnClick="btnActorsinMovies_Click"  /><br />
            <asp:Button runat="server" ID="btnAddMovie" Text="Add Movie" OnClick="btnAddMovie_Click"   /> <br />
            <asp:Button runat="server" ID="btnUpdateMovie" Text="update Movie" OnClick="btnUpdateMovie_Click"    />
            <br />
            <asp:Button runat="server" ID="btnDelete" Text="delete Movie" OnClick="btnDelete_Click"    />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
