using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ODPP.Client.upload
{
    public class ImageObj
    {
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        private int quantity;

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }
        private string size;

        public string Size
        {
            get { return size; }
            set { size = value; }
        }
        public ImageObj(string name, int quantity, string size) {
            this.name = name;
            this.quantity = quantity;
            this.size = size;
        }
        public ImageObj(){}
    }
}