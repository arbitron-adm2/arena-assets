package ru.pragmatix.wormix.messages.structures
{
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §0%[§.§0%§;
   import §9%W§.§&!P§;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class ShopItemStructure
   {
      
      public static const REAL_MONEY:int = 0;
      
      public static const MONEY:int = 1;
      
      public var id:uint;
      
      public var count:int = 0;
      
      public var moneyType:int;
      
      public function ShopItemStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "ShopItemStructure{id=" + String(this.id) + ",count=" + String(this.count) + ",moneyType=" + String(this.moneyType) + "}";
      }
   }
}

