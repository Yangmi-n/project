using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Shop
    {
        public int id { get; set; }
        public string MV_goodsName { get; set; }
        public decimal MV_goodsPrice { get; set; }
        public int MV_goodsNum { get; set; }
        public string MV_img { get; set; }
        public decimal CalShMoney { get; set; }
        public int MV_userId { get; set; }

    }
}
