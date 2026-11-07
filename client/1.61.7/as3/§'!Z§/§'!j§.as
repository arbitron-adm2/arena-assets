package §'!Z§
{
   import § !8§.§9%+§;
   import § &5§.§%$O§;
   import §!K§.§"%$§;
   import §"$+§.§`&$§;
   import §#%!§.§[N§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2#i§.§+%z§;
   import §3#T§.*;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.§!"X§;
   import §?#g§.*;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.gui.MainInterface;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §'!j§
   {
      
      private static var timer:Timer;
      
      private static var §9$N§:int;
      
      private static var §+"-§:int;
      
      private static var §#"b§:int;
      
      private static const §?%`§:§&$2§ = new §&$2§(100);
      
      public function §'!j§()
      {
         super();
      }
      
      public static function go(param1:int = 10, param2:Boolean = false, param3:Number = 0.1) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Vector.<§+%]§> = null;
         var _loc7_:§+%]§ = null;
         if(timer)
         {
            §<#W§();
         }
         if(§8"%§.§&S§.§%$P§())
         {
            §9$N§ = Application.scene.scrollRect.x;
            §+"-§ = Application.scene.scrollRect.y;
            §#"b§ = param1 / 2;
            _loc4_ = int(1000 / §?%`§.value);
            _loc5_ = int(param3 * 1000 / _loc4_);
            timer = new Timer(_loc4_,_loc5_);
            timer.addEventListener(TimerEvent.TIMER,§0!E§);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE,§#"0§);
            timer.start();
         }
         if(param2)
         {
            _loc6_ = §8"%§.§?!W§.§4"m§.§5#h§();
            for each(_loc7_ in _loc6_)
            {
               if(_loc7_.stable)
               {
                  _loc7_.rotateUntilStable();
                  _loc7_.§5!?§(§8"%§.randomSeed.§,!q§(-3,3),-param1 / 10);
               }
            }
         }
      }
      
      private static function §0!E§(param1:TimerEvent) : void
      {
         var _loc2_:int = §9$N§ + Math.random() * §#"b§ * 4 - §#"b§ * 2;
         var _loc3_:int = §+"-§ + Math.random() * §#"b§ * 4 - §#"b§ * 2;
         §@#D§(_loc2_,_loc3_);
      }
      
      private static function §#"0§(param1:TimerEvent = null) : void
      {
         §@#D§(§9$N§,§+"-§);
         §<#W§();
      }
      
      private static function §@#D§(param1:int, param2:int) : void
      {
         if(Application.scene)
         {
            §%$O§.cameraMoveTo(Application.scene,param1,param2);
         }
         else
         {
            §<#W§();
         }
      }
      
      private static function §<#W§() : void
      {
         if(timer)
         {
            timer.removeEventListener(TimerEvent.TIMER,§0!E§);
            timer.removeEventListener(TimerEvent.TIMER_COMPLETE,§#"0§);
            timer.stop();
            timer = null;
         }
      }
   }
}

