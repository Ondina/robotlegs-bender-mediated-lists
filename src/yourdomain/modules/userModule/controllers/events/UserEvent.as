package yourdomain.modules.userModule.controllers.events
{
	import flash.events.Event;

	import yourdomain.modules.userModule.models.vos.UserVO;

	public class UserEvent extends Event
	{
		public static const ADD_USER_REQUESTED:String = "addUserRequested";
		public static const DELETE_USER_REQUESTED:String = "deleteUserRequested";

		private var _listId:String;
		private var _listVO:UserVO;

		public function UserEvent(type:String, listId:String=null, listVO:UserVO=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_listId = listId;
			_listVO = listVO;
		}

		public function get listVO():UserVO
		{
			return _listVO;
		}

		public function get listId():String
		{
			return _listId;
		}

		public override function clone():Event
		{
			return new UserEvent(type, listId, listVO, bubbles, cancelable);
		}
	}
}
