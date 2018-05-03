using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace J37639_ASG
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("azrina.maryam.aziz@gmail.com");
                mailMessage.To.Add("azrina.maryam.aziz@gmail.com");
                mailMessage.Subject = "Customer's Review";

                mailMessage.Body = "<b>User Name: </b>" + name_txtbox.Text + " " + "<b>Email Address: </b>" + email_txtbox.Text + " "
                    + "<b>Message: </b>" + msg_txtbox.Text;
                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("azrina.maryam.aziz@gmail.com", "carousel2196");
                smtpClient.Send(mailMessage);

                Label1.Text = "Message Successfully Sent!";

            }
            catch (Exception ex)
            {
                //if there is an error
                Label1.Text = "Oops...There's an unknown problem. Please try again later";
            }
        }
    }
}