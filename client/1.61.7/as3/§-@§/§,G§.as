package §-@§
{
   import § !8§.§`!d§;
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'"N§.*;
   import §'$j§.§'-§;
   import §+$=§.*;
   import §+%S§.§2$#§;
   import §+%S§.§["4§;
   import §,"v§.§9%d§;
   import §,&+§.§=#x§;
   import §-&5§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §1#p§.§2=§;
   import §2!-§.§'5§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3#a§.§<#_§;
   import §6",§.§[%w§;
   import §6%2§.§'"Y§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §<%E§.§;!y§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §=&!§.§<$!§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §?>§.§]!V§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^!"§.§"$k§;
   import §^!"§.§0^§;
   import §^!"§.§^$F§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.text.Font;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.Uzi;
   
   public class §,G§
   {
      
      private static const §7p§:uint = §0^§.§?#u§.length;
      
      private static const §-#p§:uint = 5;
      
      private static const §3$v§:uint = 5;
      
      private static const §&$<§:uint = 40;
      
      private static const §2&1§:uint = 30;
      
      private static const §,%2§:uint = 20;
      
      private var §0#&§:§<#_§;
      
      private var §>"^§:uint;
      
      private var playerLevel:uint;
      
      public function §,G§()
      {
         super();
         this.§0#&§ = §<#_§.getInstance();
      }
      
      public function §3W§(param1:UserProfile) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc5_:UserProfile = null;
         _loc2_ = _loc3_ = uint(param1.getLevel());
         var _loc4_:int = 0;
         for each(_loc5_ in param1.§"]§())
         {
            _loc4_ += _loc5_.getLevel() - param1.getLevel();
         }
         _loc4_ = Math.ceil(_loc4_ / param1.§"]§().length);
         if(_loc4_ > 0)
         {
            _loc3_ += _loc4_;
         }
         if(_loc2_ != this.playerLevel || _loc3_ != this.§>"^§)
         {
            this.playerLevel = _loc2_;
            this.§>"^§ = _loc3_;
            return true;
         }
         return false;
      }
      
      public function §"$m§(param1:§<$!§) : Vector.<UserProfile>
      {
         var _loc2_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         this.§3W§(Application.userProfile);
         var _loc3_:Vector.<§"$k§> = this.§?"a§();
         var _loc4_:uint = 0;
         while(_loc4_ < §7p§)
         {
            _loc2_.push(this.§,"3§(_loc3_[_loc4_],§0^§.§?#u§[_loc4_],null,param1));
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §#%4§(param1:§<$!§) : UserProfile
      {
         var _loc2_:Array = null;
         _loc2_ = this.§8$g§(param1);
         var _loc3_:uint = uint(_loc2_[int(Math.random() * _loc2_.length)]);
         return this.§,"3§(this.§?"a§()[_loc3_],§0^§.§?#u§[_loc3_],null,param1);
      }
      
      public function §3$X§(param1:§<$!§) : Vector.<uint>
      {
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         _loc2_ = this.§8$g§(param1);
         _loc3_ = uint(Application.userProfile.getLevel());
         var _loc4_:uint = §0^§.§?#u§[_loc2_[0]].§3$X§(_loc3_)[0];
         var _loc5_:uint = §0^§.§?#u§[_loc2_[_loc2_.length - 1]].§3$X§(_loc3_)[1];
         return new <uint>[_loc4_,_loc5_];
      }
      
      private function §8$g§(param1:§<$!§) : Array
      {
         var _loc2_:Array = null;
         switch(param1.id)
         {
            case §<$!§.EASY.id:
               _loc2_ = [0,1];
               break;
            case §<$!§.HARD.id:
               _loc2_ = [4,5];
               break;
            case §<$!§.MEDIUM.id:
            default:
               _loc2_ = [2,3];
         }
         return _loc2_;
      }
      
      private function §?"a§() : Vector.<§"$k§>
      {
         var _loc4_:§4&+§ = null;
         var _loc5_:uint = 0;
         var _loc6_:§0^§ = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:int = 0;
         var _loc10_:Vector.<uint> = null;
         var _loc11_:uint = 0;
         var _loc12_:int = 0;
         var _loc1_:Vector.<§"$k§> = new Vector.<§"$k§>();
         var _loc2_:uint = §-#p§ + §-#p§ * this.playerLevel;
         var _loc3_:uint = uint.MAX_VALUE;
         for each(_loc4_ in §3$f§.§+!7§())
         {
            if(_loc4_.§-!T§(this.playerLevel,_loc3_))
            {
               _loc3_ = _loc4_.§?#J§();
            }
         }
         _loc5_ = 0;
         while(_loc5_ < §7p§)
         {
            _loc6_ = §0^§.§?#u§[_loc5_];
            _loc7_ = §-q§.§8$G§(_loc6_.§>"s§(),_loc2_);
            _loc8_ = _loc6_.§!&=§(this.playerLevel);
            _loc9_ = _loc7_ - _loc3_ * (_loc8_ - 1);
            _loc10_ = new Vector.<uint>();
            _loc11_ = 0;
            while(_loc11_ < _loc8_)
            {
               if(_loc11_ != _loc8_ - 1)
               {
                  _loc12_ = §-q§.random(_loc3_,_loc9_);
               }
               else
               {
                  _loc12_ = _loc9_;
               }
               _loc9_ = _loc9_ - _loc12_ + _loc3_;
               _loc10_[_loc11_] = _loc12_;
               _loc11_++;
            }
            _loc1_.push(new §"$k§(_loc7_,_loc10_));
            _loc5_++;
         }
         return _loc1_;
      }
      
      private function §>#>§(param1:uint) : §4&+§
      {
         var _loc3_:§4&+§ = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§4&+§ = null;
         var _loc7_:uint = 0;
         var _loc2_:Vector.<§4&+§> = new Vector.<§4&+§>();
         for each(_loc3_ in §3$f§.§+!7§())
         {
            if(_loc3_.§-!T§(this.playerLevel,param1))
            {
               _loc2_.push(_loc3_);
            }
         }
         _loc4_ = _loc2_.length / 2;
         while(_loc4_ > 0)
         {
            _loc5_ = _loc4_;
            while(_loc5_ < _loc2_.length)
            {
               _loc6_ = _loc2_[_loc5_];
               _loc7_ = _loc5_;
               while(_loc7_ >= _loc4_ && _loc2_[_loc7_ - _loc4_].§?#J§() > _loc6_.§?#J§())
               {
                  _loc2_[_loc7_] = _loc2_[_loc7_ - _loc4_];
                  _loc7_ -= _loc4_;
               }
               _loc2_[_loc7_] = _loc6_;
               _loc5_++;
            }
            _loc4_ = Math.round(_loc4_ / 2.2);
         }
         _loc2_ = _loc2_.reverse();
         return _loc2_[§8"%§.randomSeed.§,!q§(0,Math.min(5,_loc2_.length - 1))];
      }
      
      private function §,"3§(param1:§"$k§, param2:§0^§, param3:Vector.<UserProfile>, param4:§<$!§) : UserProfile
      {
         var _loc5_:uint = 0;
         var _loc7_:UserProfile = null;
         var _loc9_:uint = 0;
         var _loc10_:§4&+§ = null;
         var _loc11_:Vector.<UserProfile> = null;
         var _loc12_:§^$E§ = null;
         var _loc13_:§^%%§ = null;
         var _loc14_:Array = null;
         var _loc6_:uint = param1.§["F§().length;
         var _loc8_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         _loc9_ = 0;
         while(_loc9_ < _loc6_)
         {
            _loc5_ = param1.§["F§()[_loc9_];
            _loc10_ = this.§>#>§(_loc5_);
            _loc5_ -= _loc10_.§?#J§();
            _loc7_ = new UserProfile();
            _loc11_ = param3 ? _loc8_.concat(param3) : _loc8_;
            _loc7_.§-"§(this.§0#&§.§8$T§(_loc10_.§"!?§(),_loc11_,true));
            this.§`%S§(_loc7_,param2);
            this.§4"]§(_loc7_,_loc10_,_loc5_,param2);
            this.§6![§(_loc7_,_loc10_);
            _loc12_ = §<$c§.§^&1§(_loc10_.§"!?§(),_loc7_.getRace());
            if(_loc12_)
            {
               _loc7_.§7"i§(_loc12_);
            }
            _loc13_ = §<$c§.§"$h§(_loc10_.§8!u§());
            if(_loc13_)
            {
               _loc7_.§;"U§(_loc13_);
            }
            else if(param2.§]%U§() >= §0^§.HARD.§]%U§() && this.playerLevel >= 20 && _loc5_ >= 40)
            {
               _loc14_ = §<$c§.§`"u§();
               _loc7_.§;"U§(_loc14_[int(§8"%§.randomSeed.§,!q§(0,_loc14_.length))]);
            }
            this.§,$B§(_loc7_,_loc10_,_loc5_,param4);
            _loc8_.push(_loc7_);
            _loc9_++;
         }
         _loc5_ = uint.MIN_VALUE;
         _loc9_ = 0;
         while(_loc9_ < _loc6_)
         {
            if(param1.§["F§()[_loc9_] > _loc5_)
            {
               _loc5_ = param1.§["F§()[_loc9_];
               _loc7_ = _loc8_[_loc9_];
            }
            _loc9_++;
         }
         if(§0#2§.§0%1§())
         {
         }
         _loc7_.§2!§(_loc7_.getCharName());
         _loc7_.§;"!§(_loc8_);
         return _loc7_;
      }
      
      private function §4"]§(param1:UserProfile, param2:§4&+§, param3:uint, param4:§0^§) : void
      {
         var _loc5_:Vector.<§^$F§> = null;
         var _loc6_:§^$F§ = null;
         var _loc7_:uint = 0;
         _loc5_ = param2.§8$u§();
         _loc6_ = _loc5_[§-q§.random(0,_loc5_.length - 1)];
         _loc7_ = uint(param1.getLevel());
         var _loc8_:Array = §^$F§.§@$p§(_loc6_,_loc7_);
         var _loc9_:int = int(_loc8_[0]);
         var _loc10_:int = int(_loc8_[1]);
         _loc9_ += this.§;">§(_loc9_,param3,param4) + this.§;!@§(param4);
         _loc10_ += this.§;">§(_loc10_,param3,param4) + this.§;!@§(param4);
         param1.stats.§'$Q§.value = _loc9_;
         param1.stats.§+#+§.value = _loc10_;
         var _loc11_:int = int(§<!9§.§["q§(Math.min(30,_loc7_)));
         if(_loc7_ > 30)
         {
            _loc11_ += §2&1§ * (_loc7_ - 30);
         }
         param1.stats.§8+§.value = _loc11_ + §-q§.random(-5,5);
      }
      
      private function §;">§(param1:int, param2:uint, param3:§0^§) : uint
      {
         var _loc4_:uint = 0;
         if(param3.§]%U§() >= §0^§.MEDIUM.§]%U§() && param2 > §-#p§)
         {
            _loc4_ = §-q§.§8$G§(Math.min(§&$<§,param2 / §-#p§ * 2),Math.abs(param1));
            return §-q§.random(_loc4_ * 0.9,_loc4_);
         }
         return 0;
      }
      
      private function §;!@§(param1:§0^§) : int
      {
         var _loc2_:int = this.§>"^§ - §3$v§;
         if(_loc2_ > 0)
         {
            return 0;
         }
         return §-q§.random(_loc2_ - 1,_loc2_ + 1) * 2 * param1.§;!@§();
      }
      
      private function §`%S§(param1:UserProfile, param2:§0^§) : void
      {
         var _loc3_:uint = Math.max(1,Math.ceil(param2.§63§() * this.§>"^§) + param2.§9%'§());
         if(this.§>"^§ > 6)
         {
            _loc3_ += §-q§.random(-1,1);
         }
         param1.setLevel(_loc3_);
      }
      
      private function §6![§(param1:UserProfile, param2:§4&+§) : void
      {
         var _loc3_:Vector.<Race> = param2.§;$F§();
         var _loc4_:§`!d§ = _loc3_[§-q§.random(0,_loc3_.length - 1)].§]!D§();
         param1.§&$g§(_loc4_);
      }
      
      private function §,$B§(param1:UserProfile, param2:§4&+§, param3:uint, param4:§<$!§) : void
      {
         var _loc5_:§>%Q§ = null;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         param1.aiArsenal = new §,%8§(null,param1.getLevel());
         param1.aiArsenal.§`!-§(param4);
         for each(_loc5_ in param2.§3%j§())
         {
            param1.aiArsenal.§>$&§(_loc5_,param1.getLevel());
         }
         if(param3 >= §,%2§)
         {
            _loc6_ = Math.min(3,param3 / §,%2§);
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               param1.aiArsenal.§>$&§(§=#x§.§3&H§(),param1.getLevel());
               _loc7_++;
            }
         }
      }
   }
}

