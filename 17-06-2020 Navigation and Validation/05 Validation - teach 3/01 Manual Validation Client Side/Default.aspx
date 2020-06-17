<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ClientCheckFunction() {
            debugger;
            var res = false;
            if (document.all["txtName"].value == "") {
                document.all["errName"].style.visibility = "visible";
            }
            else {
                document.all["errName"].style.visibility = "hidden";
            }

            if (document.all["txtAge"].value == "") {
                document.all["errAge"].style.visibility = "visible";
            }
            else {
                document.all["errAge"].style.visibility = "hidden";
            }

            if (document.all["txtName"].value != "" && document.all["txtAge"].value != "") 
            {
                res = true;
            }
            return res;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" method="post" onsubmit="return ClientCheckFunction()">
    <div>Client Side Validation</div>
    <div>
    <table >
    <tr>
    <td>Name: <asp:TextBox runat="server" ID="txtName"></asp:TextBox></td>
    <td><span id="errName" style="color: #FF0000; visibility: hidden">Please enter your name!</span></td>
    </tr>
    <tr>
    <td>Age: <asp:TextBox runat="server" ID="txtAge"></asp:TextBox></td>
    <td><span id="errAge" style="color: #FF0000; visibility: hidden">Please enter your age!</span></td>
    </tr>
    </table>

    <asp:Button runat="server" ID="btnCheck" Text="Check" onclick="btnCheck_Click" />
    </div>
    </form>
</body>
</html>
