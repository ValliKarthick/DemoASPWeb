<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validators.aspx.cs" Inherits="DemoASPWeb.Validators" %>

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
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfv_UserName" runat="server" ErrorMessage="User Name is Mandatory" ControlToValidate="txtUName"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev_UserName" runat="server" ErrorMessage="UserName can contain only characters!" ControlToValidate="txtUName" ValidationExpression="^[A-Za-z]{50}$"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell>
                    Password:
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
                    </asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:CustomValidator ID="cusv_Password" runat="server" ErrorMessage="Please follow the format!" ControlToValidate="txtPassword" OnServerValidate="cusv_Password_ServerValidate"></asp:CustomValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell>
                   Confirm Password:
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="txt_ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox><br />
                    </asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:CompareValidator ID="cv_Passwords" runat="server" ErrorMessage="Passwords Dont Match" ControlToValidate="txt_ConfirmPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell>
                    Age:
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="txt_Age" runat="server"></asp:TextBox><br />
                    </asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfv_Age" runat="server" ErrorMessage="Age is Mandatory" ControlToValidate="txt_Age" Style="color: red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev_Age" runat="server" ErrorMessage="Age Must be a Number" ControlToValidate="txt_Age" ValidationExpression="^[0-9]{3}$"></asp:RegularExpressionValidator>
                        <asp:RangeValidator ID="rv_Contact" runat="server" ErrorMessage="Contact must be within 18 to 100" ControlToValidate="txt_Age" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="Btn_Login" runat="server" Text="Login" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblConfirmationMessage" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                <asp:ValidationSummary ID="vs_Validators" runat="server" Style="color: red"></asp:ValidationSummary>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
