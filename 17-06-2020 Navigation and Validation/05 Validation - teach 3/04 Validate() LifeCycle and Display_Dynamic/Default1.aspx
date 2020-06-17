<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="_Default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Name:</td>
            <td><asp:TextBox runat="server" ID="txtName"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Please fill this field!" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    ControlToValidate="txtName" runat="server" 
                    ErrorMessage="more than 2 chars are needed!" Text="*" ForeColor="Red" 
                    ValidationExpression="...+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Birth Year:</td>
            <td><asp:TextBox runat="server" ID="txtYear" ontextchanged="txtYear_TextChanged"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="txtYear" ErrorMessage="Please fill this field!" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtYear" Text="*" ForeColor="Red" Display="Dynamic" MaximumValue="2010" MinimumValue="1970" Type="Integer" ErrorMessage="must be between 1970-2010"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><asp:TextBox runat="server" ID="txtAge" Enabled="False"></asp:TextBox></td>
            <td>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="txtAge" ErrorMessage="RangeValidator" ForeColor="Red" 
                    MaximumValue="120" MinimumValue="21" Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
         <td colspan="3"><asp:Button runat="server" ID="btnCheck" OnClick="Check" Text="Check" />
        </table>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
