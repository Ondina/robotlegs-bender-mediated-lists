package yourdomain.modules.variousLists.models.vos
{

	public class ShapeVO
	{

		public var name:String;

		public function ShapeVO(name:String)
		{
			this.name = name;
		}

		public function get label():String
		{
			return name;
		}
	}
}
