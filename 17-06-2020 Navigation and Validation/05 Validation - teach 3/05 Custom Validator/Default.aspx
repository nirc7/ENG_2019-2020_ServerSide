<%@ Page Language="C#" AutoEventWireup="true" ClientTarget="downlevel"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ClientValFunc(source, args) {
            alert(source.toString());
            if (args.Value % 2 == 0) 
            {
                args.IsValid = true;
            }
            else 
            {
                args.IsValid = false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox runat="server" ID="txtNum" ></asp:TextBox>
    <asp:CustomValidator ID="CustomValidator1" runat="server" 
    ControlToValidate="txtNum"
    ClientValidationFunction="ClientValFunc"
    OnServerValidate="ServerValFunc"
    ErrorMessage="please insert an even number!" 
    Text="*" 
    ForeColor="Red"></asp:CustomValidator><br />
    <asp:Button runat="server" ID="btnCheck"  Text="Sumbit"/>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
