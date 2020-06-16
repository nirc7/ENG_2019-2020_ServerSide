<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex1.aspx.cs" Inherits="MyFirstASspDemo2.Ex1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-size: 30px; color: #FF00FF">
        <div>
            EX1
        </div>
        <asp:DropDownList ID="ddlColors" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlColors_SelectedIndexChanged">
            <asp:ListItem Value="red">אדום</asp:ListItem>
            <asp:ListItem Value="blue">כחול</asp:ListItem>
            <asp:ListItem Value="green">ירוק</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblColor" runat="server" Text="this label is colored"></asp:Label> <br />
        HEB: <asp:TextBox runat="server" ID="txtHeb"></asp:TextBox> <br />
        ENG: <asp:TextBox runat="server" ID="txtEng"></asp:TextBox> <br /> <br />
        <asp:Button runat="server"  ID="btnAddColor" Text="Add New Color" OnClick="btnAddColor_Click" />
    </form>
</body>
</html>
