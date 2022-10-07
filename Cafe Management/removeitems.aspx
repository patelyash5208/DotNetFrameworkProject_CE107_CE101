<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="removeitems.aspx.cs" Inherits="Cafe_Management.removeitems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="removeitem" runat="server">
        <div style="padding: 20px; text-align: left; font-size: large; font-family: 'Fira Code Medium'; background-color: #009933">
        &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp; Remove Item<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; delete item :-&nbsp;
            <asp:TextBox ID="delete_item" runat="server" Height="40px" Width="400px"></asp:TextBox>
&nbsp;
            <br />
&nbsp;<asp:GridView ID="deleteitemgrid" runat="server" AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="deleteitemgrid_SelectedIndexChanged" style="margin-left: 220px" Width="500px">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Back" runat="server" Height="50px" OnClick="Back_Click" Text="Back" Width="200px" style="font-size:large;"/>
        </div>
    </form>
</body>
</html>
