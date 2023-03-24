<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoviePage.aspx.cs" Inherits="DemoASPWeb.MoviePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Select View: 
            <asp:DropDownList ID="ddl_AdminAndCutomer" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_AdminAndCutomer_SelectedIndexChanged">
                <asp:ListItem Value="0">Customer</asp:ListItem>
                <asp:ListItem Value="1">Admin</asp:ListItem>
            </asp:DropDownList>
        <br />
        <asp:MultiView ID="mv_AdminAndCustomer" runat="server" ActiveViewIndex="0">
                <asp:View ID="view_Customer" runat="server">
                    <asp:Table ID="CustomerTable" runat="server">
                    <asp:TableRow>
                        <asp:TableHeaderCell>
                            <asp:Label ID="lbl_MovieId" runat="server" Text="Movie Id"></asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txt_MovieId" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableHeaderCell>
                            <asp:Label ID="lbl_MovieName" runat="server" Text="Movie Name"></asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txt_MovieName" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableHeaderCell>
                            <asp:Label ID="lbl_MovieGenre" runat="server" Text="Genre"></asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txt_MovieGenre" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableHeaderCell>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>
                            <asp:Button ID="btn_Add" runat="server" Text="Add" OnClick="btn_Add_Click" />
                            <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" />
                        </asp:TableHeaderCell>
                    </asp:TableRow>
                </asp:Table>
                </asp:View>
                <asp:View ID="view_Admin" runat="server">
                    <asp:Table ID="AdminTable" runat="server">
                    <asp:TableRow>
                        <asp:TableHeaderCell>
                            <asp:Label ID="lbl_CustomerIds" runat="server" Text="Choose the Id From the above table"></asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txt_SelectCustomerId" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableHeaderCell>
                            <asp:Button ID="btn_CalculateBill" runat="server" Text="Calculate Bill" />
                        </asp:TableHeaderCell>
                        <asp:TableCell>
                            <asp:Label ID="lbl_BillCalculatedMessage" runat="server" Text="Label"></asp:Label>
                        </asp:TableCell>
                        <asp:TableHeaderCell>
                            <asp:Button ID="btn_UpdateBillDetails" runat="server" Text="Update Bill" />
                        </asp:TableHeaderCell>
                        <asp:TableCell>
                            <asp:Label ID="lbl_BillUpdatedMessage" runat="server" Text="Label"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                </asp:View>
            </asp:MultiView>
        <asp:Label ID="lbl_Result" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>

