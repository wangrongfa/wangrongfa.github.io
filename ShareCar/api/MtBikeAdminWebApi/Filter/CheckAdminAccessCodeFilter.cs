﻿using Autofac;
using MintCyclingService.AdminAccessCode;
using MintCyclingService.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;


namespace MtBikeAdminWebApi.Filter
{
    /// <summary>
    /// 检验管理员AccessCode是否有效
    /// </summary>
    public class CheckAdminAccessCodeFilter : ActionFilterAttribute
    {
        /// <summary>
        /// Action执行前运行
        /// </summary>
        /// <param name="actionContext">Action上下文</param>
        public override void OnActionExecuting(HttpActionContext actionContext)
        {
            var result = new ResultModel();
            var accesscode = Guid.Parse(actionContext.Request.Headers.GetValues(WebApiApplication.AccessCodeName).First());

            var _adminAccessCodeRespository = AutoFacConfig.Container.Resolve<IAdminAccessCodeService>();
            var sk = _adminAccessCodeRespository.VeriftyAccessCode(accesscode);
            if (!sk.IsSuccess)
            {
                actionContext.Response = actionContext.Request.CreateResponse(HttpStatusCode.OK, sk);
                return;
            }
            else
            {
                base.OnActionExecuting(actionContext);
            }
        }
    }
}