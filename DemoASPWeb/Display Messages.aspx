<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display Messages.aspx.cs" Inherits="DemoASPWeb.Display_Messages" %>

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
                    FirstName:
                <asp:TextBox ID="txtFName" runat="server" ReadOnly="true"></asp:TextBox><br />
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    LastName:
                <asp:TextBox ID="txtLName" runat="server" ReadOnly="true"></asp:TextBox><br />
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    UserName:
                   <asp:TextBox ID="txtUName" runat="server" ReadOnly="true"></asp:TextBox><br />
                </asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Btn_Session" runat="server" OnClick="Btn_Session_Click" Text="Session" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Non - Persistant Cookie:
                    <asp:Label ID="lblCookieMessage" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Persistant Cookie:
                    <asp:Label ID="lblPCookieMessage" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
