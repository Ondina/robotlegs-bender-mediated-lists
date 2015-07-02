package yourdomain.modules.someModule.views.mediators
{
	import robotlegs.bender.bundles.mvcs.Mediator;

	import yourdomain.modules.someModule.views.components.SomeView;

	public class SomeMediator extends Mediator
	{
		[Inject]
		public var view:SomeView;

		override public function initialize():void
		{
			trace("SomeMediator.initialize()");
		}
	}
}
