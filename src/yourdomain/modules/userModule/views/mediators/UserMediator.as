package yourdomain.modules.userModule.views.mediators
{
	import robotlegs.bender.bundles.mvcs.Mediator;

	import yourdomain.modules.userModule.controllers.events.UserEvent;

	public class UserMediator extends Mediator
	{
		override public function initialize():void
		{
			addViewListener(UserEvent.ADD_USER_REQUESTED, dispatch, UserEvent);
		}
	}
}
