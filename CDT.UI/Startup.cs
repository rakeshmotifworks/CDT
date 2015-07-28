using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CDT.UI.Startup))]
namespace CDT.UI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
