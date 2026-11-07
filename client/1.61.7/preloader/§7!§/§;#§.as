package §7!§
{
   import ru.pragmatix.preloader.settings.ant.§+§;
   
   public class §;#§ extends §+§ implements §<%§
   {
      
      public function §;#§()
      {
         super();
      }
      
      public function getPvpServer(param1:String) : Object
      {
         return {
            "url":"tesla.rmart.ru",
            "ports":["60102"]
         };
      }
      
      public function § %§(param1:String) : Object
      {
         return {
            "url":"tesla.rmart.ru",
            "ports":["80"]
         };
      }
      
      public function §6"§() : Object
      {
         return {
            "url":"tesla.rmart.ru",
            "ports":["60103"]
         };
      }
      
      public function §8%§() : uint
      {
         return parseInt("1");
      }
      
      public function §^!§() : String
      {
         return "";
      }
      
      protected function §;$§() : int
      {
         var _loc1_:Number = parseInt("pvp.main.id");
         return !isNaN(_loc1_) ? int(_loc1_) : 1;
      }
      
      override public function §%%§(param1:String) : Object
      {
         return {
            "achievServer":this.§ %§(param1),
            "achievementThreshold":this.§8%§(),
            "photoUploadUrl":this.§^!§(),
            "clanServer":this.§6"§(),
            "pvpMainId":this.§;$§()
         };
      }
   }
}

