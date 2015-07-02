package yourdomain.modules.userModule.models
{
	import flash.events.IEventDispatcher;

	import mx.collections.ArrayCollection;

	import yourdomain.modules.variousLists.controllers.events.ListDataProviderEvent;
	import yourdomain.modules.userModule.models.vos.UserVO;

	public class UsersModel
	{
		public function UsersModel()
		{
		}
		private var _collection:ArrayCollection = new ArrayCollection();

		public function get data():ArrayCollection
		{
			if (_collection.length == 0)
				initializeList();
			return _collection;
		}

		public function addItem(value:UserVO):void
		{
			_collection.addItem(value);
		}

		protected function initializeList():void
		{
			var collectionSource:Array = ["Alain", "Joe", "John", "Tom"];
			var vo:UserVO;
			for (var i:int = 0; i < collectionSource.length; i++)
			{
				vo = new UserVO(collectionSource[i]);
				_collection.addItem(vo);
			}
		}
	}
}
