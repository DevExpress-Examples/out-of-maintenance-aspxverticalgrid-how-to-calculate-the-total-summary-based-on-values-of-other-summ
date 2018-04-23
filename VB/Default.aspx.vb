Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
    Protected Sub ASPxVerticalGrid1_CustomSummaryCalculate(ByVal sender As Object, ByVal e As DevExpress.Data.CustomSummaryEventArgs)
        Dim orderedUnits As ASPxVerticalGridSummaryItem = (TryCast(sender, ASPxVerticalGrid)).TotalSummary("UnitsOnOrder")
        Dim averagePrice As ASPxVerticalGridSummaryItem = (TryCast(sender, ASPxVerticalGrid)).TotalSummary("UnitPrice")
        Dim intOrderedUnits As Int32 = Convert.ToInt32(DirectCast(sender, ASPxVerticalGrid).GetTotalSummaryValue(orderedUnits))
        Dim intAveragePrice As Int32 = Convert.ToInt32(DirectCast(sender, ASPxVerticalGrid).GetTotalSummaryValue(averagePrice))
        e.TotalValue = intOrderedUnits * intAveragePrice
    End Sub
End Class