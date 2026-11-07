package ru.pragmatix.wormix.objects.mutators
{
   import § !P§.*;
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §,"v§.§9%d§;
   import §,#_§.§%!_§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1&-§.§4!s§;
   import §2"L§.§,'§;
   import §2#H§.§3$p§;
   import §2#i§.§+%z§;
   import §4!K§.§4%E§;
   import §4!K§.§>#_§;
   import §4!K§.§^%A§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§9#x§;
   import §8$V§.*;
   import §9&+§.§>&5§;
   import §<!W§.§4!I§;
   import §<!W§.§;!`§;
   import §<%E§.§;!y§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §?>§.§]!V§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §^#%§ implements §[%z§
   {
      
      private var frames:uint = 0;
      
      private var §;#1§:Array = [];
      
      public function §^#%§()
      {
         super();
      }
      
      private static function §'"'§() : uint
      {
         return 120 + int(Math.random() * 200);
      }
      
      private static function §`#h§(param1:§+%]§) : MovieClip
      {
         return param1.graphics.§ $D§();
      }
      
      private static function §<%%§(param1:§+%]§) : MovieClip
      {
         return param1.graphics.§[!4§();
      }
      
      public function test(param1:§&"T§) : Boolean
      {
         return param1 is §+%]§;
      }
      
      public function §0$I§(param1:§&"T§) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§;#1§)
         {
            if(_loc2_.unit == param1)
            {
               return;
            }
         }
         this.§;#1§.push({
            "unit":param1,
            "last":0,
            "next":this.frames + §'"'§(),
            "stop":false
         });
      }
      
      public function §-#X§(param1:§&"T§) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;#1§.length)
         {
            if(this.§;#1§[_loc2_].unit == param1)
            {
               break;
            }
            _loc2_++;
         }
         this.§;#1§[_loc2_] = null;
         this.§;#1§.splice(_loc2_,1);
      }
      
      public function activate() : void
      {
         Application.scene.addEventListener(Event.ENTER_FRAME,this.§;%%§);
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      public function deactivate() : void
      {
         Application.scene.removeEventListener(Event.ENTER_FRAME,this.§;%%§);
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      public function stop(param1:§&"T§, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in this.§;#1§)
         {
            if(_loc3_.unit == param1)
            {
               _loc3_.stop = param2;
            }
         }
      }
      
      private function onFrame(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(!§8"%§.§&S§.§;#G§())
         {
            return;
         }
         ++this.frames;
         for each(_loc2_ in this.§;#1§)
         {
            if(!_loc2_.stop && this.frames >= _loc2_.next)
            {
               this.§"!f§(_loc2_,§`#h§);
            }
         }
      }
      
      private function §"!f§(param1:Object, param2:Function) : Boolean
      {
         var _loc4_:§+%]§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:uint = 0;
         var _loc7_:MovieClip = null;
         var _loc3_:Boolean = false;
         if(§8"%§.§?!W§.§4"m§)
         {
            _loc4_ = §+%]§(param1.unit);
            _loc5_ = _loc4_ != §8"%§.§?!W§.§4"m§.activeUnit && !_loc4_.disposed && _loc4_.stable && _loc4_.crawling == 0 && _loc4_.graphics.§`"z§();
            _loc6_ = 0;
            if(_loc5_)
            {
               _loc7_ = param2(_loc4_);
               _loc6_ = _loc7_ ? uint(_loc7_.totalFrames) : §'"'§();
               if(_loc4_.weapon)
               {
                  _loc4_.graphics.hideHands(_loc4_.weapon.§8"X§().§]%W§());
               }
               else
               {
                  _loc4_.graphics.§34§();
               }
               this.§5Z§(_loc4_,_loc6_);
               param1.last = this.frames;
               _loc3_ = true;
            }
            param1.next = this.frames + _loc6_ + §'"'§();
         }
         return _loc3_;
      }
      
      private function §;%%§(param1:Event) : void
      {
         var lcPoint:Point;
         var rec:Object = null;
         var unit:§+%]§ = null;
         var isCursorAboveUnit:Boolean = false;
         var canPlayClapClip:Boolean = false;
         var thatUnit:§+%]§ = null;
         var e:Event = param1;
         if(!§8"%§.§&S§.§;#G§())
         {
            return;
         }
         lcPoint = new Point(Application.scene.mouseX,Application.scene.mouseY);
         for each(rec in this.§;#1§)
         {
            unit = §+%]§(rec.unit);
            isCursorAboveUnit = Math.abs(unit.x - lcPoint.x) < 20 && Math.abs(unit.y - lcPoint.y - 50) < 20 && !§>#9§.point(lcPoint.x,lcPoint.y);
            canPlayClapClip = isCursorAboveUnit && !unit.isImmobile();
            if(canPlayClapClip && this.§"!f§(rec,§<%%§))
            {
               thatUnit = unit;
               thatUnit.getBar().§]%d§();
               §8$a§.§%!E§(20,function():void
               {
                  if(Boolean(thatUnit && !thatUnit.disposed) && Boolean(§8"%§.§?!W§.§4"m§) && thatUnit != §8"%§.§?!W§.§4"m§.activeUnit)
                  {
                     thatUnit.getBar().§>$T§();
                  }
               });
            }
         }
      }
      
      private function §5Z§(param1:§+%]§, param2:uint) : void
      {
         var unit:§+%]§ = param1;
         var delay:uint = param2;
         var nft:§%!_§ = new §%!_§(delay,1);
         nft.addEventListener(FrameTimerEvent.§;$>§,function(param1:Event):void
         {
            if(!unit.disposed && unit.stable)
            {
               unit.§2!W§();
            }
         });
         nft.start();
      }
   }
}

