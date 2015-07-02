package yourdomain.modules.anotherModule.views.mediators
{
	import robotlegs.bender.bundles.mvcs.Mediator;

	import yourdomain.modules.anotherModule.views.components.AnotherView;

	public class AnotherMediator extends Mediator
	{
		[Inject]
		public var view:AnotherView;

		override public function initialize():void
		{
			trace("AnotherMediator.initialize()");
		}
	}
}
