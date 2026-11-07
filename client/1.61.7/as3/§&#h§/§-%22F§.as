package §&#h§
{
   import § !8§.§`!d§;
   import § !P§.§9%Z§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §'!Z§.§2!H§;
   import §+%S§.§-$s§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §1#p§.§"Z§;
   import §3#a§.§<#_§;
   import §7$t§.§;#_§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §=&!§.§&$a§;
   import §=&!§.§<$!§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §@!N§.§""L§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import config.§;"I§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §-"F§
   {
      
      §§push(§§findproperty(fields));
      
      private static const fields:Vector.<String> = new <String>["id","params","awardType","goal","score","rewarded"];
      
      private var §9!4§:int;
      
      private var _type:int;
      
      private var §4"4§:String;
      
      private var §2$+§:String;
      
      private var §4!N§:int;
      
      private var §7!E§:int;
      
      private var §^$P§:int;
      
      private var §0#1§:Boolean;
      
      private var §[$,§:Boolean;
      
      private var §"$l§:Vector.<int>;
      
      private var §9!y§:Boolean;
      
      public function §-"F§(param1:int, param2:int, param3:String, param4:Boolean = false)
      {
         super();
         this.§9!4§ = param1;
         this._type = param2;
         this.§2$+§ = param3;
         this.§4"4§ = param3 ? §0$N§.§%! §(param3) : "";
         this.§9!y§ = param4;
      }
      
      public function toString() : String
      {
         return "DailyTaskRecord{" + "id=" + this.§9!4§ + ",score=" + this.§4!N§ + ",goal=" + this.§7!E§ + ",award=" + this.§^$P§ + ",rewarded=" + this.§0#1§ + ",params=" + this.§"$l§ + (this.§9!y§ ? ",isParamVariable" : "") + ",nameKey=" + this.§2$+§ + ",name=" + this.§4"4§ + "}";
      }
      
      public function reset() : void
      {
         this.§7!E§ = 0;
         this.§^$P§ = 0;
         this.§"$l§ = new Vector.<int>(0);
         if(this.§9!y§)
         {
            this.§4"4§ = this.§2$+§ ? §0$N§.§%! §(this.§2$+§) : "";
         }
         this.restart();
      }
      
      public function restart() : void
      {
         this.§4!N§ = 0;
         this.§0#1§ = false;
      }
      
      public function clone(param1:Boolean = false) : §-"F§
      {
         var _loc2_:§-"F§ = new §-"F§(this.§9!4§,this._type,"",this.§9!y§);
         _loc2_.§2$+§ = this.§2$+§.concat();
         if(param1)
         {
            if(this.§9!y§)
            {
               this.§4"4§ = this.§2$+§ ? §0$N§.§%! §(this.§2$+§) : "";
            }
         }
         if(!param1)
         {
            _loc2_.§4"4§ = this.§4"4§.concat();
            _loc2_.§4!N§ = this.§4!N§;
            _loc2_.§7!E§ = this.§7!E§;
            _loc2_.§^$P§ = this.§^$P§;
            _loc2_.§0#1§ = this.§0#1§;
            _loc2_.§"$l§ = this.§"$l§ ? this.§"$l§.concat() : new Vector.<int>(0);
            _loc2_.§9!y§ = this.§9!y§;
         }
         return _loc2_;
      }
      
      public function §2%3§(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in fields)
         {
            if(param1.hasOwnProperty(_loc2_))
            {
            }
         }
         if(this.§9!4§ != parseInt(param1.id))
         {
            return;
         }
         if(this.§4!N§ != param1.score)
         {
            _loc3_ = true;
         }
         if(this.§7!E§ != param1.goal)
         {
            _loc3_ = true;
         }
         if(this.§^$P§ != param1.awardType)
         {
            _loc3_ = true;
         }
         if(this.§0#1§ != param1.rewarded)
         {
            _loc3_ = true;
         }
         if(this.§"$l§ != param1.params)
         {
            _loc3_ = true;
         }
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:Vector.<int> = §""L§.§9%;§(param1.params);
         if(_loc4_.length > 0)
         {
         }
         this.§4!N§ = param1.score;
         this.§7!E§ = param1.goal;
         this.§^$P§ = param1.awardType;
         this.§0#1§ = param1.rewarded;
         this.§[$,§ = this.§4!N§ >= this.§7!E§;
         this.§"$l§ = _loc4_;
         this.§3;§(_loc4_);
      }
      
      private function §3;§(param1:Vector.<int>) : void
      {
         var _loc3_:Vector.<int> = null;
         var _loc4_:§8"e§ = null;
         var _loc5_:§8"e§ = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:§8%6§ = null;
         var _loc12_:int = 0;
         var _loc13_:§&!E§ = null;
         var _loc14_:int = 0;
         var _loc15_:§;#_§ = null;
         var _loc16_:String = null;
         var _loc17_:int = 0;
         var _loc18_:Boolean = false;
         var _loc19_:§`!d§ = null;
         var _loc20_:String = null;
         var _loc21_:Vector.<int> = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:§<$!§ = null;
         var _loc25_:String = null;
         var _loc26_:int = 0;
         var _loc27_:String = null;
         var _loc28_:int = 0;
         var _loc29_:String = null;
         var _loc30_:int = 0;
         var _loc31_:int = 0;
         var _loc32_:int = 0;
         if(this.§9!4§ == §3#n§.§ %X§ || this.§9!4§ == §3#n§.§,%R§ || this.§9!4§ == §3#n§.§,"n§)
         {
            this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"count":this.§7!E§});
         }
         else if(this.§9!4§ == §3#n§.§8n§ || this.§9!4§ == §3#n§.§+T§)
         {
            this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"count":this.§7!E§});
         }
         if(param1.length == 0)
         {
            return;
         }
         var _loc2_:int = param1[0];
         if(this.§9!4§ == §3#n§.§4D§)
         {
            _loc3_ = param1;
            if(!_loc3_ || _loc3_.length < 2)
            {
               return;
            }
            _loc4_ = §8"e§.contains(_loc3_[0]) ? §8"e§.§["V§(_loc3_[0]) : null;
            _loc5_ = §8"e§.contains(_loc3_[1]) ? §8"e§.§["V§(_loc3_[1]) : null;
            if(Boolean(_loc4_) && Boolean(_loc5_))
            {
               this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{
                  "difficulty1":_loc4_.§@$+§(),
                  "difficulty2":_loc5_.§@$+§()
               });
            }
            else
            {
               this.§4"4§ = §0$N§.§%! §(this.§2$+§);
            }
            if(Application.instance.§;"7§())
            {
               this.§4"4§ += " (" + _loc3_ + ")";
            }
         }
         else if(this.§9!4§ == §3#n§.§^%J§ || this.§9!4§ == §3#n§.§!%k§)
         {
            _loc6_ = _loc2_;
            switch(_loc6_)
            {
               case §-"P§.§'$L§:
                  _loc7_ = §0$N§.§%! §("INTASK_WITH_RANDOM_PARTNER");
                  break;
               case §-"P§.§,$^§:
                  _loc7_ = §0$N§.§%! §("INTASK_WITH_FRIEND");
                  break;
               case §-"P§.§`$=§:
                  _loc7_ = §0$N§.§%! §("INTASK_WITH_RANDOM_PARTNER");
                  break;
               case §-"P§.§4&<§:
                  _loc7_ = §0$N§.§%! §("INTASK_WITH_FRIEND");
            }
            this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"withPartnerType":_loc7_});
            if(Application.instance.§;"7§())
            {
               this.§4"4§ += " (" + _loc6_ + ")";
            }
         }
         else if(this.§9!4§ == §3#n§.§]#A§)
         {
            _loc8_ = _loc2_;
            switch(_loc8_)
            {
               case §-"P§.§"#p§:
                  _loc9_ = §0$N§.§%! §("INTASK_BATTLE_WAGER_DUEL");
                  break;
               case §-"P§.§,%@§:
                  _loc9_ = §0$N§.§%! §("INTASK_BATTLE_GLADIATOR");
                  break;
               case §-"P§.MERCENARIES_DUEL:
                  _loc9_ = §0$N§.§%! §("INTASK_BATTLE_MERCENARIES");
            }
            this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"inBattleType":_loc9_});
            if(Application.instance.§;"7§())
            {
               this.§4"4§ += " (" + _loc8_ + ")";
            }
         }
         else if(this.§9!4§ == §3#n§.§6$%§)
         {
            _loc10_ = _loc2_;
            if(§6&'§.getInstance().contains(_loc10_))
            {
               _loc11_ = §6&'§.getInstance().getRecord(_loc10_);
            }
            else if(§!#3§.getInstance().contains(_loc10_))
            {
               _loc11_ = §!#3§.getInstance().getRecord(_loc10_);
            }
            if(_loc11_)
            {
               this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"bossName":_loc11_.§7%z§()});
               if(Application.instance.§;"7§())
               {
                  this.§4"4§ += " (" + _loc10_ + ")";
               }
            }
         }
         else if(this.§9!4§ == §3#n§.§4#c§ || this.§9!4§ == §3#n§.§2"F§)
         {
            _loc12_ = _loc2_;
            _loc13_ = §&!E§.§^!o§(_loc12_);
            if(_loc13_)
            {
               this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"element":_loc13_.§="L§()});
               if(Application.instance.§;"7§())
               {
                  this.§4"4§ += " (" + _loc12_ + ")";
               }
            }
         }
         else if(this.§9!4§ == §3#n§.§4%N§ || this.§9!4§ == §3#n§.§&%B§)
         {
            _loc14_ = _loc2_;
            if(_loc14_ > -1)
            {
               _loc15_ = §<$c§.§ !=§(_loc14_);
               _loc16_ = _loc15_.§7%z§();
               this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"weaponName":_loc16_});
               if(Application.instance.§;"7§())
               {
                  this.§4"4§ += " (" + _loc15_.getId() + ")";
               }
            }
         }
         else if(this.§9!4§ == §3#n§.§+!G§)
         {
            _loc17_ = _loc2_;
            _loc18_ = _loc17_ == -§;"I§.§"$H§;
            if(_loc18_)
            {
               _loc17_ *= -1;
            }
            if(_loc17_ > -1)
            {
               _loc19_ = Race.§3!4§(_loc17_);
               _loc20_ = _loc19_.§7%z§();
               if(_loc18_)
               {
                  _loc20_ += " " + §0$N§.IS_REVIVED;
               }
               this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"raceName":_loc20_});
               if(Application.instance.§;"7§())
               {
                  this.§4"4§ += " (" + (_loc18_ ? "-" : "") + _loc17_ + ")";
               }
            }
         }
         else if(this.§9!4§ == §3#n§.§1%V§)
         {
            _loc21_ = param1;
            if(!_loc21_ || _loc21_.length < 2)
            {
               return;
            }
            _loc22_ = _loc21_[0];
            _loc23_ = _loc21_[1];
            if(_loc22_ > -1)
            {
               _loc24_ = §<$!§.§]$^§(_loc22_);
               _loc25_ = Social.§-%c§.§4!]§(_loc23_,§0$N§.TURN_PLURALS);
               this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{
                  "difficult":_loc24_.name,
                  "turnsCount":_loc23_,
                  "turnsPlural":_loc25_
               });
               if(Application.instance.§;"7§())
               {
                  this.§4"4§ += " (" + _loc21_ + ")";
               }
            }
         }
         else if(this.§9!4§ == §3#n§.§7"e§)
         {
            _loc26_ = _loc2_;
            _loc27_ = §<#_§.getInstance().§9"I§(_loc26_,0);
            this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"mercenaryName":_loc27_});
            if(Application.instance.§;"7§())
            {
               this.§4"4§ += " (" + _loc26_ + ")";
            }
         }
         else if(this.§9!4§ == §3#n§.§8"4§ || this.§9!4§ == §3#n§.§4#g§ || this.§9!4§ == §3#n§.§%%=§)
         {
            _loc28_ = _loc2_;
            switch(_loc28_)
            {
               case 0:
                  _loc29_ = §0$N§.§%! §("INTASK_BATTLE_ANY_REWARDED");
                  break;
               case §&$a§.§#"g§.id:
                  _loc29_ = §0$N§.§%! §("INTASK_BATTLE_WAGER");
                  break;
               case §-"P§.§,%@§:
                  _loc29_ = §0$N§.§%! §("INTASK_BATTLE_GLADIATOR");
                  break;
               case §-"P§.MERCENARIES_DUEL:
                  _loc29_ = §0$N§.§%! §("INTASK_BATTLE_MERCENARIES");
            }
            this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"inBattleType":_loc29_});
            if(Application.instance.§;"7§())
            {
               this.§4"4§ += " (" + _loc28_ + ")";
            }
         }
         else if(this.§9!4§ == §3#n§.§>#a§)
         {
            _loc30_ = _loc2_;
            this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"squares":_loc30_});
            if(Application.instance.§;"7§())
            {
               this.§4"4§ += " (" + _loc30_ + ")";
            }
         }
         else if(this.§9!4§ == §3#n§.MASSIVE_DAMAGE)
         {
            _loc31_ = _loc2_;
            this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"damage":_loc31_});
            if(Application.instance.§;"7§())
            {
               this.§4"4§ += " (" + _loc31_ + ")";
            }
         }
         else if(this.§9!4§ == §3#n§.§]!z§)
         {
            _loc32_ = _loc2_;
            this.§4"4§ = §0%§.format(§0$N§.§%! §(this.§2$+§),{"lostHP":_loc32_});
            if(Application.instance.§;"7§())
            {
               this.§4"4§ += " (" + _loc32_ + ")";
            }
         }
      }
      
      public function §=$q§(param1:int) : Boolean
      {
         if(!this.§9!y§)
         {
            return false;
         }
         if(!this.§ D§)
         {
            return false;
         }
         return this.§"$l§[0] == param1;
      }
      
      public function §?$i§(param1:§-"F§) : Boolean
      {
         if(!param1)
         {
            return false;
         }
         if(this.§9!4§ != param1.id)
         {
            return false;
         }
         if(this.§"$l§.length != param1.§"$l§.length)
         {
            return false;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§"$l§.length)
         {
            if(this.§"$l§[_loc2_] != param1.§"$l§[_loc2_])
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }
      
      public function get §9$s§() : Boolean
      {
         return this.§7!E§ > 0 && this.§4!N§ >= this.§7!E§;
      }
      
      public function get §3#§() : Boolean
      {
         return this.§9$s§ && !this.§0#1§;
      }
      
      public function get id() : int
      {
         return this.§9!4§;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get name() : String
      {
         return this.§4"4§;
      }
      
      public function §'K§() : String
      {
         return "(" + this.§9!4§ + ")";
      }
      
      public function get score() : int
      {
         return this.§4!N§;
      }
      
      public function set score(param1:int) : void
      {
         this.§4!N§ = param1;
      }
      
      public function get goal() : int
      {
         return this.§7!E§;
      }
      
      public function set goal(param1:int) : void
      {
         this.§7!E§ = param1;
      }
      
      public function get award() : int
      {
         return this.§^$P§;
      }
      
      public function set award(param1:int) : void
      {
         this.§^$P§ = param1;
      }
      
      public function get rewarded() : Boolean
      {
         return this.§0#1§;
      }
      
      public function set rewarded(param1:Boolean) : void
      {
         this.§0#1§ = param1;
      }
      
      public function get completed() : Boolean
      {
         return this.§[$,§;
      }
      
      public function get params() : Vector.<int>
      {
         return this.§"$l§;
      }
      
      public function get § D§() : Boolean
      {
         return this.§"$l§.length > 0;
      }
      
      public function get §^!a§() : Boolean
      {
         return this.§9!y§;
      }
   }
}

