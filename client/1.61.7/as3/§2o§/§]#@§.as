package §2o§
{
   import §%"Z§.§+$A§;
   import §,"v§.§9%d§;
   import §^"y§.§!n§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.server.GetPromocodeBonusResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.serialization.server.*;
   
   public class §]#@§ extends Event
   {
      
      public static const BUY_ITEM:String = "BUY_ITEM";
      
      public var moneyType:§+$A§;
      
      public var item:§!n§;
      
      public var count:uint;
      
      public function §]#@§(param1:String, param2:§!n§, param3:§+$A§, param4:uint = 0)
      {
         super(param1);
         this.item = param2;
         this.count = param4;
         this.moneyType = param3;
      }
   }
}

