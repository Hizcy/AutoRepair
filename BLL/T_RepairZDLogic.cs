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
using System.Collections.Generic;
using System.Text;
using AutoRepair.DAL;
using AutoRepair.Entity;

namespace AutoRepair.BLL
{
    public partial class T_RepairZDBLL : BaseBLL< T_RepairZDBLL>

    {
        T_RepairZDDataAccessLayer t_RepairZDdal;
        public T_RepairZDBLL()
        {
            t_RepairZDdal = new T_RepairZDDataAccessLayer();
        }

        public int Insert(T_RepairZDEntity t_RepairZDEntity)
        {
            return t_RepairZDdal.Insert(t_RepairZDEntity);            
        }

        public void Update(T_RepairZDEntity t_RepairZDEntity)
        {
            t_RepairZDdal.Update(t_RepairZDEntity);
        }

        public T_RepairZDEntity GetAdminSingle(int iD)
        {
           return t_RepairZDdal.Get_T_RepairZDEntity(iD);
        }

        public IList<T_RepairZDEntity> GetT_RepairZDList()
        {
            IList<T_RepairZDEntity> t_RepairZDList = new List<T_RepairZDEntity>();
            t_RepairZDList=t_RepairZDdal.Get_T_RepairZDAll();
            return t_RepairZDList;
        }
        /// <summary>
        /// 维修ID查询详情
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public IList<T_RepairZDEntity> Gettb_DocumentID_WXZD_List(int Id)
        {
            IList<T_RepairZDEntity> t_RepairZDList = new List<T_RepairZDEntity>();
            t_RepairZDList = t_RepairZDdal.Gettb_DocumentID_WXZD_List(Id);
            return t_RepairZDList;
        }
    }
}
