using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(VVU_WSMS.Startup))]
namespace VVU_WSMS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
