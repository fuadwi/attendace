<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aattendance.aspx.cs" Inherits="staffmanagement.Aattendance" %>

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
            width: 65%;
            height: 77px;
            color: #6699FF;
        }
        .auto-style2 {
            width: 284px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            left: 0px;
            top: 0px;
            width: 284px;
            height: 44px;
        }
        .auto-style9 {
            height: 44px;
        }
        .auto-style10 {
            left: 0px;
            top: 0px;
            width: 284px;
            height: 38px;
        }
        .auto-style11 {
            height: 38px;
        }
        .auto-style12 {
            color: #000000;
            font-size: large;
        }
        body{
            background-color:ghostwhite;
        }
        .auto-style13 {
            color: #66FF33;
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
               <li class="auto-style5"><a href="AEmpregister.aspx">EmployeeRegister</a>
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
        <div class="auto-style7">
            <br />

            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style8">Enter the Employee Type</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="job" DataValueField="job" Height="22px" Width="164px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style12"></asp:Label>

                        </strong></td>
                    <td class="auto-style11">
                        <asp:Button ID="Button1" runat="server" Height="27px"  Text="Enter" Width="60px" />
                    </td>
                </tr>
            </table>
            <div class="auto-style7">

            <br />
            &nbsp;<br />
            <br />
            </div><center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" Height="190px" Width="698px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="EId" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="Ename" SortExpression="name" />
                    <asp:TemplateField HeaderText="status">
                        <ItemTemplate>
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="present" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="Absent" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OnDuty">
                        <ItemTemplate>
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="onduty" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Loss Of Pay">
                        <ItemTemplate>
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="Loss of pay" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView></center>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT [Id], [name] FROM [Emp] WHERE ([job] = @job)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="job" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT DISTINCT [job] FROM [Emp]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button2" runat="server" Height="35px" OnClick="Button2_Click" Text="submit" Width="80px" />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style13"></asp:Label>

            <br />
        </div>
    </form>
</body>
</html>
