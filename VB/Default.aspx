<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <dx:ASPxVerticalGrid ID="ASPxVerticalGrid1" runat="server" OnCustomSummaryCalculate="ASPxVerticalGrid1_CustomSummaryCalculate" Width="700px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductID">
            <Rows>
                <dx:VerticalGridTextRow FieldName="ProductID" VisibleIndex="0">
                </dx:VerticalGridTextRow>
                <dx:VerticalGridTextRow FieldName="ProductName" VisibleIndex="1">
                </dx:VerticalGridTextRow>
                <dx:VerticalGridTextRow FieldName="UnitPrice" VisibleIndex="2">
                </dx:VerticalGridTextRow>
                <dx:VerticalGridTextRow FieldName="UnitsInStock" VisibleIndex="3">
                </dx:VerticalGridTextRow>
                <dx:VerticalGridTextRow FieldName="UnitsOnOrder" VisibleIndex="4">
                </dx:VerticalGridTextRow>
            </Rows>
            <TotalSummary>                
                <dx:ASPxVerticalGridSummaryItem SummaryType="Average" FieldName="UnitPrice" />
                <dx:ASPxVerticalGridSummaryItem SummaryType="Average" FieldName="UnitsOnOrder" />
                <dx:ASPxVerticalGridSummaryItem SummaryType="Custom" DisplayFormat="Average Sum ={0}" />
            </TotalSummary>
            <Settings ShowSummaryPanel="True" />
            <SettingsPager Mode="ShowPager"></SettingsPager>
        </dx:ASPxVerticalGrid>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\nwind.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock], [UnitsOnOrder] FROM [Products]"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>