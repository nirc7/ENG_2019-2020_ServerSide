<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 108px;
            width: 648px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div style="width: 249px; float: left;" >
        <asp:Panel ID="Panel1" runat="server" Width="264px" BorderStyle="Solid">
        NAME: <br /> <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="RequiredFieldValidator" Text="name required" ForeColor="Red" 
                ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtName" Display="Dynamic" 
                ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                ValidationExpression="..+">2 or more</asp:RegularExpressionValidator>
            <br />
        <asp:Button ID="Button1" runat="server" Text="check" onclick="Button1_Click" />
        </asp:Panel>
   </div>
   <div style="width: 200px; float: right; height: 54px;">
        <asp:Panel runat="server" Width="254px" BorderStyle="Solid">
        ID:<br /> <asp:TextBox runat="server" ID="txtId" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="RequiredFieldValidator" Text="id required" ForeColor="Red" 
                ControlToValidate="txtId" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="txtId" Display="Dynamic" ErrorMessage="RangeValidator" 
                ForeColor="Red" MaximumValue="20" MinimumValue="10" Type="Integer">between 10 and 20</asp:RangeValidator>
            <br />
        <asp:Button runat="server" ID="btnCheck" Text="check" onclick="btnCheck_Click" 
                style="height: 29px" />
         </asp:Panel>   
    </div>
   
  
    </form>
</body>
</html>
