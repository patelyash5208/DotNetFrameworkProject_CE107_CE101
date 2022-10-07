<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Cafe_Management.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #dashboard {
            width:1054px;
            margin-left:50px;
            margin-top:97px;
            margin-bottom: 94px;
        }
        
    </style>
</head>
<body>
    <form id="dashboard" runat="server">
        <div style="border-style: solid; border-width: medium; font-size: x-large; height: 320px; width: 1000px; background-color: #009933;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to
            Sunshine<br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="place_order" runat="server" style="font-size:large;" BackColor="#0066FF" BorderColor="Black" BorderStyle="Solid" Text="Place  Order" Height="50px" Width="200px" OnClick="place_order_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="add_items" runat="server" style="font-size:large;" BackColor="#0066FF" BorderColor="Black" BorderStyle="Solid" Text="Add  Items" Height="50px" Width="200px" OnClick="add_items_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="update_items" runat="server" style="font-size:large;" BackColor="#0066FF" BorderColor="Black" BorderStyle="Solid" Text="Update  Items" Height="50px" Width="200px" OnClick="update_items_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="remove_items" runat="server" style="font-size:large;" BackColor="#0066FF" BorderColor="Black" BorderStyle="Solid" Text="Remove  Items" Height="50px" Width="200px" OnClick="remove_items_Click"/>
            <br />
        </div>
    </form>
</body>
</html>
