package ru.pragmatix.wormix.objects.mutators
{
   import § &5§.§0&$§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%#u§.§@"c§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+&<§.§@$L§;
   import §+&<§.§]%P§;
   import §+&<§.§^@§;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2B§.§^%y§;
   import §3"_§.*;
   import §3#a§.§[&A§;
   import §4!x§.§@& §;
   import §4#`§.§3!H§;
   import §4#`§.§]%M§;
   import §4&F§.*;
   import §4^§.§'!u§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!-§.MD5;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<K§.RatingTabClan;
   import §=#g§.*;
   import §?"[§.*;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §@!N§.*;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@$§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[" §.§4#@§;
   import §]#[§.*;
   import §]$v§.§+%n§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^§.*;
   import §`#x§.§"$r§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.interfaces.§;$'§;
   
   public class §'"<§ implements §[%z§
   {
      
      public static const §8!@§:uint = 0;
      
      public static const §7%e§:uint = 1;
      
      public static const §6$F§:uint = 2;
      
      private var §6"J§:uint = 0;
      
      private var §9;§:int = 0;
      
      private var gobjs:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      private var §8#2§:Vector.<§4#@§> = new Vector.<§4#@§>(0);
      
      private var §9&6§:§]%M§;
      
      private var §3T§:§3!H§;
      
      public function §'"<§()
      {
         super();
      }
      
      public function test(param1:§&"T§) : Boolean
      {
         return param1 is §^%c§;
      }
      
      public function §0$I§(param1:§&"T§) : void
      {
         this.gobjs.push(param1);
      }
      
      public function §-#X§(param1:§&"T§) : void
      {
         var _loc2_:int = this.gobjs.indexOf(param1);
         Application.scene.removeChild(this.§8#2§[_loc2_].getContainer());
         this.gobjs.splice(_loc2_,1);
         this.§8#2§.splice(_loc2_,1);
         if(Boolean(this.§9&6§) && !this.gobjs.length)
         {
            this.§9&6§.setVisible(false);
         }
         if(Boolean(this.§3T§) && !this.gobjs.length)
         {
            this.§3T§.setVisible(false);
         }
      }
      
      public function activate() : void
      {
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      public function deactivate() : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      private function §9"_§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:§&"T§ = null;
         var _loc4_:§%&F§ = null;
         var _loc5_:§9"u§ = null;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:§4#@§ = null;
         if(this.gobjs.length > this.§8#2§.length)
         {
            _loc1_ = int(this.§8#2§.length);
            _loc2_ = int(this.gobjs.length);
            while(_loc1_ < _loc2_)
            {
               _loc3_ = this.gobjs[_loc1_];
               _loc4_ = §^%c§(_loc3_).getBar();
               _loc5_ = §&"T§(_loc3_).attributes;
               _loc6_ = (Boolean(_loc5_)) && Boolean(_loc5_.hp) ? _loc5_.hp.value : int(NaN);
               _loc7_ = _loc3_ is §;$'§;
               _loc8_ = _loc7_ ? " " : _loc4_.§%#8§();
               _loc9_ = _loc7_ ? _loc4_.§%#8§() : "";
               _loc10_ = new §4#@§(_loc8_,_loc6_,_loc9_,_loc4_.§3"H§());
               if(this.§9;§ == §7%e§)
               {
                  _loc10_.§-"i§();
               }
               else if(this.§9;§ == §6$F§)
               {
                  _loc10_.setVisible(false);
               }
               this.§8#2§[this.§8#2§.length] = _loc10_;
               Application.scene.addChild(_loc10_.getContainer());
               _loc1_++;
            }
         }
         if(!this.§9&6§)
         {
            this.§9&6§ = new §]%M§();
         }
         if(!this.§3T§)
         {
            this.§3T§ = new §3!H§();
         }
         Application.scene.addChild(this.§9&6§.getContainer());
         Application.scene.addChild(this.§3T§.getContainer());
         this.§9&6§.setVisible(false);
         this.§3T§.setVisible(false);
      }
      
      private function onFrame(param1:Event) : void
      {
         var _loc2_:§4#@§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§&"T§ = null;
         var _loc6_:§%&F§ = null;
         if(Boolean(Application.scene) && this.gobjs.length > 0)
         {
            this.§9"_§();
            if(this.§9;§ != this.§6"J§)
            {
               for each(_loc2_ in this.§8#2§)
               {
                  if(this.§9;§ == §6$F§)
                  {
                     _loc2_.setVisible(true);
                  }
                  switch(this.§6"J§)
                  {
                     case §8!@§:
                        _loc2_.§]!8§();
                        break;
                     case §7%e§:
                        _loc2_.§-"i§();
                        break;
                     case §6$F§:
                        _loc2_.setVisible(false);
                  }
               }
               this.§9;§ = this.§6"J§;
            }
            _loc3_ = 0;
            _loc4_ = int(this.§8#2§.length);
            while(_loc3_ < _loc4_)
            {
               _loc5_ = this.gobjs[_loc3_];
               if(!_loc5_.disposed)
               {
                  _loc2_ = §4#@§(this.§8#2§[_loc3_]);
                  _loc6_ = §^%c§(_loc5_).getBar();
                  if(_loc2_.isVisible() && _loc6_.§""+§())
                  {
                     _loc2_.setVisible(false);
                  }
                  if(!_loc2_.isVisible() && this.§9;§ != §6$F§ && !_loc6_.§""+§())
                  {
                     _loc2_.setVisible(true);
                  }
                  if(_loc5_ is §;$'§)
                  {
                     _loc2_.setDuration(_loc6_.§%#8§());
                  }
                  else
                  {
                     _loc2_.§2!z§(_loc5_.attributes ? _loc5_.attributes.hp.value : 0);
                     _loc2_.§ %0§(_loc6_.§%#8§());
                  }
                  _loc2_.x = _loc5_.x - _loc2_.width * 0.5 - _loc6_.§<"l§();
                  _loc2_.y = _loc5_.y - _loc2_.height - _loc6_.§ "§();
                  if(_loc5_.physParams.§`!o§)
                  {
                     this.§9&6§.update(_loc5_.physParams.§ %A§);
                     this.§9&6§.x = _loc2_.x + (_loc2_.width - this.§9&6§.width) * 0.5;
                     this.§9&6§.y = _loc2_.y + _loc2_.height * 0.5 - this.§9&6§.height - (_loc6_.§""+§() ? 0 : _loc2_.height * 0.5 + 5);
                  }
                  if(_loc5_ is §+%]§ && §8"%§.§?!W§.§4"m§.activeUnit == _loc5_)
                  {
                     this.§3T§.update(§+%]§(_loc5_));
                     this.§3T§.x = _loc2_.x + (_loc2_.width - this.§3T§.width) * 0.5;
                     this.§3T§.y = _loc2_.y + _loc2_.height * 0.5 - this.§3T§.height - (_loc6_.§""+§() ? 0 : _loc2_.height * 0.5 + 5) - (this.§9&6§.isVisible() ? this.§9&6§.height + 5 : 0);
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function §##m§() : uint
      {
         return this.§6"J§;
      }
      
      public function setState(param1:uint) : void
      {
         this.§6"J§ = param1;
      }
   }
}

