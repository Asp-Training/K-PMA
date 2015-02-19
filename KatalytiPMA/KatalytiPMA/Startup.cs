using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(KatalytiPMA.Startup))]
namespace KatalytiPMA
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
