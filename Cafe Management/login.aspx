<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Cafe_Management.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            width: 295px;
            height: 27px;
        }
        #username_text {
            width: 431px;
            height: 37px;
            margin-left: 0px;
        }
    </style>
</head>
<body style="height: 365px; width: 943px; margin-left: 121px;">
    <form id="loginform" runat="server">
        <div style="text-align: center; height: 367px; width: 945px; background-color: #000000">
            <br />
            <br />
            <br />
            <asp:Label ID="username" runat="server" style="color: #FFFFFF; font-size: large;" Text="User Name" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="username_text" placeholder="Please enter user name" runat="server" Font-Size="Large"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="password" runat="server" style="color: #FFFFFF; font-size: large;" Text="Password" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="password_text" placeholder="Please enter password" runat="server" Height="37px" Width="431px" TextMode="Password" Font-Size="Large"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="submit" runat="server" Height="50px" Text="Login" Width="130px" BackColor="#3366FF" Font-Size="Large" BorderStyle="Solid" OnClick="submit_Click" />
        &nbsp;</div>
    </form>
</body>
</html>
