﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="Flower.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


.btn-lg {
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.33;
  border-radius: 6px;
    height: 23px;
    width: 106px;
}

.btn-primary {
  color: #ffffff;
  background-color: #428bca;
  border-color: #357ebd;
}

.btn {
  display: inline-block;
  padding: 6px 12px;
  margin-bottom: 0;
  font-size: 14px;
  font-weight: normal;
  line-height: 1.428571429;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  cursor: pointer;
  border: 1px solid transparent;
  border-radius: 4px;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
       -o-user-select: none;
          user-select: none;
            margin-left: 2px;
        }

a {
  color: #428bca;
  text-decoration: none;
}

  a {
    text-decoration: underline;
  }
  
* {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}

  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    box-shadow: none !important;
  }
  </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
  <asp:ImageButton ID="ImageButton4" runat="server" Height="100px" ImageAlign="Top" ImageUrl="~/Images/logo (1).png" Width="200px" style="margin-left: 375px" AccessKey="p" PostBackUrl="~/Main.aspx" ToolTip="Перейти к заказу букетов" ValidateRequestMode="Disabled" />
        <br />
        <br />

        <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageAlign="Top" ImageUrl="~/Images/Logo.png" Width="200px" style="margin-left: 117px"  AccessKey="p" PostBackUrl="~/Request.aspx" ToolTip="Перейти к каталогу букетов" ValidateRequestMode="Disabled" AlternateText="Перейти к каталогу букетов" />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="100px" ImageAlign="Top" ImageUrl="~/Images/Logo.png" Width="200px" style="margin-left: 50px" AccessKey="p" PostBackUrl="~/Catalog.aspx" ToolTip="Перейти к каталогу букетов" ValidateRequestMode="Disabled" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" ImageUrl="~/Images/Logo.png" Width="200px" style="margin-left: 50px" AccessKey="p" PostBackUrl="~/Catalog.aspx" ToolTip="Перейти к каталогу букетов" ValidateRequestMode="Disabled" />
        <br />
    
        <br />
    
    </div>
    <div style="margin-left: 200px">
        Заполните форму заказа(поля, отмеченные знаком &quot;*&quot; заполняются обязательно):</div>
        <div style="margin-left: 100px; width: 500px; " aria-disabled="False">
      
            <br />
            Выберите тип букета*<asp:TextBox ID="Type" runat="server" Width="216px" style="margin-left:7px" TextMode="Number"  ></asp:TextBox>
        <br />
        <br />
            ФИО*<asp:TextBox ID="FIO" runat="server" Width="216px" style="margin-left: 116px"  ></asp:TextBox>
        <br />
        <br />
            Адрес получения*<asp:TextBox ID="Address" runat="server" Width="216px" style="margin-left: 35px"  ></asp:TextBox>
            <br />
        <br />
            Дата и время доставки*<asp:TextBox ID="Date_Time" runat="server" Width="216px" style="margin-left: 0px" TextMode="DateTimeLocal"  ></asp:TextBox>
            <br />
            <br />
            Телефон заказчика*<asp:TextBox ID="TelZak" runat="server" Width="216px" style="margin-left: 28px" TextMode="Phone"  ></asp:TextBox>
            <br />
            <br />
            Телефон получателя*<asp:TextBox ID="TelPol" runat="server" Width="216px" style="margin-left: 17px" TextMode="Phone"  ></asp:TextBox>
            <br />
            <br />
            Подпись к букету<asp:TextBox ID="Note" runat="server" Width="216px" style="margin-left: 46px"  ></asp:TextBox>
        
            <br />
        
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Оформить заказ" Width="216px" />
        <br />
        <br />
    
       


          
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Flower_DBConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="System.Data.SqlClient" SelectCommand="Select*from Users;"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1"
                >
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
                    <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                    <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                    <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                    <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                </Columns>
            </asp:GridView>
    
       


          
        </div>
        <p>
            <asp:TextBox ID="UserList" runat="server" Height="173px" Width="1197px"></asp:TextBox>
        </p>
    </form>
</body>
</html>