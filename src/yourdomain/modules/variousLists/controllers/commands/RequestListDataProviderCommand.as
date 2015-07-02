package yourdomain.modules.variousLists.controllers.commands
{
	import flash.events.IEventDispatcher;

	import yourdomain.modules.variousLists.controllers.events.ListDataProviderEvent;
	import yourdomain.modules.variousLists.models.ListDataProviderModel;

	public class RequestListDataProviderCommand
	{
		[Inject]
		public var event:ListDataProviderEvent;

		[Inject]
		public var model:ListDataProviderModel;

		[Inject]
		public var dispatcher:IEventDispatcher;

		public function execute():void
		{
			dispatcher.dispatchEvent(new ListDataProviderEvent(ListDataProviderEvent.LIST_DP_CHANGED, event.listId, model.getModel(event.listId)));
		}
	}
}
