package yourdomain.modules.variousLists.models
{
	import mx.collections.ArrayCollection;

	import robotlegs.bender.framework.api.IInjector;

	import yourdomain.modules.userModule.models.UsersModel;

	public class ListDataProviderModel
	{
		[Inject]
		public var injector:IInjector;

		public function ListDataProviderModel()
		{
		}
		private var models:Object = {"shapes": ShapesModel, "users": UsersModel, "colors": ColorsModel};

		public function getModel(value:String):ArrayCollection
		{
			var model:* = injector.getInstance(models[value]);
			return model.data;
		}
	}
}
