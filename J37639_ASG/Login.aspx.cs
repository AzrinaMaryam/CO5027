using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System.Web.Security;

namespace J37639_ASG
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Register
        protected void Button1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole identityRole = new IdentityRole("RegisteredUser");
            roleManager.Create(identityRole);

            var user = new IdentityUser()
            {
                UserName = regemail_txtbox.Text,
                Email = regemail_txtbox.Text
            };

            IdentityResult result = manager.Create(user, regpwd_txtbox.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "RegisteredUser");
                manager.Update(user);

                LabelReg.Text = "Your Registration is Successful!";
            }
            else
            {
                LabelRegError.Text = "Invalid username or password";
            }

        }
        //Log In
        protected void Button2_Click(object sender, EventArgs e)
        {
            {
                var identityDbContext = new IdentityDbContext("IdentityConnectionString");
                var userStore = new UserStore<IdentityUser>(identityDbContext);
                var userManager = new UserManager<IdentityUser>(userStore);
                var user = userManager.Find(loginemail_txtbox.Text, loginpwd_txtbox.Text);

                if (user != null)
                {
                    LogUserIn(userManager, user);
                    LabelLogin.Text = "Your Log in is Successful!";
                }

                else
                {
                    LabelLoginError.Text = "Invalid username or password";
                }
            }
        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["../Login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["../Login.aspx"]);
            }
            else
            {
                String userRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
                if (userRoles.Equals("Admin"))
                {
                    if (userRoles.Equals("Admin"))
                    {
                        Response.Redirect("Admin/Index.aspx");
                    }
                }
            }
        }

        protected void regemail_txtbox_TextChanged(object sender, EventArgs e)
        {

        }
   
    }

}