<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="signning.ascx.cs" Inherits="HRAKH.signning" %>
<div class="validatingerror">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" ForeColor="Red" />
</div>
<div class="wrapper">
    <h1>Register</h1>
    <div class="input_pox">
        <asp:TextBox ID="textfull" runat="server" placeholder="Full name" ></asp:TextBox>

    </div>
    <div class="input_pox">
        <asp:TextBox ID="textuser" runat="server" placeholder="UserName" name="username" required=""></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textfull" ErrorMessage="Required Username" ForeColor="Red">*</asp:RequiredFieldValidator>
    </div>

    <div class="input_pox">
        <asp:TextBox ID="textmail" runat="server" placeholder="Email @example.com" name="email" required=""></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email not valid" ControlToValidate="textmail" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textmail" ErrorMessage="Email required" ForeColor="Red">*</asp:RequiredFieldValidator>
    </div>

    <div class="input_pox">
        <asp:TextBox ID="textpass" runat="server" type="password" placeholder="Password"  required="" ></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textpass" ErrorMessage="Password required" ForeColor="Red">*</asp:RequiredFieldValidator>

    </div>
    <div class="input_pox">
        <asp:TextBox ID="textconpass" runat="server" type="password" placeholder="Confirm Password"  required="" ></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Does not match" ControlToCompare="textconpass" ControlToValidate="textpass" ForeColor="Red">*</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="textconpass" ErrorMessage="Repeat your password" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
    </div>

    <div class="sign_up-link">
        <asp:Button ID="but_register" runat="server" Text="Register" class="save" OnClick="but_register_Click" />

    </div>
    
    <p class="sign_in">
        Already have an account ?<a href="login.aspx" class="signup-link">Sign in</a>
    </p>
</div>