﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EvaluationList.aspx.cs" Inherits="car_EvaluationList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>评价</title>
    <link href="../css/CarList.css" rel="stylesheet" />
    <link rel="icon" sizes="any"  href="../images/c.jpg" />
    <script src="../js/jquery-1.7.2.min.js"></script>
</head>
<body>
  <form id="form1" runat="server">
        <div class="center_1">
            <div class="center_2">
                <ul>
                    <%=record %>
                    <asp:Repeater runat="server" ID="rptRepairList">
                        <ItemTemplate>
                            <li>
                                <div class="content_title">
                                    <div class="content_title_time"><%#Eval("FinishDate") %></div>
                                    <div class="content_title_chepai"><%#Eval("PlateNumber") %></div>
                                </div>
                                <div class="content_con">
                                    <div class="content_con_name"><%#Eval("UnitName") %></div>
                                    <div class="content_con_price">合计 ￥<strong><%#Eval("TotalMoney") %></strong></div>
                                </div>
                                <div class="content_foot" id=" ">
                                    <div class="content_foot_gongdan">工单：<%#Eval("RepairNumber") %></div>
                                   <%# PingList(int.Parse(Eval("Type").ToString()),int.Parse(Eval("ID").ToString()),Eval("UnitId").ToString()) %>     
                                </div>  
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </form>
</body>
</html>
