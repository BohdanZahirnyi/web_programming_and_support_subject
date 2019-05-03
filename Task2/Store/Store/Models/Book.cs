using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Store.Models
{
    public class Book
    {
       
        public int Id { get; set; }
     
        public string Name { get; set; }
       
        public string Author { get; set; }

        public string Genre { get; set; }
      
        public int Price { get; set; }
        
    }
}