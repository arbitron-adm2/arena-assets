package ru.pragmatix.wormix.game
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#E§.MsgBoxSocialSelect;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§[&$§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §+%S§.§;!4§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#0§.§;!L§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §4$b§.§2m§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.*;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$Z§.§9!&§;
   import §9%W§.§!7§;
   import §;#O§.§+%7§;
   import §<!W§.§!"+§;
   import §<$q§.§,%3§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=$#§.§`%u§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?>§.§4#o§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@"x§.BattleSettingsMenu;
   import §@<§.§+%]§;
   import §[" §.§^"c§;
   import §[%§.Dragon;
   import §]#[§.§2%o§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§8U§;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §;$]§
   {
      
      public static const §<$i§:Boolean = true;
      
      public static const §9!Y§:Boolean = true;
      
      public static const §2"§:§&$2§ = new §&$2§(1100);
      
      private static const §8!5§:§&$2§ = new §&$2§(100);
      
      private var §;R§:Timer;
      
      private var §8$E§:§&$2§ = new §&$2§(0);
      
      private var §<%q§:§?"&§ = new §?"&§(false);
      
      private var §>u§:Boolean;
      
      private var display:§^"c§;
      
      private var settings:§,%3§;
      
      private var onComplete:Function;
      
      private var §^%R§:Number;
      
      private var §-"4§:§&$2§;
      
      public function §;$]§(param1:§^"c§, param2:§,%3§)
      {
         super();
         this.display = param1;
         this.settings = param2;
         this.§-"4§ = new §&$2§(param2.totalTime);
      }
      
      public function start(param1:Function) : void
      {
         var _loc2_:uint = 0;
         if(this.§-"4§.value != 0)
         {
            this.stop(false);
            if(this.display)
            {
               this.display.show(this.§-"4§.value);
            }
            this.onComplete = param1;
            _loc2_ = uint(§2"§.value / §8!5§.value);
            this.§8$E§.value = this.§-"4§.value * §2"§.value;
            this.§;R§ = new Timer(§8!5§.value,this.§-"4§.value * _loc2_);
            this.§;R§.addEventListener(TimerEvent.TIMER,this.onTimer);
            this.§;R§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§,!>§);
            this.§^%R§ = new Date().getTime();
            this.§<%q§.value = false;
            this.§;R§.start();
         }
      }
      
      public function pause() : void
      {
         if(!§8"%§.§?!W§.§4"m§.§=$S§().online || !this.display)
         {
            if(Boolean(this.§;R§) && !this.§<%q§.value)
            {
               this.§;R§.stop();
               this.§<%q§.value = true;
            }
         }
      }
      
      public function resume() : void
      {
         if(!§8"%§.§?!W§.§4"m§.§=$S§().online)
         {
            if(Boolean(this.§;R§) && this.§<%q§.value)
            {
               this.§^%R§ = new Date().getTime();
               this.§;R§.start();
               this.§<%q§.value = false;
            }
         }
      }
      
      public function stop(param1:Boolean = true) : void
      {
         if(param1 && Boolean(this.display))
         {
            this.display.hide();
         }
         if(this.§;R§)
         {
            if(this.§;R§.running)
            {
               this.§;R§.stop();
            }
            this.§;R§ = null;
            this.onComplete = null;
         }
      }
      
      public function §^h§(param1:uint) : void
      {
         if(this.§;R§ == null)
         {
            return;
         }
         var _loc2_:int = this.§-"4§.value * §2"§.value - int(param1);
         this.§8$E§.value = Math.max(0,_loc2_);
         if(this.§8$E§.value == 0)
         {
            this.§,!>§();
         }
      }
      
      public function §&%$§() : void
      {
         if(Boolean(this.§;R§) && !this.§<%q§.value)
         {
            this.§;R§.stop();
            this.§<%q§.value = true;
         }
      }
      
      public function § $2§() : void
      {
         if(Boolean(this.§;R§) && this.§<%q§.value)
         {
            this.§^%R§ = new Date().getTime();
            this.§;R§.start();
            this.§<%q§.value = false;
         }
      }
      
      public function §1$c§(param1:int) : void
      {
         if(this.settings.§<Y§ > 0 && param1 >= this.settings.§<Y§ && (param1 - this.settings.§<Y§) % this.settings.§8#'§ == 0 && this.§-"4§.value > this.settings.§8!$§)
         {
            this.§-"4§.value = Math.max(this.settings.§8!$§,this.§-"4§.value - this.settings.reduceAmount);
         }
      }
      
      private function onTimer(param1:Event) : void
      {
         var _loc2_:Number = 0.9;
         var _loc3_:Number = new Date().getTime();
         var _loc4_:int = int(_loc3_ - this.§^%R§);
         if(_loc4_ < §8!5§.value * _loc2_)
         {
            _loc4_ = §8!5§.value;
         }
         this.§^%R§ = _loc3_;
         this.§8$E§.value -= _loc4_;
         var _loc5_:uint = uint(Math.round(this.§8$E§.value / §2"§.value));
         if(_loc5_ < 1)
         {
         }
         if(this.§8$E§.value < 0)
         {
            this.§8$E§.value = 0;
            this.§,!>§();
         }
         if(Boolean(this.display) && _loc5_ != this.display.getTime())
         {
            if(§<$i§)
            {
               §#!Z§.fire(§#!Z§.§"#c§,_loc5_);
            }
            this.display.setTime(_loc5_);
            if(this.display.getTime() <= 5)
            {
               §`!v§.§[!o§(§`!v§.§^%§);
            }
         }
      }
      
      public function §,!>§(param1:Event = null) : void
      {
         var _loc2_:Function = this.onComplete;
         this.stop();
         §#!Z§.fire(§#!Z§.§>#<§);
         if(_loc2_ != null)
         {
            _loc2_();
         }
      }
      
      public function get isStopped() : Boolean
      {
         return !this.§;R§ || !this.§;R§.running;
      }
      
      public function §"%J§(param1:int) : void
      {
         var _loc2_:uint = 5 * §2"§.value;
         if(this.§8$E§.value > _loc2_)
         {
            this.§8$E§.value = Math.max(this.§8$E§.value - param1 * §2"§.value,_loc2_);
         }
      }
      
      public function get timer() : Timer
      {
         return this.§;R§;
      }
      
      public function get §6"v§() : §&$2§
      {
         return this.§8$E§;
      }
      
      public function get paused() : §?"&§
      {
         return this.§<%q§;
      }
      
      public function get §9"c§() : Boolean
      {
         return this.§>u§;
      }
      
      public function set §9"c§(param1:Boolean) : void
      {
         this.§>u§ = param1;
      }
   }
}

