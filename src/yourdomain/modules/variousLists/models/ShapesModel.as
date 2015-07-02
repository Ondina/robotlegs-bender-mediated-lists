package yourdomain.modules.variousLists.models
{
	import mx.collections.ArrayCollection;
	import yourdomain.modules.variousLists.models.vos.ShapeVO;

	public class ShapesModel
	{
		public function ShapesModel()
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
			var collectionSource:Array = ["rectangle", "triangle", "circle", "star"];
			var vo:ShapeVO;
			for (var i:int = 0; i < collectionSource.length; i++)
			{
				vo = new ShapeVO(collectionSource[i]);
				_collection.addItem(vo);
			}
		}
	}
}
