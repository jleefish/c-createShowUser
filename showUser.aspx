<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showUser.aspx.cs" Inherits="showUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Arial, Helvetica, sans-serif">
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/createUser.aspx">&lt;&lt;Back</asp:HyperLink>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" EmptyDataText="tUsers table is empty!">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
