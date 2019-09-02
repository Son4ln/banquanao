using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(websitequanao.Startup))]
namespace websitequanao
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
