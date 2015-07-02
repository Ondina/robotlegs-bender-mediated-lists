package yourdomain.modules.userModule.controllers.commands
{
	import flash.events.IEventDispatcher;

	import yourdomain.modules.variousLists.controllers.events.ListDataProviderEvent;
	import yourdomain.modules.userModule.controllers.events.UserEvent;
	import yourdomain.modules.userModule.models.UsersModel;

	public class AddUserCommand
	{
		[Inject]
		public var event:UserEvent;

		[Inject]
		public var model:UsersModel;

		[Inject]
		public var dispatcher:IEventDispatcher;

		public function execute():void
		{
			model.addItem(event.listVO);
			dispatcher.dispatchEvent(new ListDataProviderEvent(ListDataProviderEvent.LIST_DP_CHANGED, event.listId, model.data));
		}
	}
}
