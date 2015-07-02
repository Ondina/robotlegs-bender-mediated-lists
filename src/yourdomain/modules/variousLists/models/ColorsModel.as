package yourdomain.modules.variousLists.models
{
	import mx.collections.ArrayCollection;
	
	import yourdomain.modules.variousLists.models.vos.ColorVO;

	public class ColorsModel
	{
		public function ColorsModel()
		{
		}
		private var _collection:ArrayCollection = new ArrayCollection();
		
		public function get data():ArrayCollection
		{
			if (_collection.length == 0)
				initializeList();
			return _collection;
		}
		protected function initializeList():void
		{
			var collectionSource:Array = ["red", "blue", "yellow", "green"];
			var vo:ColorVO;
			for (var i:int = 0; i < collectionSource.length; i++)
			{
				vo = new ColorVO(collectionSource[i]);
				_collection.addItem(vo);
			}
		}
	}
}
