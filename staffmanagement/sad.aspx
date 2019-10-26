<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sad.aspx.cs" Inherits="staffmanagement.sad" %>

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
        </div>
        <br />
        
        <br /><div><h2>Student Attendance Details</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="323px" Width="596px">
                <Columns>
                    <asp:BoundField DataField="stdId" HeaderText="stdId" SortExpression="stdId" />
                    <asp:BoundField DataField="CTT" HeaderText="CTT" SortExpression="CTT" />
                    <asp:BoundField DataField="eyear" HeaderText="eyear" SortExpression="eyear" />
                    <asp:BoundField DataField="sec" HeaderText="sec" SortExpression="sec" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT [stdId], [CTT], [eyear], [sec], [status], [date], [branch] FROM [classattendance] WHERE ([CTT] = @CTT)">
                <SelectParameters>
                    <asp:SessionParameter Name="CTT" SessionField="E" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
