package ru.pragmatix.wormix.model.bonus
{
   import § !8§.§`!d§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §"!C§.§2v§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!?§.§+" §;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#W§.§?#]§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'"N§.§4&5§;
   import §+#P§.§]!E§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-!U§.§&%j§;
   import §-%B§.*;
   import §-@§.*;
   import §0!§.§6#z§;
   import §0!§.§8$Y§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §1&-§.§ &=§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.§5!M§;
   import §3#a§.§-#M§;
   import §3%J§.BuyBattleTokensDialog;
   import §5!,§.§9$h§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §6$z§.§!"§;
   import §6$z§.§%&&§;
   import §6$z§.BonusBuff;
   import §6$z§.BonusStat;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §="?§.§ %#§;
   import §?#g§.§-!k§;
   import §?$7§.§6&'§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§8%6§;
   import §@!i§.§<#&§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import com.greensock.TweenMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class §^%'§
   {
      
      private var owner:§+%]§;
      
      private var §"#,§:Vector.<§]$q§>;
      
      private var bonuses:Vector.<§!"§>;
      
      public function §^%'§(param1:§+%]§)
      {
         super();
         this.owner = param1;
         this.§"#,§ = new Vector.<§]$q§>();
         this.bonuses = new Vector.<§!"§>();
      }
      
      public static function §8!4§(param1:§+%]§, param2:Bonus) : int
      {
         var _loc8_:Vector.<§-!k§> = null;
         var _loc9_:§-!k§ = null;
         var _loc10_:Array = null;
         if(param1 == null || param1.record == null || param2 == null)
         {
            return 0;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§=?§ = param1.record.§2u§();
         if((Boolean(_loc5_)) && Boolean(_loc5_.getBonusList()) && _loc5_.getBonusList().§^#5§(param2))
         {
            _loc3_++;
            _loc4_ = _loc5_.getId();
         }
         var _loc6_:§=?§ = param1.record.§+!b§();
         if((Boolean(_loc6_)) && Boolean(_loc6_.getBonusList()) && _loc6_.getBonusList().§^#5§(param2))
         {
            _loc3_++;
            _loc4_ = _loc6_.getId();
         }
         var _loc7_:§`!d§ = param1.record.getRace();
         if(_loc7_)
         {
            _loc8_ = _loc7_.§+%t§();
            for each(_loc9_ in _loc8_)
            {
               _loc10_ = _loc9_.§<%i§();
               if((Boolean(_loc10_)) && Boolean(_loc9_.getLevel() <= param1.record.getLevel()) && _loc10_.indexOf(param2.§7%z§()) > -1)
               {
                  _loc3_++;
                  break;
               }
            }
         }
         return _loc3_ == 1 ? _loc4_ : 0;
      }
      
      public function §]!X§(param1:§]$q§) : void
      {
         var _loc2_:§]$q§ = null;
         var _loc3_:Boolean = false;
         var _loc4_:§@"I§ = null;
         var _loc5_:Vector.<§-!k§> = null;
         var _loc6_:§-!k§ = null;
         var _loc7_:Array = null;
         var _loc8_:Boolean = false;
         var _loc9_:String = null;
         var _loc10_:§!"§ = null;
         var _loc11_:Class = null;
         var _loc12_:Boolean = false;
         var _loc13_:§!"§ = null;
         for each(_loc2_ in this.§"#,§)
         {
            if(param1.getSourceType() == _loc2_.getSourceType())
            {
               this.§9=§(_loc2_);
               break;
            }
         }
         this.§"#,§[this.§"#,§.length] = param1;
         for each(_loc4_ in param1.§<%i§())
         {
            _loc3_ = false;
            if(param1.getSourceType() == §]$q§.RACE)
            {
               _loc5_ = this.owner.record.getRace().§+%t§();
               for each(_loc6_ in _loc5_)
               {
                  _loc7_ = _loc6_.§<%i§();
                  if(_loc7_)
                  {
                     _loc8_ = _loc6_.getLevel() > this.owner.record.getLevel();
                     for each(_loc9_ in _loc7_)
                     {
                        if(!_loc3_ && _loc9_ == _loc4_.getType().§7%z§() && _loc8_)
                        {
                           _loc3_ = true;
                        }
                     }
                  }
               }
            }
            if(!_loc3_)
            {
               for each(_loc10_ in this.bonuses)
               {
                  if(!_loc3_ && _loc4_.getType() == _loc10_.getType())
                  {
                     _loc10_.add(_loc4_.getValue());
                     _loc3_ = true;
                  }
               }
               if(!_loc3_)
               {
                  _loc11_ = _loc4_.getType().getClass();
                  if(_loc11_)
                  {
                     _loc12_ = _loc4_.getType().§8$$§();
                     _loc13_ = _loc12_ ? new _loc11_(_loc4_.getType().§`X§()) : new _loc11_();
                     _loc13_.init(this.owner,_loc4_);
                     this.bonuses[this.bonuses.length] = _loc13_;
                  }
               }
            }
         }
      }
      
      public function §9=§(param1:§]$q§) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:§!"§ = null;
         var _loc5_:§@"I§ = null;
         for each(_loc5_ in param1.§<%i§())
         {
            _loc2_ = this.bonuses.length;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = this.bonuses[_loc3_];
               if(_loc5_.getType() == _loc4_.getType())
               {
                  _loc4_.subtract(_loc5_.getValue());
                  if(_loc4_.getCount() <= 0)
                  {
                     this.bonuses.splice(_loc3_,1);
                  }
                  break;
               }
               _loc3_++;
            }
         }
         _loc2_ = this.§"#,§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1 == this.§"#,§[_loc3_])
            {
               this.§"#,§.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
      }
      
      public function getStatValue(param1:Bonus, param2:int = 2147483647) : int
      {
         return this.§=!L§(param1,BonusStat.NAME,param2);
      }
      
      public function §6!"§(param1:Bonus, param2:int = 2147483647) : int
      {
         return this.§=!L§(param1,BonusBuff.NAME,param2);
      }
      
      public function §=!L§(param1:Bonus, param2:String, param3:int = 2147483647) : int
      {
         var _loc4_:§!"§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = this.bonuses;
         for each(_loc5_ in _loc6_)
         {
            var _temp_3:* = _loc5_;
            _loc4_ = _loc5_;
            if(_loc4_.getType() == param1 && _loc4_.§7%z§() == param2)
            {
               return Math.min(BonusStat(_loc4_).getValue(),param3);
            }
         }
         return 0;
      }
      
      public function §'"S§(param1:Bonus) : §!"§
      {
         var _loc2_:§!"§ = null;
         for each(_loc2_ in this.bonuses)
         {
            if(param1 == _loc2_.getType())
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §^#5§(param1:Bonus) : Boolean
      {
         return this.§'"S§(param1) != null;
      }
      
      public function §%$k§(param1:Array) : Boolean
      {
         var _loc2_:§!"§ = null;
         for each(_loc2_ in this.bonuses)
         {
            if(param1.indexOf(_loc2_.getType()) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §]"U§() : Vector.<§%&&§>
      {
         var _loc2_:§!"§ = null;
         var _loc3_:§%&&§ = null;
         var _loc1_:Vector.<§%&&§> = new Vector.<§%&&§>(0);
         for each(_loc2_ in this.bonuses)
         {
            _loc3_ = _loc2_ as §%&&§;
            if(_loc3_)
            {
               _loc1_.push(_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function §,#9§(param1:§"Z§) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:§%&&§ = null;
         var _loc2_:Vector.<§%&&§> = this.§]"U§();
         for each(_loc3_ in param1.§1!n§())
         {
            if(_loc3_ != this.owner)
            {
               for each(_loc4_ in _loc2_)
               {
                  _loc4_.§[%x§(_loc3_);
               }
               for each(_loc4_ in _loc3_.bonuses.§]"U§())
               {
                  _loc4_.§[%x§(this.owner);
               }
            }
         }
      }
      
      public function §,`§() : Vector.<§]$q§>
      {
         return this.§"#,§;
      }
      
      public function §#&$§(param1:String) : §]$q§
      {
         var _loc2_:§]$q§ = null;
         for each(_loc2_ in this.§"#,§)
         {
            if(_loc2_.getSourceType() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}

