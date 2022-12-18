﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment5
{
    public partial class Employee_Registration : System.Web.UI.Page
    {
        employee obj = new employee();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = obj.GetDetails("select * from assignment");
                GridView1.DataBind();
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            int i = obj.Insert("insert into assignment values ('" + txtname.Text + "','" + txtemail.Text + "','" + txtphn.Text + "','" + txtage.Text + "');select @@IDENTITY");
            obj.dbclose();
            if (i == 1)
            {
                Response.Write("Sucess");
            }
            else
            {
                Response.Write("Failed");
            }
            GridView1.DataSource = obj.GetDetails("select * from assignment");
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = obj.GetDetails("select * from assignment");
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int empid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            int i = obj.Updateemp("delete from assignment where emp_Id='"+empid+"'");

            GridView1.DataSource = obj.GetDetails("select * from assignment");
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int  employeeId= Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());

            TextBox txtnamex = new TextBox();
            txtnamex = (TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0];

            TextBox txtemailx = new TextBox();
            txtemailx = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];

            TextBox txtphnx = new TextBox();
            txtphnx = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];

            TextBox txtagex = new TextBox();
            txtagex = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];

            int i = obj.Updateemp("update assignment set Name='" + txtnamex.Text + "',Email='" + txtemailx.Text + "',Phone='" + txtphnx.Text + "',Age='" + txtagex.Text + "'where emp_Id='" + employeeId + "'");

            GridView1.EditIndex = -1;
            GridView1.DataSource = obj.GetDetails("select * from assignment");
            GridView1.DataBind();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = obj.GetDetails("select * from assignment");
            GridView1.DataBind();
        }

    }
}