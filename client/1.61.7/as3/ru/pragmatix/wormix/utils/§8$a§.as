package ru.pragmatix.wormix.utils
{
   import § "d§.§,!c§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §-%B§.*;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2"L§.*;
   import §3#a§.§-!`§;
   import §7"Q§.§0$L§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.QuitClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   
   public class §8$a§
   {
      
      public function §8$a§()
      {
         super();
      }
      
      public static function §&!#§(param1:IEventDispatcher, param2:String, param3:Function, param4:Boolean = false, param5:int = 0, param6:Boolean = false) : §!#H§
      {
         var _loc7_:§!#H§ = §<!m§();
         _loc7_.add(param1,param2,param3,param4,param5,param6).§&!#§();
         return _loc7_;
      }
      
      public static function §<!m§() : §!#H§
      {
         return new §!#H§();
      }
      
      public static function §%!E§(param1:uint, param2:Function) : void
      {
         var frames:uint = param1;
         var f:Function = param2;
         Application.scene.addEventListener(§0%v§.FRAME,function(param1:Event):void
         {
            if(0 == frames--)
            {
               Application.scene.removeEventListener(§0%v§.FRAME,arguments.callee);
               f();
            }
         });
      }
   }
}

