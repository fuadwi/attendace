<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aleaveinfo.aspx.cs" Inherits="staffmanagement.leaveinfo" %>

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
        .auto-style2 {
            left: 0px;
            top: 0px;
            width: 170px;
        }
        .auto-style3 {
            left: 4px;
            top: 0px;
            width: 199px;
        }
        .auto-style4 {
            left: 3px;
            top: 0px;
            width: 184px;
        }
        .auto-style5 {
            left: 0px;
            top: 0px;
            width: 162px;
        }
        .auto-style6 {
            left: 0px;
            top: 0px;
            width: 157px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 295px;
        }
        .auto-style3 {
            color: #FF0000;
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
               <li class="auto-style6"><a class="active" href="AHome.aspx">Home</a></li>
               <li class="auto-style5"><a href="AEmpregister.aspx">Employee Register</a>
                <ul>
                    <li><a href="AEmpupdate.aspx">Updata Data</a></li>
                    <li><a href="AEmpdetails.aspx">Details</a></li>
                    <li><a href="AEmpsi.aspx">Salary Information</a></li>
                </ul>
                </li>
                <li class="auto-style4"><a href="Aattendance.aspx">Attendance</a></li>
                <li class="auto-style4"><a href="Asalary.aspx">Salary</a></li>
                <li class="auto-style4"><a href="Aleave.aspx">Leave</a></li>
                 <li class="auto-style5"><a href="Adi.aspx">Daily Info</a>
                <ul>
                    <li><a href="Aoi.aspx">Others Daily Info</a></li>
                    
                </ul>
                </li>
                 <li class="auto-style3"><a href="Adminpwd.aspx">Change Password</a>
                     <ul>
                 <li class="auto-style2"><a href="Login.aspx">Logout</a></li>
                   </ul>  </li>
            </ul>
        </div>
        <div><br /><h2>Leave Info</h2>
            <br />

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Enter Employee Id</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="search" OnClick="Button1_Click" />
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
            </table><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="414px" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="Eid" HeaderText="Eid" SortExpression="Eid" />
                    <asp:BoundField DataField="job" HeaderText="job" SortExpression="job" />
                    <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
                    <asp:BoundField DataField="typeofleave" HeaderText="typeofleave" SortExpression="typeofleave" />
                    <asp:BoundField DataField="from" HeaderText="from" SortExpression="from" />
                    <asp:BoundField DataField="countleaves" HeaderText="countleaves" SortExpression="countleaves" />
                    <asp:BoundField DataField="to" HeaderText="to" SortExpression="to" />
                    <asp:BoundField DataField="des" HeaderText="des" SortExpression="des" />
                    <asp:BoundField DataField="clremainingleaves" HeaderText="clremainingleaves" SortExpression="clremainingleaves" />
                    <asp:BoundField DataField="mlremainingleaves" HeaderText="mlremainingleaves" SortExpression="mlremainingleaves" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT name, Eid, job, branch, typeofleave, [from], countleaves, [to], des, clremainingleaves, mlremainingleaves FROM leaves WHERE (Eid = @Eid)">
                <SelectParameters>
                    <asp:SessionParameter Name="Eid" SessionField="i" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />

        </div>
    </form>
</body>
</html>
