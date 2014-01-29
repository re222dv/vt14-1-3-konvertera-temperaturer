using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vt14_1_3_konvertera_temperaturer.Model;

namespace vt14_1_3_konvertera_temperaturer {
    public partial class Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
        }

        protected void Button1_Click(object sender, EventArgs e) {
            if (!CtoF.Checked && !FtoC.Checked) {
                ModelState.AddModelError(String.Empty, "Välj konvertering från Celsius till Fahrenheit eller från Fahrenheit till Celsius");
            }

            if (IsValid) {
                var start = int.Parse(Start.Text);
                var end = int.Parse(End.Text);
                var step = int.Parse(Step.Text);

                var thead = new TableHeaderRow();
                var theadC = new TableHeaderCell { Text = "&deg;C" };
                var theadF = new TableHeaderCell { Text = "&deg;F" };

                if (CtoF.Checked) {
                    thead.Cells.Add(theadC);
                    thead.Cells.Add(theadF);
                } else {
                    thead.Cells.Add(theadF);
                    thead.Cells.Add(theadC);
                }
                 
                Table.Rows.Add(thead);

                for (int temp = start; temp <= end; temp += step) {
                    var trow = new TableRow();
                    trow.Cells.Add(new TableCell { Text = temp.ToString() });

                    if (CtoF.Checked) {
                        trow.Cells.Add(new TableCell {
                            Text = TemperatureConverter.CelsiusToFahrenheit(temp).ToString()
                        });
                    } else {
                        trow.Cells.Add(new TableCell {
                            Text = TemperatureConverter.FahrenheitToCelsius(temp).ToString()
                        });
                    }

                    Table.Rows.Add(trow);
                }
            }
        }
    }
}