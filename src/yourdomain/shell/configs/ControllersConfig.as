package yourdomain.shell.configs
{
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.framework.api.IConfig;
	
	import yourdomain.modules.userModule.controllers.commands.AddUserCommand;
	import yourdomain.modules.userModule.controllers.events.UserEvent;
	import yourdomain.modules.variousLists.controllers.commands.RequestListDataProviderCommand;
	import yourdomain.modules.variousLists.controllers.events.ListDataProviderEvent;

	public class ControllersConfig implements IConfig
	{
		[Inject]
		public var commandMap:IEventCommandMap;

		public function configure():void
		{
			commandMap.map(ListDataProviderEvent.LIST_DP_REQUESTED, ListDataProviderEvent).toCommand(RequestListDataProviderCommand);
			commandMap.map(UserEvent.ADD_USER_REQUESTED, UserEvent).toCommand(AddUserCommand);
		}
	}
}
