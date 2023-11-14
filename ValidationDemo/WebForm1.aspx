<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ValidationDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>&nbsp;<asp:Label ID="Label1" runat="server" Text="Enter Name"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox ><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator></div><br />
        <div>&nbsp;<asp:Label ID="Label2" runat="server" Text="Enter Age "></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox ><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Age is Required" ControlToValidate="TextBox2" ForeColor="#FF3300"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be greater than 10 and smaller than 60" MaximumValue="60" MinimumValue="16" ControlToValidate="TextBox2"></asp:RangeValidator></div>
        <div>&nbsp;<asp:Label ID="Label6" runat="server" Text="select payment mode "></asp:Label><asp:RadioButton ID="RadioButton1" runat="server" Text="cash" GroupName="paymode" Checked="True" /><asp:RadioButton ID="RadioButton2" runat="server" Text="Debit card" /><asp:RadioButton ID="RadioButton3" runat="server" Text="Credit Card" GroupName="paymode" /><asp:RadioButton ID="RadioButton4" runat="server" Text="UPI" GroupName="paymode" /></div>
        <br />
        <div>&nbsp;<asp:Label ID="Label3" runat="server" Text="Enter Email"></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid email id" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div><br />
        <div>&nbsp;<asp:Label ID="Label4" runat="server" Text="Enter password"></asp:Label><asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="passwords does not match" ControlToCompare="TextBox4" ControlToValidate="Textbox5"></asp:CompareValidator></div><br />
        <div>&nbsp;<asp:Label ID="Label5" runat="server" Text="confirm password"></asp:Label><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <div>&nbsp;</div>
    </form>
</body>
</html>
