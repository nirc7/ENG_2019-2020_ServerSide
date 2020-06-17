<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<HEAD>
		<title>Validators</title>
	</HEAD>
	<body>
		<form id="Validators1" runat="server">
			<P>
				<asp:Label id="lblMessage" runat="server"></asp:Label></P>
			<P>Insert your details&nbsp;:</P>
			<TABLE id="Table1" height="323" cellSpacing="1" cellPadding="1" width="536" border="0">
				<TR>
					<TD width="111">Name:</TD>
					<TD width="199">
						<asp:TextBox id="tbName" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator3" 
                            runat="server" Width="12px" ErrorMessage="Name" 
                            ControlToValidate="tbName">*</asp:RequiredFieldValidator></TD>
					<TD></TD>
				</TR>
				<TR>
					<TD width="111">Family Name:</TD>
					<TD width="199" >
						<asp:TextBox id="tbFamily" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="Family" ControlToValidate="tbFamily">*</asp:RequiredFieldValidator>
						<asp:CompareValidator id="CompareValidator2" runat="server" 
                            ErrorMessage="Name and Family the same" ControlToValidate="tbFamily"
							Operator="NotEqual" ControlToCompare="tbName">*</asp:CompareValidator></TD>
					<TD>differs from&nbsp;name</TD>
				</TR>
                <TR>
					<TD width="111">Age:</TD>
					<TD width="199" >
						<asp:TextBox id="tbAge" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Age" ControlToValidate="tbAge">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="tbAge" ErrorMessage="age error" MaximumValue="120" 
                            MinimumValue="1" Type="Integer">**</asp:RangeValidator>	
					<TD>1-120</TD>
				</TR>
				<TR>
					<TD width="111">Address:</TD>
					<TD width="199">
						<asp:TextBox id="tbAddress" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ErrorMessage="address" ControlToValidate="tbAddress">*</asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator id="RegularExpressionValidator4" 
                            runat="server" ErrorMessage="at least 2 chars"
							ControlToValidate="tbAddress" ValidationExpression="..+">**</asp:RegularExpressionValidator></TD>
					<TD>at least 2 chars</TD>
				</TR>
				<TR>
					<TD width="111">City:</TD>
					<TD width="199">
						<asp:TextBox id="tbCity" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="tbCity" ErrorMessage="city">*</asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator id="RegularExpressionValidator5" 
                            runat="server" ControlToValidate="tbCity" ErrorMessage="at least 2 chars"
							ValidationExpression="..+">**</asp:RegularExpressionValidator></TD>
					<TD>at least 2 chars</TD>
				</TR>
				<TR>
					<TD width="111" height="23">Zip Code:</TD>
					<TD width="199" height="23">
						<asp:TextBox id="tbZip" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="tbZip" ErrorMessage="zip">*</asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator id="RegularExpressionValidator6" 
                            runat="server" ControlToValidate="tbZip" ErrorMessage="5 digits"
							ValidationExpression="[0-9]{5}">**</asp:RegularExpressionValidator>
                    </TD>
					<TD height="23">(xxxxx)</TD>
				</TR>
				<TR>
					<TD width="111">Phone:</TD>
					<TD width="199">
						<asp:TextBox id="tbphone" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ControlToValidate="tbphone" ErrorMessage="phone">*</asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator id="RegularExpressionValidator7" runat="server" ControlToValidate="tbphone" ErrorMessage="wrong  format"
							ValidationExpression="0[48923]{1}-[0-9]{7}|05[20]{1}-[0-9]{7}">**</asp:RegularExpressionValidator></TD>
					<TD>
                        (0x-xxxxxxx / 052|0-xxxxxxx)</TD>
				</TR>
				<TR>
					<TD width="111">E-Mail:</TD>
					<TD width="199">
						<asp:TextBox id="tbEmail" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ControlToValidate="tbEmail" ErrorMessage="email">*</asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator id="RegularExpressionValidator8" runat="server" ControlToValidate="tbEmail" ErrorMessage="wrong format"
							ValidationExpression="\w+\@\w+\.com">*</asp:RegularExpressionValidator></TD>
					<TD>&nbsp;<A href="mailto:example@example.com">example@example.com</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Button id="btCheck" runat="server" Text="Check" Width="57px" Height="28px" OnClick="btCheck_Click"></asp:Button></TD>
				</TR>
			</TABLE>
			<P>&nbsp;</P>
			<asp:ValidationSummary id="ValidationSummary1" runat="server" Height="73px" HeaderText="ValidationSum"
				ShowMessageBox="True"></asp:ValidationSummary>
		</form>
	</body>
</html>
