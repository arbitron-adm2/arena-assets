package ru.pragmatix.flox.gui.controls
{
   import § !8§.§`!d§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%# §.*;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.MsgBoxSocialSelect;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §2#H§.§"j§;
   import §2#s§.*;
   import §3#a§.§<#_§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §?$L§.§ "N§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §`#x§.§"$r§;
   import config.§;"I§;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.PostClanNewsRequest;
   import ru.pragmatix.wormix.messages.clans.response.PostClanNewsResponse;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §"&H§ extends EventDispatcher implements §7R§
   {
      
      private var §`%m§:Object = {};
      
      public function §"&H§()
      {
         super();
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §6!?§.remove(this.§4#i§(param1),param2);
         super.removeEventListener(param1,param2,param3);
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§4#i§(param1).push(param2);
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function destroy() : void
      {
         var _loc1_:String = null;
         var _loc2_:Function = null;
         for each(_loc1_ in this.§`%m§)
         {
            for each(_loc2_ in this.§`%m§[_loc1_])
            {
               super.removeEventListener(_loc1_,_loc2_);
            }
         }
         this.§`%m§ = {};
      }
      
      private function §4#i§(param1:String) : Array
      {
         if(!this.§`%m§[param1])
         {
            this.§`%m§[param1] = [];
         }
         return this.§`%m§[param1];
      }
   }
}

