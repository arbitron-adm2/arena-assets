package §2#H§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "I§.§,!D§;
   import § "L§.§`#r§;
   import § #m§.§;#^§;
   import § $q§.§<"]§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%&3§.§'C§;
   import §&"R§.*;
   import §'!Z§.§1"-§;
   import §+$=§.*;
   import §+%S§.§+m§;
   import §,#_§.FrameTimer;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2!-§.SupplyPickedUpEvent;
   import §3#a§.§-#M§;
   import §4!!§.§#Z§;
   import §4#`§.*;
   import §4$b§.§2m§;
   import §4'§.§^"p§;
   import §4u§.§!$F§;
   import §4u§.§;$H§;
   import §4u§.§^%>§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!b§.*;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#a§.§>!o§;
   import §;#O§.§+%7§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §=#g§.*;
   import §?#g§.§&"P§;
   import §?$7§.§6%k§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@"x§.CommonSettingsMenu;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import config.§9+§;
   import config.achievements.§"!&§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§]V§;
   
   use namespace gestouch_internal;
   
   public class §=#[§ extends §%%o§
   {
      
      public static const NAME:String = "POLARITY";
      
      private static const §2";§:String = "minus";
      
      private static const §=#M§:String = "plus";
      
      private static const DAMAGE:uint = 180;
      
      private var §`$I§:MovieClip;
      
      private var §@$S§:MovieClip;
      
      private var §#"A§:String;
      
      public function §=#[§()
      {
         super(NAME,-1);
      }
      
      override protected function §5#F§() : void
      {
         this.§`$I§ = §6#A§.§!&6§("PolaritySignMC");
         unit.graphics.§5$#§(§2m§.§-w§,this.§`$I§);
         this.§]$"§(unit);
         Application.scene.addEventListener(§0%v§.EOT,this.§8%^§);
      }
      
      override protected function §0&"§() : void
      {
         if(!§&%M§)
         {
            Application.scene.removeEventListener(§0%v§.EOT,this.§8%^§);
            if(this.§`$I§)
            {
               this.§@$S§ = this.§`$I§.getChildAt(0) as MovieClip;
               this.§@$S§.gotoAndPlay("disaperring");
               this.§@$S§.addEventListener(Event.ENTER_FRAME,this.§+!9§);
            }
         }
      }
      
      private function §+!9§(param1:Event) : void
      {
         if(this.§@$S§.currentFrame == this.§@$S§.totalFrames)
         {
            this.§@$S§.removeEventListener(Event.ENTER_FRAME,this.§+!9§);
            this.§@$S§.gotoAndStop(0);
            if(Boolean(unit) && Boolean(unit.graphics))
            {
               unit.graphics.detachClip(this.§`$I§,§2m§.§-w§);
               this.§<%C§();
            }
            this.§`$I§ = null;
            this.§@$S§ = null;
         }
      }
      
      private function §8%^§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:§+%]§ = null;
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:§+%]§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:§=#[§ = null;
         if(§8"%§.§?!W§.§4"m§.activeUnit == unit)
         {
            _loc2_ = Number.MAX_VALUE;
            _loc4_ = Application.scene.§@$I§.§;%a§.§1!n§();
            for each(_loc5_ in _loc4_)
            {
               if(!_loc5_.disposed && _loc5_ != unit && _loc5_.buffs.hasBuff(NAME))
               {
                  _loc6_ = §-q§.distance(unit.x,unit.y,_loc5_.x,_loc5_.y);
                  if(_loc6_ < _loc2_)
                  {
                     _loc2_ = _loc6_;
                     _loc3_ = _loc5_;
                  }
               }
            }
            if(_loc3_)
            {
               §1"-§.§,%F§(_loc3_,unit.x,unit.y,24,8,16711680,12);
               var _temp_5:* = §=#[§(_loc3_.buffs.getBuff(NAME));
               _loc7_ = §=#[§(_loc3_.buffs.getBuff(NAME));
               if(_loc7_.§#"A§ != this.§#"A§)
               {
                  this.§<$$§(_loc3_);
                  this.§<$$§(unit);
               }
               this.§]$"§(_loc3_);
               this.§]$"§(unit);
            }
         }
      }
      
      private function §<$$§(param1:§+%]§) : void
      {
         if(!param1.squad.isAi())
         {
            §-#M§.§<$$§(param1.x - param1.direction * §<H§.§@% §,param1.y - §<H§.§-#C§,param1,DAMAGE,16);
         }
      }
      
      public function §]$"§(param1:§+%]§) : void
      {
         var _loc2_:§=#[§ = §=#[§(param1.buffs.getBuff(NAME));
         _loc2_.§#"A§ = §8"%§.randomSeed.§,!q§(0,1) == 0 ? §2";§ : §=#M§;
         _loc2_.§`$I§.gotoAndStop(_loc2_.§#"A§);
         _loc2_.§<%C§();
         _loc2_.§[@§();
      }
      
      private function §[@§() : void
      {
         if(this.§#"A§ == §2";§)
         {
            unit.graphics.§&$=§("BlueAura",true);
         }
         else
         {
            unit.graphics.§&$=§("RedAura",true);
         }
      }
      
      private function §<%C§() : void
      {
         unit.graphics.§<%C§("BlueAura");
         unit.graphics.§<%C§("RedAura");
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §=#[§());
      }
   }
}

