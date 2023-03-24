<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServerSide State Management.aspx.cs" Inherits="DemoASPWeb.ServerSide_State_Management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableHeaderCell>
                    UserName:
                <asp:TextBox ID="txtUName" runat="server"></asp:TextBox><br />
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    Password:
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
                </asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Btn_Session" runat="server" OnClick="Btn_Session_Click" Text="Session" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
