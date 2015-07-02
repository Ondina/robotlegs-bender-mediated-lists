package yourdomain.modules.variousLists.controllers.events
{
	import flash.events.Event;

	import mx.collections.ArrayCollection;


	public class ListDataProviderEvent extends Event
	{
		public static const LIST_DP_REQUESTED:String = "listDataProviderRequested";
		public static const LIST_DP_CHANGED:String = "listDataProviderChanged";

		private var _listId:String;
		private var _listDataProvider:ArrayCollection;

		public function ListDataProviderEvent(type:String, listId:String=null, listDataProvider:ArrayCollection=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_listId = listId;
			_listDataProvider = listDataProvider;
		}

		public function get listDataProvider():ArrayCollection
		{
			return _listDataProvider;
		}

		public function get listId():String
		{
			return _listId;
		}

		public override function clone():Event
		{
			return new ListDataProviderEvent(type, listId, listDataProvider, bubbles, cancelable);
		}
	}
}
