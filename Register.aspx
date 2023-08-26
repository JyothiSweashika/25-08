<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Assignment11.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="w-100">
         <tr>
             <td>ArticleId</td>
             <td>
                 <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>Title</td>
             <td>
                 <asp:TextBox ID="TxtTitle" runat="server"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>Content</td>
             <td>
                 <asp:TextBox ID="TxtContent" runat="server"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>Publish Date</td>
             <td>
                 <asp:TextBox ID="TxtDate" runat="server"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>
                 <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="LblMsg" runat="server"></asp:Label>
             </td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
     <h2 class="text-center">Register Page </h2>
</asp:Content>
