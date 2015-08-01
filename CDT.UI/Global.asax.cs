using CDT.Repo.BAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;

namespace CDT.UI
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void Session_Start()
        {
            if (Context.Request.IsAuthenticated)
            {
                HttpCookie authenticationCookie = Request.Cookies[FormsAuthentication.FormsCookieName];
                if (authenticationCookie != null)
                {
                    FormsAuthenticationTicket authenticationTicket = FormsAuthentication.Decrypt(authenticationCookie.Value);
                    if (authenticationTicket != null && !authenticationTicket.Expired)
                    {
                        var userService = new UserBAL();
                        var user = userService.GetUserByEmailOrPhone(authenticationTicket.Name);
                        if (user != null)
                        {
                            //Session["UserPartitionKey"] = user.PartitionKey;
                           // Session["UserRowKey"] = user.RowKey;
                            Session["UserFirstName"] = user.FirstName;
                            //Session["UserTimezone"] = Convert.ToString(user.TimeZone);

                            //var broadcaster = user.PartitionKey == "BROADCASTER" ? user : UserService.AdminForSubscriber(user.PartitionKey, user.RowKey);

                           // if (null != broadcaster)
                            {
                                Session["IsAdmin"] = true;
                                //Session["ShowAdMenu"] = broadcaster.EnableCampaigns;
                                //Session["ShowGroupMenu"] = broadcaster.EnableGroups;

                                //Session["BroadcasterPartitionKey"] = broadcaster.PartitionKey;
                                //Session["BroadcasterRowKey"] = broadcaster.RowKey;
                                //Session["BroadcasterName"] = broadcaster.DisplayName;
                                //Session["BroadcasterTimezone"] = Convert.ToString(broadcaster.TimeZone);
                                //Session["GroupName"] = broadcaster.ShortName;
                            }
                        }
                    }
                }
            }
        }
    }
}
