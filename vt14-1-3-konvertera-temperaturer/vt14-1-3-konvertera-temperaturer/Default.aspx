<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="vt14_1_3_konvertera_temperaturer.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konvertera temperatur</title>
    <link href="Content/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Konvertera temperatur</h1>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" />
        <div id="main">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Starttemperatur:" AssociatedControlID="Start"></asp:Label>
                <asp:TextBox ID="Start" runat="server" TextMode="Number" autofocus="autofocus"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fyll i en starttemperatur"
                    Display="Dynamic" Text="*" CssClass="error" ControlToValidate="Start" />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Ange starttemperatur i hela grader"
                    Display="Dynamic" CssClass="error" Text="*" ControlToValidate="Start" Type="Integer" Operator="DataTypeCheck" />
            </div>
            <div>
                <asp:Label ID="Label2" runat="server" Text="Sluttemperatur:" AssociatedControlID="End"></asp:Label>
                <asp:TextBox ID="End" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fyll i en sluttemperatur"
                    Display="Dynamic" Text="*" CssClass="error" ControlToValidate="End" />
                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Ange sluttemperatur i hela grader"
                    Display="Dynamic" CssClass="error" Text="*" ControlToValidate="End" Type="Integer" Operator="DataTypeCheck" />
                <asp:CompareValidator ID="CompareValidator4" runat="server"
                    ErrorMessage="Sluttemperatur måste vara större än starttemperatur" ControlToValidate="End"
                    ControlToCompare="Start" Operator="GreaterThan" Type="Integer" CssClass="error" Text="*" />
            </div>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Temperatursteg:" AssociatedControlID="Step"></asp:Label>
                <asp:TextBox ID="Step" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fyll i temperatursteg"
                    Display="Dynamic" Text="*" CssClass="error" ControlToValidate="Step" />
                <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Ange temperatursteg i hela grader"
                    Display="Dynamic" CssClass="error" Text="*" ControlToValidate="Step" Type="Integer" Operator="DataTypeCheck" />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Temperatursteget måste vara mellan 1 och 100"
                    CssClass="error" Text="*" ControlToValidate="Step" MaximumValue="100" MinimumValue="1" Type="Integer" />
            </div>
            <div>
                <asp:Label ID="Label4" runat="server" Text="Typ av konvertering"></asp:Label>
                <div>
                    <asp:RadioButton ID="CtoF" GroupName="radio" runat="server" Checked="True" />
                    <asp:Label ID="Label5" runat="server" Text="Celsius till Fahrenheit"></asp:Label>
                </div>
                <div>
                    <asp:RadioButton ID="FtoC" GroupName="radio" runat="server" />
                    <asp:Label ID="Label6" runat="server" Text="Fahrenheit till Celsius"></asp:Label>
                </div>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Konvertera" OnClick="Button1_Click" />
        </div>
        <asp:Table ID="Table" runat="server"></asp:Table>
    </form>
</body>
</html>
