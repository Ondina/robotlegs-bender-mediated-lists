package yourdomain.modules.userModule.models.vos
{
	public class UserVO
	{
		public var name:String;
		public var age:String;
		
		public function UserVO(name:String)
		{
			this.name = name;
		}
		
		public function get label():String
		{
			return name;
		}
	}
}