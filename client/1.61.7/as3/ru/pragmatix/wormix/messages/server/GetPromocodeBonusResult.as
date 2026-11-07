package ru.pragmatix.wormix.messages.server
{
   import §"%H§.§'%u§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §,"v§.§9%d§;
   import §-I§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4!K§.§^%A§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §?$7§.§6J§;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class GetPromocodeBonusResult
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 3;
      
      public static const INVALID_AWARD_TYPE_ERROR:int = 5;
      
      public static const EMPTY_AWARD_ERROR:int = 6;
      
      public var result:uint;
      
      public var awards:Array;
      
      public function GetPromocodeBonusResult()
      {
         super();
      }
      
      public function toString() : String
      {
         return "GetPromocodeBonusResult{" + "result=" + this.result + ",awards=" + this.awards + "}";
      }
   }
}

