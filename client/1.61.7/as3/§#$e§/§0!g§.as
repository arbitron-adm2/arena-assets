package §#$e§
{
   import § &5§.§0&$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §,"v§.§9%d§;
   import §2#i§.§9##§;
   import §5#`§.§7%g§;
   import §6#Z§.§&!Z§;
   import §6_§.§&$6§;
   import §7!B§.§&"T§;
   import §<%E§.§=$u§;
   import §=!p§.§8#x§;
   import §=&!§.§4$z§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §`#x§.§"$r§;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §0!g§
   {
      
      public function §0!g§()
      {
         super();
      }
      
      public static function api(param1:String, param2:Object, param3:String, param4:Function) : void
      {
         ExternalInterface.call("callAPI",param1,param2,param3);
         ExternalInterface.addCallback("onCallAPICallback",param4);
      }
      
      public static function ui(param1:Object, param2:Function) : void
      {
         ExternalInterface.call("callUI",param1);
         ExternalInterface.addCallback("onCallUICallback",param2);
      }
      
      public static function login(param1:Object, param2:Function) : void
      {
         ExternalInterface.call("callLogin",param1);
         ExternalInterface.addCallback("onCallLoginCallback",param2);
      }
   }
}

