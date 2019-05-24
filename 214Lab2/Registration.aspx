<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="_214Lab2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 195px;
        }
    </style>
</asp:Content>
<asp:Content ID="register" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
      
    
    <div class="ml-4">
      <h3>New Customer Registration:</h3>  
        <asp:CreateUserWizard ID="CreateUserWizard1" RequireEmail="false" runat="server" ContinueDestinationPageUrl="~/CustomerOrder.aspx">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center" colspan="2">Sign Up for Your New Account</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">User Name:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="UserName"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="CreateUserWizard1" ToolTip="User Name is required." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Password is required." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" ID="ConfirmPasswordLabel">Confirm Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" TextMode="Password" ID="ConfirmPassword"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Confirm Password is required." ID="ConfirmPasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="FirstName" ID="fnameLabel">First Name:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="FirstName"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName" ErrorMessage="First Name is required." ValidationGroup="CreateUserWizard1" ToolTip="First Name is required." ID="RequiredFieldValidator1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="LastName" ID="lnameLabel">Last Name:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="LastName"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName" ErrorMessage="Last Name is required." ValidationGroup="CreateUserWizard1" ToolTip="Last Name is required." ID="RequiredFieldValidator2">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="City" ID="cityLabel">City:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="City"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="City" ErrorMessage="City is required." ValidationGroup="CreateUserWizard1" ToolTip="City is required." ID="RequiredFieldValidator3">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>

                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="Phone" ID="phoneLabel">Contact Number:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="Phone"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone" ErrorMessage="Phone is required." ValidationGroup="CreateUserWizard1" ToolTip="Phone is required." ID="RequiredFieldValidator4">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>

                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="The Password and Confirmation Password must match." Display="Dynamic" ValidationGroup="CreateUserWizard1" ID="PasswordCompare"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal runat="server" ID="ErrorMessage" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>

    </div>
       <div class="ml-4">

           <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Secure/lease-slip.aspx">
               <LayoutTemplate>
                   <table cellspacing="0" cellpadding="1" style="border-collapse: collapse;">
                       <tr>
                           <td>
                               <table cellpadding="0">
                                   <tr>
                                       <td align="center" colspan="2">Log In</td>
                                   </tr>
                                   <tr>
                                       <td align="right">
                                           <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">User Name:</asp:Label></td>
                                       <td class="auto-style1">
                                           <asp:TextBox runat="server" ID="UserName"></asp:TextBox>
                                           <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="Login1" ToolTip="User Name is required." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="right">
                                           <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label></td>
                                       <td class="auto-style1">
                                           <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                                           <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="Login1" ToolTip="Password is required." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2">
                                           <asp:CheckBox runat="server" Text="Remember me next time." ID="RememberMe"></asp:CheckBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="center" colspan="2" style="color: Red;">
                                           <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="right" colspan="2">
                                           <asp:Button runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" ID="LoginButton"></asp:Button>
                                       </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                   </table>
               </LayoutTemplate>
           </asp:Login>

       </div>

   </div>
    
</asp:Content>
