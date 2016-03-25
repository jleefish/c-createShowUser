<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createUser.aspx.cs" Inherits="createUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Arial, Helvetica, sans-serif">
    
        <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
&nbsp;<asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName" Display="Dynamic" ErrorMessage="Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUName" Display="Dynamic" ErrorMessage="Username contains invalid characters!" ForeColor="Red" ValidationExpression="^[A-Za-z0-9]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
&nbsp;<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password contains invalid characters!" ForeColor="Red" ValidationExpression="^[A-Za-z0-9]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="cmdWrite" runat="server" OnClick="cmdWrite_Click" Text="Create User" />
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
