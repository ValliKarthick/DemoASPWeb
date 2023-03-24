<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientSide State Management.aspx.cs" Inherits="DemoASPWeb.ClientSide_State_Management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableHeaderCell>
                    FirstName:
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox><br />
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    LastName:
                <asp:TextBox ID="txtLName" runat="server" ViewStateMode="Disabled" EnableViewState="false"></asp:TextBox><br />
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    Contact:
                <asp:TextBox ID="txtContact" runat="server"></asp:TextBox><br />
                </asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Btn_VS" runat="server" OnClick="BtnVS_Click" Text="View State" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblViewStateMessage" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:HiddenField ID="HiddenField" runat="server" />
                    <asp:Button ID="Btn_HF" runat="server" OnClick="BtnHF_Click" Text="Hidden Field" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblHiddenFieldMessage" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Btn_Cookie" runat="server" OnClick="BtnCookie_Click" Text="Cookie" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblCookieFullMessage" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Btn_QueryString" runat="server" OnClick="Btn_QueryString_Click" Text="Query String" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

    </form>
</body>
</html>
