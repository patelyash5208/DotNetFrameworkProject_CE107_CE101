<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateitems.aspx.cs" Inherits="Cafe_Management.updateitems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="updateitem" style="background-color: #009900; border-style: solid; padding: 10px 20px 10px 20px; margin: 50px 250px 50px 250px; font-size: x-large; height: 400px; text-align: center;">
            Update&nbsp; Item<br />
            <br />
            <asp:Label ID="item_name" runat="server" Text="Item  Name"></asp:Label>
            <br />
            <asp:TextBox ID="itemname_text" runat="server" Height="40px" Width="400px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="price" runat="server" Text="Price"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="400px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="update" runat="server" Height="70px" Text="Update  Item" Width="300px" style="font-size:x-large"/>
            <br />
        </div>
    </form>
</body>
</html>
