package yourdomain.modules.variousLists.views.components.api
{
	import mx.collections.ArrayCollection;

	public interface IListView
	{
		function set listDataProvider(value:ArrayCollection):void;
		function get listDataProvider():ArrayCollection;
		
		function set listId(value:String):void;
		function get listId():String;
	}
}