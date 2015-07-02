package yourdomain.shell.configs
{
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;

	import yourdomain.modules.anotherModule.views.components.AnotherView;
	import yourdomain.modules.anotherModule.views.mediators.AnotherMediator;
	import yourdomain.modules.someModule.views.components.SomeView;
	import yourdomain.modules.someModule.views.mediators.SomeMediator;
	import yourdomain.modules.userModule.views.components.UserView;
	import yourdomain.modules.userModule.views.mediators.UserMediator;
	import yourdomain.modules.variousLists.views.components.api.IListView;
	import yourdomain.modules.variousLists.views.mediators.ListMediator;

	public class MediatorsConfig implements IConfig
	{
		[Inject]
		public var mediatorMap:IMediatorMap;

		public function configure():void
		{
			mediatorMap.map(UserView).toMediator(UserMediator);
			mediatorMap.map(SomeView).toMediator(SomeMediator);
			mediatorMap.map(AnotherView).toMediator(AnotherMediator);
			mediatorMap.map(IListView).toMediator(ListMediator);
		}
	}
}
