using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using Owin;
using project2.Models;

namespace project2
{
    public partial class Borrower : System.Web.UI.Page
    {
        //protected string SuccessMessage
        //{
        //    get;
        //    private set;
        //}

        //private bool HasPassword(ApplicationUserManager manager)
        //{
        //    return manager.HasPassword(User.Identity.GetUserId());
        //}

        //public bool HasPhoneNumber { get; private set; }

        //public bool TwoFactorEnabled { get; private set; }

        //public bool TwoFactorBrowserRemembered { get; private set; }

        //public int LoginsCount { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

            //HasPhoneNumber = String.IsNullOrEmpty(manager.GetPhoneNumber(User.Identity.GetUserId()));

            //// Enable this after setting up two-factor authentientication
            ////PhoneNumber.Text = manager.GetPhoneNumber(User.Identity.GetUserId()) ?? String.Empty;

            //TwoFactorEnabled = manager.GetTwoFactorEnabled(User.Identity.GetUserId());

            //LoginsCount = manager.GetLogins(User.Identity.GetUserId()).Count;

            //var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;


        }

        //protected void btnClear_Click(object sender, EventArgs e)
        //{

        //    fname.Text = "";
        //    lname.Text = "";
        //    Phone.Text = "";
        //    lblMessage.Text = "";


        //}

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{

        //        lblMessage.Text = $"Thank you.";

        //}


    }
}