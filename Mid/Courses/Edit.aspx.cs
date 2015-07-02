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
    public partial class Edit : System.Web.UI.Page
    {
		protected Mid.MidtermEntities _db = new Mid.MidtermEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected Cours item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  id)
        {
            using (_db)
            {
                var item = _db.Courses.Find(id);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", id));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single Cours item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public Mid.Cours GetItem([FriendlyUrlSegmentsAttribute(0)]int? id)
        {
            if (id == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Courses.Find(id);
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
