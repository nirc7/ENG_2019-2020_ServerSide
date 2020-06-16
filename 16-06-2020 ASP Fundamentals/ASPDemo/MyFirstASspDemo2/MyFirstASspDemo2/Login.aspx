<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyFirstASspDemo2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<body>
    <center>
        <form id="form1" runat="server">
            <div style="margin-top:150px;">
                <table>
                    <tr>
                        <td>Email:</td>
                        <td><asp:TextBox runat="server" id="txtEmail"></asp:TextBox> </td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><asp:TextBox runat="server" ID="txtPass" ></asp:TextBox></td>
                    </tr>
                </table>
                  <br />    
                <asp:Label runat="server" ID="lblRes"></asp:Label> <br /> <br />   
                <div style="width:300px;">
                    <asp:Button runat="server" ID="btnLogin" Text="Login" Class="btn-lg btn-block btn-outline-success" OnClick="btnLogin_Click"/>    
                </div>
            </div>
        </form>
    </center>
</body>
</html>
