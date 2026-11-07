package ru.pragmatix.flox.social.controller
{
   import § !P§.§]z§;
   import §!$D§.§2$^§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §0%[§.§0%§;
   import §2#V§.§-#U§;
   import §4#`§.BattleInterface;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §8#a§.§>!o§;
   import §<%k§.§`!v§;
   import §?"[§.*;
   import §`#x§.*;
   import §`v§.§2&H§;
   import config.achievements.§"!&§;
   import config.achievements.§^t§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §?$6§
   {
      
      public function §?$6§()
      {
         super();
      }
      
      public static function §1%&§(param1:String, param2:String = "") : void
      {
         ExternalInterface.call("consoleOutput",param1,param2);
      }
      
      public static function §^"s§(param1:Object, param2:String = "", param3:String = " ") : void
      {
         var _loc4_:String = null;
         if(param1 is String)
         {
            §1%&§(param3 + String(param1),param2);
         }
         else
         {
            for(_loc4_ in param1)
            {
               §1%&§(param3 + _loc4_ + " " + param1[_loc4_],param2);
               if(param1[_loc4_] is Object)
               {
                  §^"s§("." + param3 + param1[_loc4_],param2);
               }
            }
         }
      }
   }
}

