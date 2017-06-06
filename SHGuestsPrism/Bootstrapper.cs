using Microsoft.Practices.Unity;
using Prism.Unity;
using SHGuestsPrism.Views;
using System.Windows;
using ModuleA;
using NoShowsModule;
using Prism.Modularity;

namespace SHGuestsPrism
{
    class Bootstrapper : UnityBootstrapper
    {
        protected override DependencyObject CreateShell ( )
        {
            return Container.Resolve<MainWindow> ( );
        }

        protected override void InitializeShell ( )
        {
            Application.Current.MainWindow.Show ( );
        }

        protected override void ConfigureModuleCatalog ( )
        {
            var catalog = ( ModuleCatalog )ModuleCatalog;
            catalog.AddModule ( typeof ( ModuleAModule ) );
            catalog.AddModule ( typeof ( NoShowsModuleModule ) );
        }
    }
}
