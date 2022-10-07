<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateitems.aspx.cs" Inherits="Cafe_Management.updateitems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="updateitem" style="background-color: #009933; border-style: solid; padding: 10px 20px 10px 20px; margin: 50px 250px 50px 250px; font-size: x-large; height: 490px; text-align: center;">
            Update&nbsp; Item<br />
            <br style="background-color: #6666FF" />
            Search Item<br />
            <asp:TextBox ID="search_item" runat="server" Height="40px" Width="400px" Font-Size="Large" OnTextChanged="search_item_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="item_name" runat="server" Text="Item  Name"></asp:Label>
            <br />
            <asp:TextBox ID="itemname_text" runat="server" Height="40px" Width="400px" Font-Size="Large"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="price" runat="server" Text="Price"></asp:Label>
            <br />
            <asp:TextBox ID="price_value" runat="server" Height="40px" Width="400px" Font-Size="Large"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="update" runat="server" Height="70px" Text="Update  Item" Width="300px" style="font-size:x-large" OnClick="update_Click"/>
            &nbsp;
            <asp:Button ID="back" runat="server" Height="70px" Text="Back" Width="200px" style="font-size:large;" OnClick="back_Click"/>
            <br />
            <br />
            <br />
            <asp:GridView ID="updateitemgrid" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="650px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="updateitemgrid_SelectedIndexChanged">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
