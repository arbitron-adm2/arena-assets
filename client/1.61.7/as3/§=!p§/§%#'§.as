package §=!p§
{
   import § $q§.§-%f§;
   import §,"v§.§9%d§;
   import §2#x§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §<%E§.§,$2§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §`#x§.§"$r§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §%#'§
   {
      
      public static const CREATE:String = "create";
      
      public static const §,!A§:String = "resume";
      
      public static const CANCEL:String = "cancel";
      
      public var code:uint;
      
      public var price:Number;
      
      public var name:String;
      
      public var icon:String;
      
      public var descr:String;
      
      public var action:String;
      
      public var item:String;
      
      public var subscriptionId:int;
      
      public function §%#'§(param1:uint, param2:Number, param3:String = null, param4:String = null, param5:String = null, param6:int = 0, param7:String = null)
      {
         super();
         this.code = param1;
         this.price = param2;
         this.name = param3;
         this.icon = param7;
         this.action = param4;
         this.item = param5;
         this.subscriptionId = param6;
      }
      
      public function toString() : String
      {
         return "SubscribtionOption:{" + " price=" + this.price + " code=" + this.code + " name=" + this.name + " icon=" + this.icon + " descr=" + this.descr + " action=" + this.action + " item=" + this.item + " subscriptionId=" + this.subscriptionId + " }";
      }
   }
}

