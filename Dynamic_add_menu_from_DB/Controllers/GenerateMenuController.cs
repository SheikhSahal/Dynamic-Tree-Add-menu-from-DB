using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dynamic_add_menu_from_DB.Models;

namespace Dynamic_add_menu_from_DB.Controllers
{
    public class GenerateMenuController : Controller
    {
        MenuVM db = new MenuVM();
        Menu menu = new Menu();

        public PartialViewResult GenerateMenu()
        {
            var Menulist = db.GEtdb();
            var menudisplay = menu.Menutree(Menulist,null);
            return PartialView("GenerateMenu", menudisplay);
        }
    }
}