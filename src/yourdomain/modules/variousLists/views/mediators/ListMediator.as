package yourdomain.modules.variousLists.views.mediators
{
	import robotlegs.bender.bundles.mvcs.Mediator;

	import yourdomain.modules.variousLists.controllers.events.ListDataProviderEvent;
	import yourdomain.modules.variousLists.views.components.api.IListView;

	public class ListMediator extends Mediator
	{
		[Inject]
		public var view:IListView;

		override public function initialize():void
		{
			addContextListener(ListDataProviderEvent.LIST_DP_CHANGED, onListDPChanged, ListDataProviderEvent);
			dispatch(new ListDataProviderEvent(ListDataProviderEvent.LIST_DP_REQUESTED, view.listId));
		}

		private function onListDPChanged(event:ListDataProviderEvent):void
		{
			if (event.listId == view.listId)
				view.listDataProvider = event.listDataProvider;
		}
	}
}
