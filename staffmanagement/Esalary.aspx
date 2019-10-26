<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Esalary.aspx.cs" Inherits="staffmanagement.salaryE" %>

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
            width: 59%;
            height: 175px;
        }
        .auto-style2 {
            width: 344px;
        }
        .auto-style3 {
            width: 358px;
        }
        .auto-style4 {
            width: 100%;
            height: 233px;
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
        </div>
        <br /><br />
        <div><br /><h2>Employee Salary</h2><br /><br />

            <table class="auto-style1" border="1">
                <tr>
                    <td class="auto-style2">Id</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Name</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Salary</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Exam Salary</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                </table>
            <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
            <br />
            
            <table class="auto-style4">
                <tr>
                    <td>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="144px" Width="394px">
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                                <asp:BoundField DataField="exam" HeaderText="exam" SortExpression="exam" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT [name], [email], [salary], [exam] FROM [Empsalary] WHERE ([email] = @email)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label3" Name="email" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="148px" Width="398px">
                            <Columns>
                                <asp:BoundField DataField="salarypaid" HeaderText="salarypaid" SortExpression="salarypaid" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                <asp:BoundField DataField="exampaid" HeaderText="exampaid" SortExpression="exampaid" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT [salarypaid], [date], [exampaid] FROM [pay] WHERE ([email] = @email)">
                            <SelectParameters>
                                <asp:SessionParameter Name="email" SessionField="E" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            
            <br />

            <br />
        </div>
    </form>
</body>
</html>
