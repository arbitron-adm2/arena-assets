package §2"v§
{
   import § !P§.*;
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"%H§.§'%u§;
   import §#"V§.§<"4§;
   import §##y§.§9§;
   import §#%!§.§7V§;
   import §#%!§.§[N§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%[§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §2!-§.HpChangeEvent;
   import §2"L§.§!#H§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2o§.§]#@§;
   import §4!!§.§6$V§;
   import §4u§.§!!o§;
   import §6%2§.§'"Y§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§8#p§;
   import §9%k§.§?%o§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §=&!§.§&$a§;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import config.achievements.§!$L§;
   import config.achievements.§"!&§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §##6§ extends Sprite
   {
      
      private static const §>$n§:int = 110;
      
      private static const §2x§:int = 100;
      
      private static const §>%W§:int = 200;
      
      private var §]";§:Vector.<§@G§> = new Vector.<§@G§>(0);
      
      private var arrows:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      private var §>%P§:Number;
      
      private var §6"T§:int;
      
      public function §##6§()
      {
         super();
      }
      
      private static function §<%^§(param1:§@G§, param2:§#$s§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         _loc3_ = {"level":param2.§,X§()};
         _loc4_ = §0%§.format(§0$N§.REQUIRED_LEVEL_HINT,_loc3_);
         var _loc5_:§!!o§ = new §!!o§(_loc4_);
         param1.§-$S§().§<$U§(_loc5_);
      }
      
      private static function §9$,§(param1:§@G§, param2:BackpackItem, param3:§#$s§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:§#$s§ = null;
         var _loc8_:BackpackItem = null;
         var _loc4_:Boolean = §@&&§.isMe();
         var _loc5_:§6#Q§ = §@&&§.getProfile().§ !>§();
         if(param2.getCount() == 1)
         {
            if(Boolean(Application.userProfile.§3%^§().§8&E§(param3.upgradeId)) && _loc4_)
            {
               param1.setState(§@G§.§4#q§);
            }
            else
            {
               param1.setState(§@G§.§#!,§);
            }
         }
         else if(_loc4_)
         {
            if(§%%1§(param3))
            {
               if(§>$f§(param3))
               {
                  _loc7_ = §1!S§.§?!4§(param3.prevUpgradeId);
                  if(_loc7_)
                  {
                     _loc8_ = _loc5_.§8&E§(_loc7_.getId());
                     if((Boolean(_loc8_)) && _loc8_.getCount() > 0)
                     {
                        _loc6_ = true;
                     }
                  }
                  else
                  {
                     _loc6_ = true;
                  }
                  if(_loc6_)
                  {
                     param1.setState(§@G§.§3!+§);
                  }
               }
            }
            else
            {
               §<%^§(param1,param3);
            }
         }
      }
      
      private static function §>$f§(param1:§#$s§) : Boolean
      {
         var _loc2_:int = param1.prevUpgradeId;
         if(§#$b§(_loc2_))
         {
            return Boolean(§2$-§(_loc2_)) && Boolean(§3&3§(_loc2_));
         }
         return true;
      }
      
      private static function §%%1§(param1:§#$s§) : Boolean
      {
         return §@&&§.getProfile().getLevel() >= param1.§,X§();
      }
      
      private static function §#$b§(param1:int) : Boolean
      {
         return param1 < §'"Y§.§;9§;
      }
      
      private static function §2$-§(param1:int) : Boolean
      {
         return §@&&§.getProfile().§3%^§().§8&E§(param1) != null;
      }
      
      private static function §3&3§(param1:int) : Boolean
      {
         return §@&&§.getProfile().§3%^§().§8&E§(param1).§8"I§();
      }
      
      public function §,$s§(param1:int) : void
      {
         this.§6"T§ = param1;
      }
      
      public function update() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:§#$s§ = null;
         var _loc3_:§@G§ = null;
         var _loc4_:§<"4§ = null;
         var _loc5_:§@G§ = null;
         this.§>%P§ = 0;
         if(this.§]";§.length > 0)
         {
            _loc4_ = this.§]";§[this.§]";§.length - 1].§7$R§();
            if(_loc4_.hasEventListener(MouseEvent.CLICK))
            {
               _loc4_.removeEventListener(MouseEvent.CLICK,this.§,#N§);
            }
            if(_loc4_.hasEventListener(UpgradeEvent.NAME))
            {
               _loc4_.removeEventListener(UpgradeEvent.NAME,this.§1%s§);
            }
            for each(_loc5_ in this.§]";§)
            {
               removeChild(_loc5_.getContainer());
            }
            this.§]";§.length = 0;
         }
         for each(_loc1_ in this.arrows)
         {
            removeChild(_loc1_);
         }
         this.arrows.length = 0;
         for each(_loc2_ in §1@§.§""!§())
         {
            if(_loc2_.prevUpgradeId == this.§6"T§)
            {
               this.§6$j§(_loc2_);
            }
         }
         this.§&$H§();
         for each(_loc3_ in this.§]";§)
         {
            if(!_loc3_.§'#]§())
            {
               this.§%%U§(_loc3_);
            }
         }
         this.center();
         this.§%!T§();
      }
      
      private function §%%U§(param1:§@G§) : void
      {
         var _loc3_:§@G§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:uint = 0;
         var _loc2_:Vector.<§@G§> = new Vector.<§@G§>(0);
         var _loc4_:int = 0;
         for each(_loc3_ in this.§]";§)
         {
            _loc12_ = _loc3_.§'#]§() ? _loc3_.§'#]§().prevUpgradeId : _loc3_.§?!t§;
            _loc13_ = param1.§'#]§() ? param1.§'#]§().upgradeId : param1.§?!t§;
            if(_loc3_ != param1 && _loc12_ == _loc13_)
            {
               _loc2_.push(_loc3_);
            }
            if(Boolean(_loc3_.§'#]§()) && _loc3_.§'#]§().level > _loc4_)
            {
               _loc4_ = _loc3_.§'#]§().level;
            }
         }
         _loc6_ = false;
         _loc7_ = _loc2_.length == 3;
         if(_loc2_.length == 1)
         {
            _loc5_ = §6#A§.§!&6§(§+"'§.§^X§);
         }
         else if(_loc2_.length == 2)
         {
            if(this.arrows.length == 0 && _loc4_ < 2)
            {
               _loc5_ = §6#A§.§!&6§(§+"'§.§^",§);
               _loc6_ = true;
            }
            else
            {
               _loc5_ = §6#A§.§!&6§(§+"'§.§9!W§);
            }
         }
         else if(_loc7_)
         {
            if(this.arrows.length == 0 && _loc4_ < 2)
            {
               _loc5_ = §6#A§.§!&6§(§+"'§.§2!&§);
               _loc6_ = true;
            }
            else
            {
               _loc5_ = §6#A§.§!&6§(§+"'§.§=&;§);
            }
         }
         var _loc8_:int = 82;
         if(_loc5_)
         {
            _loc5_.y = param1.y + 34;
            _loc5_.x = param1.x + _loc8_;
            addChild(_loc5_);
            setChildIndex(_loc5_,0);
            this.arrows.push(_loc5_);
         }
         var _loc9_:int = §>$n§ * (_loc7_ ? 0.7 : 1);
         var _loc10_:Number = param1.y - _loc9_ * (_loc2_.length - 1) / 2;
         var _loc11_:uint = 0;
         while(_loc11_ < _loc2_.length)
         {
            _loc14_ = _loc2_[_loc11_].§'#]§().level - 1;
            if(_loc7_)
            {
               _loc2_[_loc11_].§;e§(true);
            }
            _loc2_[_loc11_].y = _loc10_ + _loc9_ * _loc11_;
            if(_loc6_)
            {
               if(_loc14_ == 0)
               {
                  _loc2_[_loc11_].x = §>%W§ - §2x§;
               }
               else
               {
                  _loc2_[_loc11_].x = _loc14_ * §>%W§ + _loc14_ * _loc8_;
               }
            }
            else
            {
               _loc2_[_loc11_].x = _loc14_ * §2x§ + _loc14_ * _loc8_;
            }
            if(this.§>%P§ > _loc2_[_loc11_].y)
            {
               this.§>%P§ = _loc2_[_loc11_].y;
            }
            _loc11_++;
         }
         this.§>%P§ -= 4;
         for each(_loc3_ in _loc2_)
         {
            this.§%%U§(_loc3_);
         }
      }
      
      private function §6$j§(param1:§#$s§) : void
      {
         var _loc4_:§#$s§ = null;
         var _loc2_:§@G§ = new §@G§(param1);
         var _loc3_:BackpackItem = §@&&§.getProfile().§ !>§().§8&E§(param1.getId());
         if(_loc3_)
         {
            §9$,§(_loc2_,_loc3_,param1);
         }
         _loc2_.addEventListener(UpgradeEvent.NAME,this.§1%s§);
         addChild(_loc2_.getContainer());
         this.§]";§.push(_loc2_);
         for each(_loc4_ in §1@§.§""!§())
         {
            if(_loc4_.prevUpgradeId == param1.upgradeId)
            {
               this.§6$j§(_loc4_);
            }
         }
      }
      
      private function §1%s§(param1:UpgradeEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function center() : void
      {
         var _loc2_:§@G§ = null;
         var _loc3_:MovieClip = null;
         var _loc1_:Number = this.§]";§[this.§]";§.length - 1].x;
         for each(_loc2_ in this.§]";§)
         {
            _loc2_.y -= this.§>%P§;
            _loc2_.x += Math.abs(_loc1_);
         }
         for each(_loc3_ in this.arrows)
         {
            _loc3_.y -= this.§>%P§;
            _loc3_.x += Math.abs(_loc1_);
         }
      }
      
      private function §%!T§() : void
      {
         var _loc1_:§@G§ = null;
         var _loc2_:§@G§ = null;
         var _loc3_:Vector.<§@G§> = null;
         var _loc4_:Boolean = false;
         for each(_loc2_ in this.§]";§)
         {
            _loc3_ = new Vector.<§@G§>(0);
            _loc4_ = false;
            for each(_loc1_ in this.§]";§)
            {
               if(Boolean(_loc2_.§'#]§()) && Boolean(_loc1_.§'#]§()) && _loc2_.§'#]§().upgradeId == _loc1_.§'#]§().prevUpgradeId)
               {
                  _loc3_.push(_loc1_);
                  if(!_loc4_ && (_loc1_.§##m§() == §@G§.§#!,§ || _loc1_.§##m§() == §@G§.§4#q§))
                  {
                     _loc4_ = true;
                  }
               }
            }
            if(_loc4_ && _loc3_.length > 1)
            {
               for each(_loc1_ in _loc3_)
               {
                  if(_loc1_.§##m§() != §@G§.§4#q§ && _loc1_.§##m§() != §@G§.§#!,§)
                  {
                     _loc1_.setState(§@G§.§%%8§);
                  }
               }
               return;
            }
         }
      }
      
      private function §&$H§() : void
      {
         var _loc2_:§@G§ = null;
         var _loc3_:§;#_§ = null;
         var _loc4_:§@G§ = null;
         var _loc5_:BackpackItem = null;
         var _loc6_:§<"4§ = null;
         var _loc7_:§,&F§ = null;
         var _loc8_:Object = null;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§]";§)
         {
            if(_loc2_.§##m§() == §@G§.§#!,§ || _loc2_.§##m§() == §@G§.§4#q§)
            {
               _loc1_ = true;
               break;
            }
         }
         _loc3_ = §<$c§.§ !=§(this.§6"T§);
         _loc4_ = new §@G§(_loc3_.getInfinite() ? null : this.§]";§[0].§'#]§());
         _loc5_ = §@&&§.getProfile().§3%^§().§8&E§(_loc3_.getId());
         if(!_loc1_ && (_loc5_ ? Boolean(!_loc5_.§8"I§()) : Boolean(true)))
         {
            _loc4_.setState(_loc3_.getHideInShop() ? §@G§.§%%8§ : §@G§.§3!+§);
            _loc6_ = _loc4_.§7$R§();
            _loc6_.setDisabled(!§@&&§.isMe());
            _loc6_.setVisible(§@&&§.isMe());
            _loc6_.removeAllWhenDisabled = true;
            if(_loc3_.getInfinite())
            {
               _loc6_.addEventListener(MouseEvent.CLICK,this.§,#N§);
               _loc8_ = §"!&§.§]?§(_loc3_.getId());
               _loc6_.setText(_loc8_ ? §0$N§.BUTTON_INFO : §0$N§.BUTTON_BUY);
               _loc6_.setQtip(_loc8_ ? §0$N§.SEARCH_ZONE_GRADE_W : "",§;#^§.§[!K§);
            }
            else
            {
               _loc4_.setState(§@G§.§3!+§);
               _loc4_.addEventListener(UpgradeEvent.NAME,this.§1%s§);
               _loc4_.§=%X§();
            }
            _loc7_ = §?%o§.§7#q§(_loc3_.getId());
            if((Boolean(_loc7_)) && _loc7_.getLevel() > §@&&§.getProfile().getLevel())
            {
               if(_loc3_.getHideInShop())
               {
                  _loc6_.setVisible(false);
                  _loc4_.§7#t§(§0%§.format(§0$N§.ITEM_TOBE_PRESENT,{"level":_loc7_.getLevel()}));
               }
               else if(!_loc5_ || !_loc5_.§8"I§())
               {
                  _loc4_.§7#t§(§0%§.format(§0$N§.ONE_LEVEL_ITEM_TOBE_PRESENT,{"level":_loc7_.getLevel()}));
               }
            }
         }
         else
         {
            _loc4_.setState(§@G§.§#!,§);
         }
         _loc4_.§]$o§(_loc3_);
         _loc4_.x = -180;
         _loc4_.y = 0;
         _loc4_.§?!t§ = this.§6"T§;
         addChild(_loc4_.getContainer());
         this.§]";§.push(_loc4_);
      }
      
      private function §,#N§(param1:MouseEvent) : void
      {
         var weaponById:§;#_§;
         var curLevel:int;
         var multiplier:uint;
         var msg:String;
         var msg2:String;
         var bi:BackpackItem = null;
         var n:int = 0;
         var missing:String = null;
         var levels:String = null;
         var event:MouseEvent = param1;
         var isAward:Object = §"!&§.§]?§(this.§6"T§);
         if(isAward)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.SEARCH_ZONE_GRADE_W);
            return;
         }
         bi = §@&&§.getProfile().§3%^§().§8&E§(this.§6"T§);
         weaponById = §<$c§.§ !=§(this.§6"T§);
         curLevel = bi ? int(bi.getLevel()) : 0;
         multiplier = Boolean(bi) && bi.isInfinite() ? uint(Math.max(1,weaponById.getMaxLevel() - curLevel)) : weaponById.getMaxLevel();
         msg = "";
         msg2 = "";
         if(Boolean(bi) && Boolean(bi.isInfinite()) && !bi.§8"I§())
         {
            n = int(bi.getMaxLevel() - bi.getLevel());
            missing = Social.§-%c§.§4!]§(n,§0$N§.MISSING_PLURALS);
            levels = Social.§-%c§.§4!]§(n,§0$N§.LEVELS_PLURALS);
            msg = §0%§.format(§0$N§.WEAPON_IMPROVE_NEED,{
               "current":bi.getLevel(),
               "max":bi.getMaxLevel()
            });
            msg2 = §0%§.format(§0$N§.WEAPON_MAX_IMPROVE_PRICE,{
               "missing":missing,
               "count":n,
               "levels":levels
            });
         }
         §8"%§.§8"!§.§3J§(weaponById,function():void
         {
            update();
            dispatchEvent(new Event(§]#@§.BUY_ITEM));
         },multiplier,msg,msg2);
      }
   }
}

