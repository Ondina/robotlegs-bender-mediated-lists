package yourdomain.modules.variousLists.models.vos
{
	public class ColorVO
	{
		public var color:String;
		
		public function ColorVO(color:String)
		{
			this.color = color;
		}
		
		public function get label():String
		{
			return color;
		}
	}
}