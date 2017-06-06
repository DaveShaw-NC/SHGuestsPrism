using Microsoft.Practices.Unity;
using NoShowsModule.Views;
using Prism.Modularity;
using Prism.Regions;
using Prism.Unity;
using System;

namespace NoShowsModule
{
    public class NoShowsModuleModule : IModule
    {
        IRegionManager _regionManager;
        IUnityContainer _container;

        public NoShowsModuleModule ( RegionManager regionManager, IUnityContainer container )
        {
            _regionManager = regionManager;
            _container = container;
        }
        public void Initialize ( )
        {
            _regionManager.RegisterViewWithRegion ( "ContentRegion", typeof ( NoShowsView ) );

            _container.RegisterTypeForNavigation<NoShowsView> ( );
        }
    }
}
