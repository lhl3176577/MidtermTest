using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Mid;

namespace Mid.Courses
{
    public partial class Default : System.Web.UI.Page
    {
		protected Mid.MidtermEntities _db = new Mid.MidtermEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Cours entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<Mid.Cours> GetData()
        {
            return _db.Courses;
        }
    }
}

