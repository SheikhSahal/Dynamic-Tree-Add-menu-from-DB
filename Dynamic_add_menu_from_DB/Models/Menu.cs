using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dynamic_add_menu_from_DB.Models
{
    public class Menu
    {
        public Menu()
        {
            List = new List<Menu>();
        }
        public int menu_id { get; set; }
        public string menu_name { get; set; }
        public int? menu_parent_id { get; set; }
        public List<Menu> List { get; set; }


        public List<Menu> Menutree(List<Menu> menulist , int? parentid)
        {
            return menulist.Where(x => x.menu_parent_id == parentid).Select(
                x => new Menu
                {
                    menu_id = x.menu_id,
                    menu_name = x.menu_name,
                    menu_parent_id = x.menu_parent_id,
                    List = Menutree(menulist,x.menu_id)
                }).ToList();
        }
    }
}