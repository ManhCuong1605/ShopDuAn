using QuanLiShopQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiShopQuanAo.Views.Admin
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["GioHang"] != null)
                {
                    DBClass.tbGioHang = Session["GioHang"] as DataTable;
                }
                else
                {
                    DBClass.tbGioHang.Rows.Clear();
                    DBClass.tbGioHang.Columns.Clear();
                    DBClass.tbGioHang.Columns.Add("Mahang", typeof(int));
                    DBClass.tbGioHang.Columns.Add("Tenhang", typeof(string));
                    DBClass.tbGioHang.Columns.Add("Machatlieu", typeof(string));
                    DBClass.tbGioHang.Columns.Add("Dongia", typeof(decimal));
                    DBClass.tbGioHang.Columns.Add("SoLuong", typeof(int));
                    DBClass.tbGioHang.Columns.Add("Ghichu", typeof(string));
                    // Thêm cột "Anh" vào DataTable
                    DBClass.tbGioHang.Columns.Add("Anh", typeof(string)); // Đường dẫn ảnh sản phẩm
                    DBClass.tbGioHang.Columns.Add("TongTien", typeof(decimal), "SoLuong * Dongia");
                }



                // Gọi phương thức BindDataToRepeater để gán dữ liệu cho repeater
                BindDataToRepeater();
            }
        }

        protected void lbGiohang_Click(object sender, EventArgs e)
        {
            Response.Redirect("Giohang.aspx");
        }
        protected void BindDataToRepeater()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Connections"].ConnectionString;
            string query = "SELECT * FROM Hang";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();

                try
                {
                    connection.Open();
                    adapter.Fill(dataTable);
                }
                catch (Exception ex)
                {

                }
                finally
                {
                    connection.Close();
                }

                rptProducts.DataSource = dataTable;
                rptProducts.DataBind();
            }
        }
    }
}
