package §`%&§
{
   import § "L§.*;
   import § #m§.§2#P§;
   import § #m§.§;#^§;
   import §%&6§.§=!l§;
   import §%L§.§%%w§;
   import §%Q§.§<&A§;
   import §-@§.§0"e§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^4§.§@#J§;
   import §^4§.§]"8§;
   import §^4§.§^"Y§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.HomingMinigun;
   import ru.pragmatix.wormix.weapons.Kalash;
   import ru.pragmatix.wormix.weapons.Minigun;
   import ru.pragmatix.wormix.weapons.Rifle;
   import ru.pragmatix.wormix.weapons.SniperRifle;
   import ru.pragmatix.wormix.weapons.Uzi;
   
   public class § !j§ extends §6#"§
   {
      
      private static const §""A§:Array = [§=!l§];
      
      public function § !j§(param1:uint, param2:uint, param3:uint)
      {
         super(param1,param2,param3);
      }
      
      override public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc6_:§=!l§ = null;
         var _loc5_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§(§""A§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_.owner.squad.getTeamId() == param1.squad.getTeamId())
            {
               return null;
            }
         }
         return super.test(param1,param2,param3,param4);
      }
   }
}

