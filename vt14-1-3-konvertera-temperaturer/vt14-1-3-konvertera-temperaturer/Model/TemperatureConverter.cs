using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace vt14_1_3_konvertera_temperaturer.Model {
    public static class TemperatureConverter {

        public int CelsiusToFahrenheit(int degreeC) {
            return (int) Math.Round(degreeC * 1.8 + 32);
        }

        public int FahrenheitToCelsius(int degreeF) {
            return (int) Math.Round((double) (degreeF - 32) * 5/9);
        }
    }
}