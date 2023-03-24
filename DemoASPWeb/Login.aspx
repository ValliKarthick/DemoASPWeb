<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DemoASPWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableHeaderCell>
                    UserName:
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:TextBox ID="txtUName" runat="server"></asp:TextBox><br />
                </asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell>
                    Password:
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
                </asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Btn_Login" runat="server" OnClick="Btn_Login_Click" Text="Login" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblConfirmationMessage" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        </div>
    </form>
</body>
</html>

