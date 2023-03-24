<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Server Control.aspx.cs" Inherits="DemoASPWeb.Server_Control" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <title>Untitled Page</title>
   </head>
   
   <body>
      <form id="form1" runat="server">
         <div>
            
            User Name:
            <br />
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <asp:Button ID="NameButton" runat="server" OnClick="NameButton_Click" Text="Get Name" />
            <br />
            <asp:Label ID="MessageLabel" runat="server"/>

         </div>
      </form>
   </body>
</html>
