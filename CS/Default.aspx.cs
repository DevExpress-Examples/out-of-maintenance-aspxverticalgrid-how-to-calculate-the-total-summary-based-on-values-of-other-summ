using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ASPxVerticalGrid1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
    {
        ASPxVerticalGridSummaryItem orderedUnits = (sender as ASPxVerticalGrid).TotalSummary["UnitsOnOrder"];
        ASPxVerticalGridSummaryItem averagePrice = (sender as ASPxVerticalGrid).TotalSummary["UnitPrice"];
        Int32 intOrderedUnits = Convert.ToInt32(((ASPxVerticalGrid)sender).GetTotalSummaryValue(orderedUnits));
        Int32 intAveragePrice = Convert.ToInt32(((ASPxVerticalGrid)sender).GetTotalSummaryValue(averagePrice));
        e.TotalValue = intOrderedUnits * intAveragePrice;
    }
}