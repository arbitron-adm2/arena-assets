package §!L§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§'$T§;
   import §+&<§.*;
   import §-!U§.*;
   import §-&5§.*;
   import §0%[§.§1%"§;
   import §0%z§.BossAchieveHint;
   import §2#x§.*;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §9%W§.§!"G§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§9#n§;
   import §=&!§.§]$d§;
   import §>"l§.§3!z§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §[!O§.§@&D§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§5$1§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.§28§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.messages.client.ClearName;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §7%0§
   {
      
      private static const §40§:uint = 20 * 1000;
      
      private var §9"s§:Boolean = false;
      
      private var timer:Timer;
      
      public function §7%0§()
      {
         super();
      }
      
      public function §2#X§(param1:Array, param2:Function = null) : void
      {
         this.§%$N§(§4! §.§9%I§(param1,true),param2);
      }
      
      public function §%$N§(param1:Array, param2:Function = null, param3:Boolean = false) : void
      {
         var _loc4_:Array = null;
         var _loc5_:UserProfile = null;
         var _loc6_:String = null;
         if(Boolean(param1) && param1.length > 0)
         {
            if(param3)
            {
               param1 = param1.filter(§4! §.§#d§);
            }
            _loc4_ = [];
            for each(_loc5_ in param1)
            {
               if(_loc5_.getId() > -1)
               {
                  _loc6_ = _loc5_.§"%D§();
                  if(_loc6_)
                  {
                     _loc4_.push(_loc6_);
                  }
               }
            }
            if(_loc4_.length > 0)
            {
               this.timer = new Timer(§40§);
               this.timer.addEventListener(TimerEvent.TIMER,§1%"§.§]$<§(this.§2"Z§,this,[param1,param2]));
               this.timer.start();
               this.§9"s§ = true;
               §8"%§.§[f§.§^!3§(_loc4_,§1%"§.§]$<§(this.§3#0§,this,[param1,param2],true));
            }
            else
            {
               param2([],true);
            }
         }
         else
         {
            param2([],true);
         }
      }
      
      private function §2"Z§(param1:Array, param2:Function) : void
      {
         if(this.§9"s§)
         {
            this.§9"s§ = false;
            this.timer.stop();
            this.timer = null;
            param2(param1,false);
         }
      }
      
      private function §3#0§(param1:§;!y§, param2:Array, param3:Function) : void
      {
         var _loc4_:UserProfile = null;
         if(this.§9"s§)
         {
            this.§9"s§ = false;
            this.timer.stop();
            this.timer = null;
            if(param1.success)
            {
               var _loc5_:int = 0;
               var _loc6_:* = param2;
               for each(_loc5_ in _loc6_)
               {
                  var _temp_1:* = _loc5_;
                  _loc4_ = _loc5_;
                  _loc4_.§8!J§(param1.§'"L§(_loc4_.§"%D§()));
               }
            }
            param3(param2,param1.success);
         }
      }
   }
}

