<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AEmpregister.aspx.cs" Inherits="staffmanagement.Empregister" %>

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
            width: 77%;
        }
        .auto-style2 {
            width: 331px;
        }
        .auto-style3 {
            width: 331px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            color: #FF0000;
        }
        .auto-style6 {
            width: 331px;
            text-align: right;
        }
        .auto-style7 {
            left: 4px;
            top: 0px;
            width: 157px;
            height: 30px;
        }
        .auto-style8 {
            left: 0px;
            top: 0px;
            width: 157px;
        }
        .auto-style9 {
            left: 0px;
            top: 0px;
            width: 157px;
            text-align: right;
        }
        .auto-style10 {
            width: 100%;
            height: 624px;
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
        <div>
            <br />
            <h2>&nbsp;</h2>
            <h2>Employee Registration </h2>
            <br />

            <table class="auto-style10">
                 <tr>
                    <td class="auto-style7">Email</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style5" ErrorMessage="Enter valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Password</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Re-enter Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" CssClass="auto-style5" ErrorMessage="Re-enter Password"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Father Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style8">DOB</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">DOJoining</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Qualification</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Branch</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Job</td>
                    <td>
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>PRINICIPAL</asp:ListItem>
                            <asp:ListItem>HOD</asp:ListItem>
                            <asp:ListItem>CT</asp:ListItem>
                            <asp:ListItem>EMPLOYEE</asp:ListItem>
                            <asp:ListItem>OTHERSTAFF</asp:ListItem>
                        </asp:DropDownList>
&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Salary (per annum)</td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" placeholder="680000"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" CssClass="auto-style1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Exam Salary</td>
                    <td>
                        <asp:TextBox ID="TextBox16" runat="server" ReadOnly="True">0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Contact Number</td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox12" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Address</td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox13" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Casual Leaves </td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server">12</asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox14" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Medical Leaves</td>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server">8</asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox15" CssClass="auto-style5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" style="height: 26px" />
                    </td>
                    <td>
                        <input id="Reset1" type="reset" value="reset" /><asp:Label ID="Label1" runat="server" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
