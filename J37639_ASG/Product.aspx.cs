using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace J37639_ASG
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string PillowID = Request.QueryString["Pillow_ID"];
            string filename = PillowID + ".jpg";
            Pillow_Image.ImageUrl = "~/Uploads/" + filename;
        }

    }
}