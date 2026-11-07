package §3"_§
{
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §%# §.§@a§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §6%2§.§#"B§;
   import §<%E§.§0#G§;
   import §<%c§.*;
   import §?$7§.§6%k§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[$<§.§;"E§;
   import §]^§.§-$T§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §[!7§
   {
      
      public function §[!7§()
      {
         super();
      }
      
      public static function init(param1:Function, param2:Function) : void
      {
         ExternalInterface.addCallback("onApiInitSuccess",param1);
         ExternalInterface.addCallback("onApiInitFail",param2);
         ExternalInterface.call("initApi");
      }
      
      public static function pay(param1:String, param2:String, param3:String, param4:int, param5:String, param6:String, param7:Function) : void
      {
         ExternalInterface.addCallback("onApiCallback",param7);
         ExternalInterface.call("showPayment",param1,param2,param3,param4,param5,param6,"true");
      }
      
      public static function api(param1:String, param2:Object, param3:Function) : void
      {
      }
   }
}

