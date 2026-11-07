package ru.pragmatix.wormix.model.rewards
{
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§%&G§;
   import §##j§.§'"%§;
   import §##j§.§0%=§;
   import §##j§.§0m§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§9x§;
   import §##j§.§>"M§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §'$Z§.§2#f§;
   import §,!f§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2B§.§#&E§;
   import §3"@§.§#$O§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §9"-§.AnchorTeleportMark;
   import §<%k§.§`!v§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import avmplus.getQualifiedClassName;
   import config.achievements.*;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.treasury.DonateClanRequest;
   import ru.pragmatix.wormix.messages.client.BuyRenameChar;
   import ru.pragmatix.wormix.messages.server.BuyRenameCharResult;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §1%z§
   {
      
      private static const §["#§:uint = 10;
      
      private var §@#l§:Array;
      
      public function §1%z§(param1:Array)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         super();
         this.§@#l§ = [];
         if(Boolean(param1) && param1.length != 0)
         {
            _loc2_ = 0;
            _loc3_ = int(param1.length);
            while(_loc2_ < _loc3_)
            {
               if(param1[_loc2_] is §7,§)
               {
                  this.§@#l§.push(param1[_loc2_]);
               }
               _loc2_++;
            }
         }
      }
      
      public static function §!!Z§(param1:Array, param2:Boolean = false, param3:Boolean = false) : §1%z§
      {
         var _loc6_:GenericAwardStructure = null;
         var _loc8_:int = 0;
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         var _loc7_:int = int(param1.length);
         for(; _loc5_ < _loc7_; _loc5_++)
         {
            _loc6_ = param1[_loc5_];
            switch(_loc6_.awardKind)
            {
               case §[#c§.§`_§:
                  _loc4_[_loc5_] = new §#$!§(§+$A§.INGAME,_loc6_.count);
                  break;
               case §[#c§.§6&"§:
                  _loc4_[_loc5_] = new §#$!§(§+$A§.REAL,_loc6_.count);
                  break;
               case §[#c§.§@",§:
                  _loc4_[_loc5_] = new §>"M§(_loc6_.count,§#&E§.§-!l§);
                  break;
               case §[#c§.§!_§:
                  _loc4_[_loc5_] = new §0m§(_loc6_.count);
                  break;
               case §[#c§.§<#^§:
                  _loc4_[_loc5_] = new §`%g§(_loc6_.itemId,_loc6_.count);
                  break;
               case §[#c§.§##+§:
                  _loc8_ = 0;
                  if(param2)
                  {
                     if(§#$O§.§3$K§(_loc6_.itemId) && !param3)
                     {
                        _loc8_ = _loc6_.count / §0#2§.§8$]§;
                     }
                     else
                     {
                        _loc8_ = §0#2§.§!$r§(_loc6_.count,true);
                     }
                  }
                  _loc4_[_loc5_] = new §]$X§(_loc6_.itemId,_loc8_);
                  break;
               case §[#c§.REAGENT:
                  _loc4_[_loc5_] = new §!%&§(_loc6_.itemId,_loc6_.count);
                  break;
               case §[#c§.§2"@§:
                  _loc4_[_loc5_] = new §]$X§(_loc6_.itemId);
                  break;
               case §[#c§.RACE:
                  _loc4_[_loc5_] = new §%&G§(_loc6_.itemId);
                  break;
               case §[#c§.§<$e§:
                  _loc4_[_loc5_] = new §`%g§(_loc6_.itemId,_loc6_.count);
                  break;
               case §[#c§.EXPERIENCE:
                  _loc4_[_loc5_] = new §'"%§(_loc6_.count);
                  break;
               case §[#c§.SKIN:
                  _loc4_[_loc5_] = new §6#v§(_loc6_.itemId);
                  break;
               case §[#c§.WAGER_TOKEN:
                  _loc4_[_loc5_] = new §>"M§(_loc6_.count,§#&E§.§^5§);
                  break;
               case §[#c§.BOSS_TOKEN:
                  _loc4_[_loc5_] = new §>"M§(_loc6_.count,§#&E§.§#E§);
                  break;
               default:
                  continue;
            }
            §9x§(_loc4_[_loc5_]).setKind(_loc6_.awardKind);
         }
         return new §1%z§(_loc4_);
      }
      
      public function §[!s§(param1:Boolean = false) : uint
      {
         var _loc3_:§7,§ = null;
         var _loc2_:uint = 0;
         for each(_loc3_ in this.§@#l§)
         {
            if(_loc3_ is §'"%§)
            {
               _loc2_ += _loc3_.getCount();
            }
         }
         if(param1 && Application.userProfile.getLevel() == §<!9§.getMaxLevel())
         {
            return 0;
         }
         return _loc2_;
      }
      
      private function §?2§(param1:§+$A§) : uint
      {
         var _loc3_:§7,§ = null;
         var _loc2_:uint = 0;
         for each(_loc3_ in this.§@#l§)
         {
            if(_loc3_ is §#$!§ && (_loc3_ as §#$!§).getRewardType() == param1)
            {
               _loc2_ += _loc3_.getCount();
            }
         }
         return _loc2_;
      }
      
      public function §#!G§() : uint
      {
         return this.§?2§(§+$A§.INGAME);
      }
      
      public function §@$D§() : uint
      {
         return this.§?2§(§+$A§.REAL);
      }
      
      public function getWeapons(param1:Boolean = false) : Vector.<§`%g§>
      {
         var _loc2_:UserProfile = null;
         var _loc5_:§7,§ = null;
         var _loc6_:uint = 0;
         var _loc7_:BackpackItem = null;
         var _loc8_:Boolean = false;
         var _loc9_:§;#_§ = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         _loc2_ = Application.userProfile;
         var _loc3_:§'"-§ = _loc2_.§3%^§();
         var _loc4_:Vector.<§`%g§> = new Vector.<§`%g§>(0);
         for each(_loc5_ in this.§@#l§)
         {
            if(_loc5_ is §`%g§)
            {
               _loc6_ = _loc5_.getId();
               _loc7_ = §1!S§.§@!&§(_loc6_,_loc3_);
               _loc8_ = §1!S§.§%$6§(_loc6_,_loc2_);
               _loc9_ = §<$c§.§ !=§(_loc6_);
               _loc10_ = _loc9_.§-%g§();
               _loc11_ = §8"%§.§ $,§.§?#5§(_loc6_);
               _loc12_ = _loc9_.isComplex() && §`%g§(_loc5_).getCount() > 0 && §`%g§(_loc5_).getKind() != §[#c§.§<#^§;
               if(param1 || _loc12_ || (!_loc7_ || !_loc7_.isInfinite() && _loc7_.getCount() < §["#§ && (!_loc10_ || _loc11_)))
               {
                  _loc4_.push(§`%g§(_loc5_));
               }
            }
         }
         return _loc4_;
      }
      
      public function §?"y§() : Vector.<§0%=§>
      {
         var _loc2_:§7,§ = null;
         var _loc1_:Vector.<§0%=§> = new Vector.<§0%=§>(0);
         for each(_loc2_ in this.§@#l§)
         {
            if(_loc2_ is §0%=§)
            {
               _loc1_.push(§0%=§(_loc2_));
            }
         }
         return _loc1_;
      }
      
      public function §;$F§() : Vector.<§%&G§>
      {
         var _loc2_:§7,§ = null;
         var _loc1_:Vector.<§%&G§> = new Vector.<§%&G§>(0);
         for each(_loc2_ in this.§@#l§)
         {
            if(_loc2_ is §%&G§)
            {
               _loc1_.push(§%&G§(_loc2_));
            }
         }
         return _loc1_;
      }
      
      public function §1$4§() : Vector.<§6#v§>
      {
         var _loc2_:§7,§ = null;
         var _loc1_:Vector.<§6#v§> = new Vector.<§6#v§>(0);
         for each(_loc2_ in this.§@#l§)
         {
            if(_loc2_ is §6#v§)
            {
               _loc1_.push(§6#v§(_loc2_));
            }
         }
         return _loc1_;
      }
      
      public function §2!O§() : Vector.<§]$X§>
      {
         var _loc2_:§7,§ = null;
         var _loc1_:Vector.<§]$X§> = new Vector.<§]$X§>(0);
         for each(_loc2_ in this.§@#l§)
         {
            if(_loc2_ is §]$X§)
            {
               _loc1_.push(§]$X§(_loc2_));
            }
         }
         return _loc1_;
      }
      
      public function §7!D§() : §]$X§
      {
         var _loc1_:§]$X§ = null;
         for each(_loc1_ in this.§2!O§())
         {
            if(§#$O§.§3$K§(_loc1_.getId()))
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §]#x§() : Vector.<§!%&§>
      {
         var _loc2_:§7,§ = null;
         var _loc1_:Vector.<§!%&§> = new Vector.<§!%&§>(0);
         for each(_loc2_ in this.§@#l§)
         {
            if(_loc2_ is §!%&§)
            {
               _loc1_.push(§!%&§(_loc2_));
            }
         }
         return _loc1_;
      }
      
      public function §2%a§() : Vector.<int>
      {
         var _loc2_:§7,§ = null;
         var _loc1_:Vector.<int> = new Vector.<int>(0);
         for each(_loc2_ in this.§@#l§)
         {
            if(_loc2_ is §!%&§)
            {
               _loc1_.push(§!%&§(_loc2_).getId());
            }
         }
         return _loc1_;
      }
      
      public function §@$0§(param1:Boolean = false, param2:Boolean = false) : Array
      {
         var _loc4_:§7,§ = null;
         var _loc5_:Boolean = false;
         var _loc3_:Array = [];
         if(param2)
         {
            _loc5_ = Application.userProfile.getLevel() < §<!9§.getMaxLevel();
            for each(_loc4_ in this.§@#l§)
            {
               if(_loc4_ is §#$!§ || _loc4_ is §0m§ || _loc4_ is §>"M§ || _loc4_ is §'"%§ && _loc5_)
               {
                  _loc3_.push(_loc4_);
               }
            }
         }
         for each(_loc4_ in this.§;$F§())
         {
            _loc3_.push(_loc4_);
         }
         for each(_loc4_ in this.§1$4§())
         {
            _loc3_.push(_loc4_);
         }
         for each(_loc4_ in this.§?"y§())
         {
            _loc3_.push(_loc4_);
         }
         for each(_loc4_ in this.§2!O§())
         {
            _loc3_.push(_loc4_);
         }
         for each(_loc4_ in this.getWeapons(param1))
         {
            _loc3_.push(_loc4_);
         }
         for each(_loc4_ in this.§]#x§())
         {
            _loc3_.push(_loc4_);
         }
         return _loc3_;
      }
      
      public function §<!M§(param1:§#&E§ = null) : int
      {
         var _loc3_:§7,§ = null;
         var _loc2_:uint = 0;
         for each(_loc3_ in this.§@#l§)
         {
            if(_loc3_ is §>"M§ && (!param1 || §>"M§(_loc3_).type == param1))
            {
               _loc2_ += _loc3_.getCount();
            }
         }
         return _loc2_;
      }
      
      public function §=u§() : uint
      {
         var _loc2_:§7,§ = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.§@#l§)
         {
            if(_loc2_ is §0m§)
            {
               _loc1_ += _loc2_.getCount();
            }
         }
         return _loc1_;
      }
      
      public function §2"Y§() : uint
      {
         var _loc2_:§7,§ = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.§@#l§)
         {
            if(_loc2_ is §!%&§)
            {
               _loc1_ += _loc2_.getCount();
            }
         }
         return _loc1_;
      }
      
      public function §;!c§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc1_:Boolean = Application.userProfile.getLevel() == §<!9§.getMaxLevel();
         if(_loc1_)
         {
            _loc2_ = 0;
            _loc3_ = int(this.§@#l§.length);
            while(_loc2_ < _loc3_)
            {
               if(this.§@#l§[_loc2_] is §'"%§)
               {
                  this.§@#l§.splice(_loc2_,1);
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      public function get rewards() : Array
      {
         return this.§@#l§;
      }
      
      public function set rewards(param1:Array) : void
      {
         this.§@#l§ = param1;
      }
   }
}

