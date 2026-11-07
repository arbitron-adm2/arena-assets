package ru.pragmatix.wormix.model.items.backpack
{
   import § $q§.§3U§;
   import § &5§.§=#P§;
   import §!$Z§.§6=§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.*;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##j§.§7,§;
   import §#%!§.§7V§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&"R§.§;!t§;
   import §&"c§.§5$n§;
   import §&#W§.§4#T§;
   import §&#h§.§-"F§;
   import §&&6§.*;
   import §&§.§'#$§;
   import §&x§.§8$5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§-$s§;
   import §+%S§.§;!4§;
   import §+%S§.§]&§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-&5§.*;
   import §-@§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§!#H§;
   import §2"L§.§,'§;
   import §2"v§.*;
   import §2#H§.*;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §2#x§.*;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4!!§.§6$V§;
   import §4$b§.*;
   import §4'§.§`"q§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §6%2§.§#"B§;
   import §6_§.*;
   import §7!B§.*;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8#a§.*;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §;!J§.§8!a§;
   import §<"?§.*;
   import §<$2§.§+$9§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §<V§.*;
   import §=!p§.§%#'§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=#y§.*;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§@$&§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §@c§.§ #c§;
   import §]$&§.§2&2§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §^#o§.*;
   import §^4§.§@#J§;
   import §`#x§.§"$r§;
   import §`$T§.*;
   import §`%&§.§5$1§;
   import §`%&§.§8U§;
   import com.greensock.loading.*;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.messages.client.SetBackpackConf;
   import ru.pragmatix.wormix.messages.client.StartTurn;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;#X§ extends §6#Q§
   {
      
      private var §'=§:Object = {};
      
      private var layout:§#$R§;
      
      public function §;#X§(param1:§#$R§ = null)
      {
         super();
         this.layout = param1 != null ? param1 : new §#$R§([]);
      }
      
      public static function §!%9§(param1:§#$R§, param2:§6#Q§) : §;#X§
      {
         var _loc4_:uint = 0;
         var _loc5_:BackpackItem = null;
         var _loc3_:§;#X§ = new §;#X§(param1.clone());
         for each(_loc4_ in param1.getWeapons())
         {
            if(_loc4_ > 0)
            {
               _loc5_ = §1!S§.§@!&§(_loc4_,param2);
               if(_loc5_)
               {
                  _loc3_.§0%8§(§;#_§(_loc5_.getRecord()),_loc5_.getCount(),_loc5_.§]!C§(),_loc5_.getLevel());
               }
            }
         }
         return _loc3_;
      }
      
      public function getOrderedWeapons(param1:Boolean = false) : Vector.<BackpackItem>
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc2_:Vector.<BackpackItem> = new Vector.<BackpackItem>(0);
         var _loc3_:Vector.<uint> = this.layout.getWeapons();
         for each(_loc4_ in _loc3_)
         {
            _loc2_.push(§1!S§.§@!&§(_loc4_,this));
         }
         if(param1)
         {
            for(_loc5_ in this.§'=§)
            {
               _loc2_.push(this.§'=§[_loc5_]);
            }
         }
         return _loc2_;
      }
      
      public function §^%Z§() : Object
      {
         return this.§'=§;
      }
      
      public function §@%N§() : uint
      {
         var _loc2_:BackpackItem = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.§'=§)
         {
            _loc1_++;
         }
         return _loc1_;
      }
      
      public function weaponCount() : uint
      {
         var _loc2_:BackpackItem = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in §9#?§)
         {
            _loc1_++;
         }
         return _loc1_;
      }
      
      public function §8$r§() : Boolean
      {
         return this.§@%N§() < §#$R§.§5$4§;
      }
      
      public function §=!U§(param1:§&!e§, param2:int = -1, param3:uint = 0) : void
      {
         var _loc4_:BackpackItem = null;
         var _loc5_:int = 0;
         if(this.§'=§[param1.getId()])
         {
            _loc4_ = BackpackItem(this.§'=§[param1.getId()]);
            _loc5_ = _loc4_.getCount() + param2;
            _loc4_.setCount(_loc5_ < 0 ? 0 : _loc5_);
         }
         else if(this.§8$r§())
         {
            _loc4_ = new BackpackItem(param1,param2,param3);
            _loc4_.§-&H§ = true;
            this.§'=§[_loc4_.getId()] = _loc4_;
         }
      }
      
      override public function §8&E§(param1:int) : BackpackItem
      {
         var _loc2_:BackpackItem = §9#?§[param1] as BackpackItem;
         if(_loc2_ == null)
         {
            _loc2_ = this.§'=§[param1] as BackpackItem;
         }
         return _loc2_;
      }
      
      override public function §,!V§() : Array
      {
         var _loc2_:BackpackItem = null;
         var _loc1_:Array = super.§,!V§();
         for each(_loc2_ in this.§'=§)
         {
            if(!_loc2_.isEmpty())
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §1#%§(param1:int) : void
      {
         var _loc2_:BackpackItem = this.§8&E§(param1);
         if(_loc2_)
         {
            if(!_loc2_.isInfinite() || _loc2_.§]!C§() > 0)
            {
               _loc2_.§[!e§();
               if(_loc2_.isEmpty())
               {
                  delete this.§'=§[_loc2_.getId()];
               }
            }
         }
      }
      
      public function §08§(param1:int) : void
      {
         var _loc2_:BackpackItem = this.§8&E§(param1);
         if(_loc2_)
         {
            if(!_loc2_.isInfinite() || _loc2_.§]!C§() > 0)
            {
               _loc2_.§%"=§();
            }
         }
         else if(param1 >= §9##§.§;9§)
         {
            this.§=!U§(§<$c§.§ !=§(param1),1);
         }
      }
      
      public function clone() : §;#X§
      {
         return §;#X§.§!%9§(this.layout,this);
      }
      
      public function §3"3§(param1:int) : int
      {
         var _loc2_:BackpackItem = null;
         _loc2_ = this.§8&E§(param1);
         return _loc2_ ? _loc2_.§>L§() : 0;
      }
      
      public function §]$U§(param1:int) : Boolean
      {
         var _loc2_:BackpackItem = this.§8&E§(param1);
         return this.§3"3§(param1) != 0 && !_loc2_.§1!9§ && !_loc2_.isBlocked;
      }
      
      public function §>",§() : void
      {
         var _loc1_:BackpackItem = null;
         for each(_loc1_ in §9#?§)
         {
            _loc1_.§^"B§();
         }
         for each(_loc1_ in this.§'=§)
         {
            _loc1_.§^"B§();
         }
      }
      
      override public function §0%8§(param1:§&!e§, param2:int = -1, param3:uint = 0, param4:uint = 1) : BackpackItem
      {
         var _loc5_:Boolean = §9#?§[param1.getId()] == null;
         var _loc6_:BackpackItem = super.§0%8§(param1,param2,param3,param4);
         if(_loc5_)
         {
            _loc6_.§-?§();
         }
         if(!this.layout.contains(_loc6_.getId()))
         {
            this.layout.push(_loc6_.getId());
         }
         return _loc6_;
      }
      
      public function §4$$§() : void
      {
         var _loc2_:BackpackItem = null;
         var _loc3_:int = 0;
         var _loc1_:Array = [];
         for each(_loc2_ in §9#?§)
         {
            if(_loc2_.getCount() == 0)
            {
               _loc1_.push(_loc2_.getId());
            }
         }
         for each(_loc3_ in _loc1_)
         {
            this.layout.remove(_loc3_);
            delete §9#?§[_loc3_];
         }
      }
      
      public function §"x§(param1:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc12_:String = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:BackpackItem = null;
         var _loc2_:int = 4;
         switch(param1)
         {
            case §#$R§.§"#F§:
               _loc2_ = 1;
               break;
            case §#$R§.§,%h§:
               _loc2_ = 2;
               break;
            case §#$R§.§-%p§:
               _loc2_ = 3;
         }
         var _loc3_:Vector.<BackpackItem> = this.getOrderedWeapons();
         var _loc4_:int = int(§#$R§.§5$4§);
         _loc5_ = int(§#$R§.§><§);
         _loc6_ = Math.min(4 + _loc2_,§#$R§.§5$4§);
         _loc7_ = _loc6_ * _loc5_;
         var _loc8_:uint = _loc7_ * §;#_§.§+Y§.value;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         while(_loc11_ < _loc4_)
         {
            _loc12_ = _loc11_ + " line ";
            _loc13_ = 0;
            while(_loc13_ < _loc5_)
            {
               _loc14_ = _loc13_ + _loc5_ * _loc11_;
               _loc15_ = _loc3_[_loc14_];
               if(_loc15_)
               {
                  _loc9_ += _loc15_.getRecord().§9#p§();
                  if(_loc9_ > _loc8_)
                  {
                     _loc10_++;
                     this.layout.remove(_loc15_.getId());
                     delete §9#?§[_loc15_.getId()];
                     _loc12_ += _loc14_ + "b, ";
                  }
                  else
                  {
                     _loc12_ += _loc14_ + ", ";
                  }
               }
               else
               {
                  _loc12_ += _loc14_ + "-, ";
               }
               _loc13_++;
            }
            _loc11_++;
         }
      }
   }
}

