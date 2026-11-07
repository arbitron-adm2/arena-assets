package §2!-§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §%"1§.§=#?§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §=$#§.§1!$§;
   import §>%S§.§^!V§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.GetJoinClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.response.GetJoinClansMainResponse;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §'5§ extends Event
   {
      
      public var params:§!!q§;
      
      public function §'5§(param1:§!!q§, param2:String = "trigger_crosshair", param3:Boolean = false, param4:Boolean = false)
      {
         super(param2,param3,param4);
         this.params = param1;
      }
      
      override public function clone() : Event
      {
         return new §'5§(this.params,type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("CollisionEvent","type","bubbles","cancelable","eventPhase","params");
      }
   }
}

