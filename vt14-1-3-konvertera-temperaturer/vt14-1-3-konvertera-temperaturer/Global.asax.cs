﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.SessionState;

namespace vt14_1_3_konvertera_temperaturer {
    public class Global : System.Web.HttpApplication {

        protected void Application_Start(object sender, EventArgs e) {
            var jQuery = new ScriptResourceDefinition {
                Path = "~/Scripts/jquery-2.0.3.min.js",
                DebugPath = "~/Scripts/jquery-2.0.3.js"
            };

            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", jQuery);
        }

        protected void Session_Start(object sender, EventArgs e) {

        }

        protected void Application_BeginRequest(object sender, EventArgs e) {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e) {

        }

        protected void Application_Error(object sender, EventArgs e) {

        }

        protected void Session_End(object sender, EventArgs e) {

        }

        protected void Application_End(object sender, EventArgs e) {

        }
    }
}