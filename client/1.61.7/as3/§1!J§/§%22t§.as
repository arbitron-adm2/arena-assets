package §1!J§
{
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §4'§.§`"q§;
   import §<"L§.*;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §@$§.§`&C§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §"t§
   {
      
      private static var §""b§:Vector.<String> = new Vector.<String>(0);
      
      public function §"t§()
      {
         super();
      }
      
      public static function §+%R§(param1:Vector.<§@#%§>, param2:Function, param3:Function) : void
      {
         var _loc4_:Vector.<String> = §0p§(param1);
         if(_loc4_.length > 0)
         {
            §[&G§.§5%b§(§0$N§.BOSS_RESOURCES_LOAD);
            §6#A§.§'$q§(_loc4_,§1%"§.§]$<§(§=#R§,null,[_loc4_,param2]),param3);
         }
         else
         {
            param2();
         }
      }
      
      private static function §=#R§(param1:Vector.<String>, param2:Function) : void
      {
         §""b§ = §""b§.concat(param1);
         param2();
      }
      
      private static function §0p§(param1:Vector.<§@#%§>) : Vector.<String>
      {
         var _loc3_:§@#%§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         for each(_loc3_ in param1)
         {
            if(§""b§.indexOf(_loc3_.§2$k§) == -1)
            {
               _loc2_.push(_loc3_.§2$k§);
            }
         }
         return _loc2_;
      }
   }
}

