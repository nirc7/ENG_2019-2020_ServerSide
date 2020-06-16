<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyFirstASspDemo2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>title1</title>
    <link href="myStyles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <style>
        .ht {
            color: red;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <center>
        <form id="form1" runat="server">
            <div style="font-size: xx-large; color: #0000FF">
                <asp:Label ID="lblBokerTov" runat="server" Text=""></asp:Label>  <br />
                hello asp demo!!!<br />
                second line. <br />
                third line!<br />
                <br />
                <input type="button" value="push me" />
                <br />
                NAME:&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged" AutoPostBack="True"></asp:TextBox>
                <br />
                FAMILY:&nbsp;  <asp:TextBox ID="txtFamily" runat="server" OnTextChanged="txtFamily_TextChanged" ></asp:TextBox>
                <br />
                <asp:Button 
                    class="btn btn-success"
                    ID="btnSayHello" runat="server" Text="say hello" OnClick="btnSayHello_Click" />
                <br />
                <asp:Label ID="lblName" runat="server" Text="..."></asp:Label><br />
            </div>
            <div class="ht">
                this is red
            </div>
             <div class="gr">
                this is green
                 <br />
                 <asp:DropDownList ID="DropDownList1" runat="server" 
                     AutoPostBack="true"
                     OnSelectedIndexChanged="ddlChanged" >
                     <asp:ListItem Value="1">one</asp:ListItem>
                     <asp:ListItem Value="2">two</asp:ListItem>
                     <asp:ListItem Value="3">three</asp:ListItem>
                 </asp:DropDownList>
            </div>
        </form>
    </center>
</body>
</html>
