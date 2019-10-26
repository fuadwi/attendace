<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eleave.aspx.cs" Inherits="staffmanagement.leaveE" %>

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
        .auto-style3 {
            width: 251px;
        }
        .auto-style4 {
            height: 23px;
            width: 251px;
        }
        .auto-style5 {
            width: 300px;
        }
        .auto-style6 {
            height: 23px;
            width: 300px;
        }
        .auto-style7 {
            width: 186px;
        }
        .auto-style8 {
            height: 23px;
            width: 186px;
        }
        .auto-style9 {
            width: 296px;
        }
        .auto-style10 {
            height: 23px;
            width: 296px;
        }
        .auto-style11 {
            width: 300px;
            text-align: center;
        }
        .auto-style12 {
            width: 186px;
            text-align: center;
        }
        .auto-style13 {
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
               <li class="auto-style6"><a class="active" href="EHome.aspx">Home</a></li>
               <li class="auto-style5"><a href="Edaily.aspx">Daily Work</a></li>
               <li class="auto-style4"><a href="Esalary.aspx">Salary</a></li>
                <li class="auto-style4"><a href="Eleave.aspx">Leave</a></li>
                 <li class="auto-style3"><a href="Epwd.aspx">Change Password</a></li>
                 <li class="auto-style2"><a href="Login.aspx">Logout</a></li>
            </ul>
        </div>
        <br /> <br /> <br />
        <div>
            <br /><br /><h2>Apply Leave&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Estatus.aspx">check status</asp:HyperLink>
            </h2>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Id</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style7">Branch</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Name</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style8">Year</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Job</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style7">Leave Type</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox7" runat="server" placeholder="CL or ML"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox7" CssClass="auto-style13" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Enter Number of Days leave Required</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server" MaxLength="3" placeholder="4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" CssClass="auto-style13" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style7">Description </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" CssClass="auto-style13" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">From</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox9" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox9" CssClass="auto-style13" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style7">To</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox10" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox10" CssClass="auto-style13" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>
                    <td class="auto-style12">
                        <input id="Reset1" type="reset" value="reset" /></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style13"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
