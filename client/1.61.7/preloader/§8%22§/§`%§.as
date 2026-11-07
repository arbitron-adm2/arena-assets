package §8"§
{
   public class §`%§
   {
      
      public static var § $§:§`%§ = new §`%§("vkontakte");
      
      public static var §>§:§`%§ = new §`%§("odnoklassniki");
      
      public static var §,"§:§`%§ = new §`%§("facebook");
      
      public static var §,#§:§`%§ = new §`%§("mailru");
      
      public var §1§:String;
      
      public function §`%§(param1:String)
      {
         super();
         this.§1§ = param1;
      }
      
      public static function §]$§(param1:String) : §`%§
      {
         switch(param1)
         {
            case "vkontakte":
               return § $§;
            case "odnoklassniki":
               return §>§;
            case "facebook":
               return §,"§;
            case "mailru":
               return §,#§;
            default:
               return null;
         }
      }
   }
}

