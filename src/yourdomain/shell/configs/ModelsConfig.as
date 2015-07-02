package yourdomain.shell.configs
{
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;

	import yourdomain.modules.userModule.models.UsersModel;
	import yourdomain.modules.variousLists.models.ColorsModel;
	import yourdomain.modules.variousLists.models.ListDataProviderModel;
	import yourdomain.modules.variousLists.models.ShapesModel;

	public class ModelsConfig implements IConfig
	{
		public function ModelsConfig()
		{
		}
		[Inject]
		public var injector:IInjector;

		public function configure():void
		{
			injector.map(ListDataProviderModel).asSingleton();
			injector.map(UsersModel).asSingleton();
			injector.map(ColorsModel).asSingleton();
			injector.map(ShapesModel).asSingleton();
		}
	}
}
