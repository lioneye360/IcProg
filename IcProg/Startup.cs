using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IcProg.Startup))]
namespace IcProg
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
