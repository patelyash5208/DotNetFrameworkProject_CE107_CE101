<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="additems.aspx.cs" Inherits="Cafe_Management.additems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="additem" runat="server">
        <div id="additems" style="border-style: solid; padding: 10px 20px 10px 20px; margin: 30px 250px 30px 250px; font-size: x-large; background-color: #33CC33; height: 500px; text-align: center;">
            <br />
            ADD&nbsp; NEW&nbsp; ITEM<br />
            <br />
            <br />
            <asp:Label ID="item_name" runat="server" Text="Item  Name"></asp:Label>
            <br />
            <asp:TextBox ID="itemname_text" runat="server" Height="40px" Width="400px" font-size="X-Large"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="price" runat="server" Text="Price"></asp:Label>
            <br />
            <asp:TextBox ID="price_text" runat="server" Height="40px" Width="400px" font-size="X-Large"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="add_item" runat="server" Height="70px" Text="Add  Item" Width="300px" style="font-size:x-large" OnClick="add_item_Click"/>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
