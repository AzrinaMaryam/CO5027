using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace J37639_ASG.Admin
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            // Restrict file upload to JPG and PNG format
            if (FileUpload.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload.FileName);

                if(fileExtension.ToLower() !=".jpg" && fileExtension.ToLower() != ".png")
                {
                    Label.Text = "Please select files in .jpg or .png format";
                    Label.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    //Limitation of File Size
                    int fileSize = FileUpload.PostedFile.ContentLength;
                    if (fileSize > 2000000) //Size Limit
                    {
                        Label.Text = "File Size MUST NOT EXCEED to 2MB";
                        Label.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        //success upload
                        string savelocation = Server.MapPath("~/Uploads/" + FileUpload.FileName);
                        FileUpload.SaveAs(savelocation);
                        Label.Text = "File is Successfully Uploaded";
                        Label.ForeColor = System.Drawing.ColorTranslator.FromHtml("#9F906C");
                    }
                }

            }
            else //error message when file is not selected
            {
                Label.Text = "Please select a file to upload";
                Label.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}