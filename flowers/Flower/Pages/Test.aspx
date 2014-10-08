﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Flower.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            width: 1135px;
            height: 1500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        <asp:Menu ID="Menu1" runat="server" CssClass="dynamic"  Orientation="Horizontal" style="margin-left: 165px">
            <Items>
                <asp:MenuItem ImageUrl="~/Images/My.png" NavigateUrl="~/Pages/My.aspx"  ></asp:MenuItem>
                <asp:MenuItem ImageUrl="~/Images/Request.png" NavigateUrl="~/Pages/Request.aspx"  ></asp:MenuItem>
                <asp:MenuItem ImageUrl="~/Images/Catalog.png" NavigateUrl="~/Pages/Catalog.aspx" ></asp:MenuItem>
                <asp:MenuItem ImageUrl="~/Images/Registration.png" NavigateUrl="~/Pages/Registration.aspx" ></asp:MenuItem>
            </Items>
        </asp:Menu>

        </form>
</body>
</html>
