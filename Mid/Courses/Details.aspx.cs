using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using Mid;

namespace Mid.Courses
{
    public partial class Details : System.Web.UI.Page
    {
		protected Mid.MidtermEntities _db = new Mid.MidtermEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single Cours item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public Mid.Cours GetItem([FriendlyUrlSegmentsAttribute(0)]int? id)
        {
            if (id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Courses.Where(m => m.id == id).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

