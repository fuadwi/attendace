<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estatus.aspx.cs" Inherits="staffmanagement.Estatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         *{
            padding:0;
            margin:0;
        }
        #m ul{
            list-style-type:none;
        }
        #m ul li{
            background-color:ActiveCaption;
            border:solid 1px;
            
            line-height:35px;
            width:120px;
            height:35px;
            text-align:center;
            float:left;
            position:relative;
        }
        #m ul li a{
            display:block;
            color:white;
            text-decoration:none;
        }
        #m ul li a:hover{
            background-color:white;
            color:black;
        }
        #m ul ul{
            position:absolute;
            display:none;
        }
        #m ul li:hover>ul{
            display:block;
        }
        body{
            background-color:ghostwhite;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:Image runat="server" ImageURL="KIET.jpg"  Width="100%" Height="149px"></asp:Image>
            
        </div>
         <div id="m">
            <ul>
               <li class="auto-style6"><a class="active" href="EHome.aspx">Home</a></li>
               <li class="auto-style5"><a href="Edaily.aspx">Daily Work</a></li>
               <li class="auto-style4"><a href="Esalary.aspx">Salary</a></li>
                <li class="auto-style4"><a href="Eleave.aspx">Leave</a></li>
                 <li class="auto-style3"><a href="Epwd.aspx">Change Password</a></li>
                 <li class="auto-style2"><a href="Login.aspx">Logout</a></li>
            </ul>
        </div><br />
        
        <div>
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="210px" Width="963px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Eid" HeaderText="Eid" SortExpression="Eid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="job" HeaderText="job" SortExpression="job" />
                    <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
                    <asp:BoundField DataField="typeofleave" HeaderText="typeofleave" SortExpression="typeofleave" />
                    <asp:BoundField DataField="fom" HeaderText="fom" SortExpression="fom" />
                    <asp:BoundField DataField="countleaves" HeaderText="countleaves" SortExpression="countleaves" />
                    <asp:BoundField DataField="tto" HeaderText="tto" SortExpression="tto" />
                    <asp:BoundField DataField="des" HeaderText="des" SortExpression="des" />
                    <asp:BoundField DataField="approve" HeaderText="approve" SortExpression="approve" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT Eid, name, job, branch, typeofleave, fom, countleaves, tto, des, approve FROM leaves WHERE (Eid = @Eid)">
                <SelectParameters>
                    <asp:SessionParameter Name="Eid" SessionField="I" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
        </div>
    </form>
</body>
</html>
