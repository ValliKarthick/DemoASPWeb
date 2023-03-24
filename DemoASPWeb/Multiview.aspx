<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Multiview.aspx.cs" Inherits="DemoASPWeb.Multiview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select View: 
            <asp:DropDownList ID="ddl_UNameAndPW" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_UNameAndPW_SelectedIndexChanged">
        <asp:ListItem Value="0">Customer</asp:ListItem>
        <asp:ListItem Value="1">Admin</asp:ListItem>
    </asp:DropDownList>
            <br />
            <asp:MultiView ID="mv_UNameAndPW" runat="server" ActiveViewIndex="0">
                <asp:View ID="view_Customer" runat="server">
                    <asp:Label ID="lbl_UserName" runat="server" Text="Customer Name:"></asp:Label>
                    <asp:TextBox ID="txt_UserName" runat="server"></asp:TextBox><br />
                    <asp:Button ID="btn_Confirm" runat="server" Text="Confirm" />
                </asp:View>
                <asp:View ID="Admin" runat="server">
                    <asp:Label ID="lbl_Password" runat="server" Text="AdminName:"></asp:Label>
                    <asp:TextBox ID="txt_CustomerName" runat="server"></asp:TextBox><br />
                    <asp:Button ID="btn_Submit" runat="server" Text="Submit" />
                </asp:View>
            </asp:MultiView>
        </div>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Back" NavigateUrl="~/About.aspx"></asp:MenuItem>
            </Items>
            <Items>
                <asp:MenuItem Text="Next" NavigateUrl="~/About.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </form>
</body>
</html>
