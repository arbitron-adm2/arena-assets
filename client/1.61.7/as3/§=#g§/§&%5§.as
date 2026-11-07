package §=#g§
{
   import §%"Z§.§9"z§;
   import §%L§.§%%w§;
   import §0%[§.*;
   import §4'§.§`"q§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.user.§4! §;
   
   public class §&%5§
   {
      
      public static const DEFAULT:§&%5§ = new §&%5§(Application.§@#V§,Application.§#"r§);
      
      private var width:int;
      
      private var height:int;
      
      public function §&%5§(param1:int, param2:int)
      {
         super();
         this.width = param1;
         this.height = param2;
      }
      
      public function §@%<§() : int
      {
         return this.width;
      }
      
      public function §'$#§() : int
      {
         return this.height;
      }
      
      public function §[!d§(param1:§&%5§) : Boolean
      {
         return param1.§'$#§() == this.height && param1.§@%<§() == this.width;
      }
      
      public function toString() : String
      {
         return "ScreenResolution{" + "width=" + this.width + ",height=" + this.height + "}";
      }
   }
}

