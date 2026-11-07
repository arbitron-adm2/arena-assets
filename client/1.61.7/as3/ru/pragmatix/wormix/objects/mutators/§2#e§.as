package ru.pragmatix.wormix.objects.mutators
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#5§.*;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§8"j§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#H§.§"j§;
   import §2#i§.§+%z§;
   import §3#T§.AtomBomb;
   import §3%?§.§=E§;
   import §4!!§.§&!^§;
   import §5"J§.*;
   import §5#`§.§7%g§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §=!p§.§&&0§;
   import §="z§.§<$t§;
   import §=$#§.§1!$§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@"s§.§#&3§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§3!=§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterMobilePayment;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §2#e§ implements §[%z§
   {
      
      private const glowFilter:GlowFilter = new GlowFilter(16777215,1,4,4,2,1);
      
      private var § &6§:Vector.<Class> = new Vector.<Class>(0);
      
      private var §;$i§:Vector.<Class> = new Vector.<Class>(0);
      
      private var gobjs:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      private var §6!,§:Array = [];
      
      public function §2#e§()
      {
         super();
         var _loc1_:int = 0;
         var _loc2_:int = int(§+"'§.§2%!§.length);
         while(_loc1_ < _loc2_)
         {
            this.§ &6§.push(§6#A§.getClass(§+"'§.§2%!§[_loc1_]));
            this.§;$i§.push(§6#A§.getClass(§+"'§.§>$0§[_loc1_]));
            _loc1_++;
         }
      }
      
      public function test(param1:§&"T§) : Boolean
      {
         return param1 is §+%]§ || param1 is §+%-§ || param1 is §6#I§ && param1.§#%O§;
      }
      
      public function §0$I§(param1:§&"T§) : void
      {
         this.gobjs.push(param1);
         this.§6!,§.push(null);
      }
      
      public function §-#X§(param1:§&"T§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(this.gobjs.length);
         while(_loc2_ < _loc3_)
         {
            if(this.gobjs[_loc2_] == param1)
            {
               this.gobjs[_loc2_] = null;
               this.gobjs.splice(_loc2_,1);
               if(this.§6!,§[_loc2_])
               {
                  Application.scene.removeChild(this.§6!,§[_loc2_].body);
                  Application.scene.removeChild(this.§6!,§[_loc2_].arrow);
               }
               this.§6!,§[_loc2_] = null;
               this.§6!,§.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      public function activate() : void
      {
         Application.scene.addEventListener(Event.ENTER_FRAME,this.onFrame);
      }
      
      public function deactivate() : void
      {
         Application.scene.removeEventListener(Event.ENTER_FRAME,this.onFrame);
      }
      
      private function onFrame(param1:Event) : void
      {
         this.§-&0§();
      }
      
      private function §8!s§(param1:§&"T§) : Object
      {
         var _loc2_:uint = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         if(param1 is §+%]§)
         {
            _loc2_ = §5%8§.§75§(§+%]§(param1).squad.getNumber()).§ !C§;
            _loc3_ = new this.§ &6§[_loc2_]();
            _loc4_ = new this.§;$i§[_loc2_]();
         }
         else if(param1 is §+%-§)
         {
            _loc3_ = §6#A§.§!&6§(§+"'§.§9#b§);
            _loc4_ = §6#A§.§!&6§(§+"'§.§!"I§);
         }
         else if(param1 is §6#I§)
         {
            _loc3_ = new MovieClip();
            _loc4_ = §6#A§.§!&6§(§+"'§.§7l§);
         }
         _loc3_.filters = [this.glowFilter];
         _loc4_.filters = [this.glowFilter];
         Application.scene.addChild(_loc3_);
         Application.scene.addChild(_loc4_);
         return {
            "body":_loc3_,
            "arrow":_loc4_
         };
      }
      
      private function §-&0§() : void
      {
         var _loc1_:Rectangle = null;
         var _loc2_:int = 0;
         var _loc3_:Rectangle = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc12_:§&"T§ = null;
         var _loc13_:DisplayObject = null;
         var _loc14_:DisplayObject = null;
         var _loc15_:Number = NaN;
         _loc1_ = Application.scene.scrollRect;
         _loc2_ = 30 / Application.scene.scaleX;
         _loc3_ = new Rectangle(_loc1_.x + _loc2_,_loc1_.y + _loc2_,_loc1_.width - _loc2_ * 2,_loc1_.height - _loc2_ * 2);
         _loc4_ = _loc3_.x + _loc3_.width / 2;
         _loc5_ = _loc3_.y + _loc3_.height / 2;
         var _loc6_:Number = Math.atan2(_loc3_.bottomRight.y - _loc5_,_loc3_.bottomRight.x - _loc4_);
         var _loc7_:int = 20 / Application.scene.scaleX;
         var _loc10_:int = 0;
         var _loc11_:int = int(this.gobjs.length);
         while(_loc10_ < _loc11_)
         {
            _loc12_ = this.gobjs[_loc10_];
            if(this.§6!,§[_loc10_] == null)
            {
               this.§6!,§[_loc10_] = this.§8!s§(_loc12_);
            }
            _loc13_ = this.§6!,§[_loc10_].body;
            _loc14_ = this.§6!,§[_loc10_].arrow;
            if(_loc12_.§'%y§ && !this.§[!"§(_loc12_))
            {
               _loc15_ = Math.atan2(_loc12_.y - _loc5_,_loc12_.x - _loc4_);
               if(Math.abs(_loc15_) > _loc6_ && Math.abs(_loc15_) < Math.PI - _loc6_)
               {
                  _loc9_ = §^$y§.sign(_loc15_) * _loc3_.height / 2;
                  _loc8_ = 1 / Math.tan(_loc15_) * _loc9_;
               }
               else
               {
                  _loc8_ = Math.abs(_loc15_) > Math.PI / 2 ? int(-_loc3_.width / 2) : int(_loc3_.width / 2);
                  _loc9_ = Math.tan(_loc15_) * _loc8_;
               }
               _loc8_ += _loc4_;
               _loc9_ += _loc5_;
               _loc13_.visible = true;
               _loc13_.x = _loc8_;
               _loc13_.y = _loc9_;
               _loc13_.scaleX = _loc13_.scaleY = 0.75 / Application.scene.scaleX;
               _loc14_.visible = true;
               _loc14_.x = _loc8_ + _loc7_ * Math.cos(_loc15_);
               _loc14_.y = _loc9_ + _loc7_ * Math.sin(_loc15_);
               _loc14_.scaleX = _loc14_.scaleY = 0.75 / Application.scene.scaleY;
               _loc14_.rotation = _loc15_ * 180 / Math.PI + 180;
            }
            else
            {
               _loc13_.visible = false;
               _loc14_.visible = false;
            }
            _loc10_++;
         }
      }
      
      private function §[!"§(param1:§&"T§) : Boolean
      {
         var _loc2_:Rectangle = Application.scene.scrollRect;
         return param1.x > _loc2_.left && param1.x < _loc2_.right && param1.y > _loc2_.top && param1.y < _loc2_.bottom;
      }
   }
}

