﻿// =================================================================== 
// 项目说明
//====================================================================
// 杨晓光。@Copy Right 2014
// 文件： T_RepairZD.cs
// 项目名称：买车网
// 创建时间：2016/9/2
// 负责人：杨晓光
// ===================================================================
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using AutoRepair.Entity;
using Jnwf.Utils.Data;


namespace AutoRepair.DAL
{
    /// <summary>
    /// 数据层实例化接口类 dbo.T_RepairZD.
    /// </summary>
    public partial class T_RepairZDDataAccessLayer 
    {
        /// <summary>
        /// 维修ID查询详情
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IList<T_RepairZDEntity> Gettb_DocumentID_WXZD_List(int id)
        {
            IList<T_RepairZDEntity> Obj = new List<T_RepairZDEntity>();
            SqlParameter[] _param ={
			new SqlParameter("@id",SqlDbType.Int)
			};
            _param[0].Value = id;
            string sqlStr = "select * from T_RepairZD with(nolock) where DocumentID=@id ";
            using (SqlDataReader dr = SqlHelper.ExecuteReader(WebConfig.AutoRepairRW, CommandType.Text, sqlStr, _param))
            {
                while (dr.Read())
                {
                    Obj.Add(Populate_T_RepairZDEntity_FromDr(dr));
                }
            }
            return Obj;
        }
	}
}
