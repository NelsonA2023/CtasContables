<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuentas.aspx.cs" Inherits="CtasContables.Cuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Plan de cuentas contables"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Nombre de la cuenta"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label15" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Activo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="cta1" />
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Pasivo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="cta1" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Text="   PN"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="cta1" />
            <br />
            <br />
            <asp:Label ID="Label13" runat="server" Text="Positivo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="cta1" />
            <br />
            <br />
            <asp:Label ID="Label14" runat="server" Text="Negativo"></asp:Label>
&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton5" runat="server" GroupName="cta1" />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Codigo de cuenta"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ReadOnly="True"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label16" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="               "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Detalle.aspx">Detalle de cuentas</asp:HyperLink>
        </div>
    </form>
</body>
</html>
