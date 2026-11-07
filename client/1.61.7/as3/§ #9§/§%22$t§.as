package § #9§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §&&6§.§'%"§;
   import §-%B§.§-"o§;
   import §0%[§.§0%§;
   import §2#x§.*;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§1""§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §"$t§
   {
      
      public function §"$t§()
      {
         super();
      }
      
      public static function §<$W§(param1:UserProfile, param2:MovieClip, param3:§+%]§ = null) : void
      {
         var _loc6_:uint = 0;
         var _loc7_:Vector.<UserProfile> = null;
         var _loc8_:uint = 0;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:§1""§ = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:String = null;
         var _loc16_:String = null;
         var _loc17_:Vector.<§+%]§> = null;
         var _loc18_:§+%]§ = null;
         var _loc19_:Vector.<UserProfile> = null;
         var _loc20_:UserProfile = null;
         var _loc21_:Boolean = false;
         var _loc22_:String = null;
         var _loc23_:DisplayObject = null;
         var _loc24_:§`&-§ = null;
         var _loc4_:§]$;§ = §8"%§.§?!W§.§4"m§;
         var _loc5_:Boolean = §8"%§.§?!W§.inBattle;
         if(param2.idLabel)
         {
            TextField(param2.idLabel).text = §0%§.format(§0$N§.GAMER_ID,{"id":param1.getId().toString()});
         }
         if(param2.userName)
         {
            if(Boolean(param1.§'&;§()) && (!_loc4_ || !_loc5_ || !_loc4_.§=$S§().§?$p§))
            {
               TextField(param2.userName).text = param1.§'&;§();
            }
            else if(param1.getCharName())
            {
               TextField(param2.userName).text = param1.getCharName();
            }
            else
            {
               TextField(param2.userName).text = §2"e§.NA;
            }
         }
         if(param2.userName_short)
         {
            if(param1)
            {
               TextField(param2.userName_short).text = §4! §.§0!L§(param1);
            }
            else
            {
               TextField(param2.userName_short).text = §2"e§.NA;
            }
         }
         if(param2.level)
         {
            if(param1.getLevel())
            {
               TextField(param2.level).text = param1.getLevel().toString();
            }
            else
            {
               TextField(param2.level).text = §2"e§.NA;
            }
         }
         if(param2.hp)
         {
            if(param1.stats.§8+§.value > 0)
            {
               TextField(param2.hp).text = param3 ? §4! §.§@#F§(param3.attributes.hp.§8!R§(),param3.attributes.hp.§'"S§()) : §4! §.§@#F§(param1.stats.§8+§.value,param1.stats.§3$L§.value);
            }
            else
            {
               TextField(param2.hp).text = §2"e§.NA;
            }
            §&$9§.§`F§(param2.hpLabel,§0$N§.HP);
         }
         if(param2.teamHp)
         {
            _loc6_ = param1.§##,§();
            if(_loc6_)
            {
               TextField(param2.teamHp).text = _loc6_.toString();
            }
            else
            {
               TextField(param2.teamHp).text = §2"e§.NA;
            }
            TextField(param2.teamHpLabel).text = §0$N§.TEAM_HP_LABEL;
         }
         if(param2.teamSize)
         {
            _loc7_ = param1.§7$F§();
            if(_loc7_)
            {
               TextField(param2.teamSize).text = _loc7_.length.toString();
            }
            else
            {
               TextField(param2.teamSize).text = §2"e§.NA;
            }
            TextField(param2.teamLabel).text = §0$N§.TEAM_LABEL;
            §&$9§.§`F§(param2.teamLabel,§0$N§.TEAM_LABEL);
         }
         if(param2.rankSign)
         {
            if(§4! §.§5!'§(param1) && (§4! §.isMe(param1) || !_loc4_ || !_loc5_ || !_loc4_.§=$S§().§["%§))
            {
               _loc8_ = param1.§+X§();
               _loc9_ = _loc8_ == 0;
               param2.rankSign.text.visible = !_loc9_;
               param2.rankSign.simple.visible = !_loc9_;
               param2.rankSign.ruby.visible = _loc9_;
               if(!_loc9_)
               {
                  param2.rankSign.text.text = _loc8_.toString();
               }
            }
            else
            {
               param2.rankSign.visible = false;
            }
         }
         if(param2.rating)
         {
            if(§1""§.§'$d§)
            {
               _loc11_ = §1""§.§=$S§(param1.getRating());
               TextField(param2.rating).text = §2"e§.§5%t§(_loc11_.§9#V§);
               TextField(param2.ratingLabel).autoSize = TextFieldAutoSize.LEFT;
               §&$9§.§`F§(param2.ratingLabel,§0$N§.RATING_LEVEL);
            }
            else
            {
               TextField(param2.rating).text = §2"e§.§5%t§(param1.getRating());
               §&$9§.§`F§(param2.ratingLabel,§0$N§.RATING);
            }
            _loc10_ = !_loc4_ || !_loc5_ || !_loc4_.§=$S§().§>%z§;
            param2.rating.visible = §1""§.§8# § && _loc10_;
            param2.ratingLabel.visible = §1""§.§8# § && _loc10_;
         }
         if(param2.armor)
         {
            TextField(param2.armor).text = param3 ? §4! §.§@#F§(param3.attributes.armor.§8!R§(),param3.attributes.armor.§'"S§()) : §4! §.§@#F§(param1.stats.§+#+§.value,param1.stats.§>%v§.value);
            §&$9§.§`F§(param2.armorLabel,§0$N§.ARMOR);
         }
         if(param2.attack)
         {
            TextField(param2.attack).text = param3 ? §4! §.§@#F§(param3.attributes.attack.§8!R§(),param3.attributes.attack.§'"S§()) : §4! §.§@#F§(param1.stats.§'$Q§.value,param1.stats.§>%Y§.value);
            §&$9§.§`F§(param2.attackLabel,§0$N§.ATTACK);
         }
         if(param2.money)
         {
            TextField(param2.money).text = param1.§#!G§().toString();
         }
         if(param2.realMoney)
         {
            TextField(param2.realMoney).text = param1.§@$D§().toString();
         }
         if(param2.reactionRate)
         {
            _loc12_ = 0;
            if(_loc4_)
            {
               _loc17_ = _loc4_.§?%j§(param1).§1!n§(true);
               if(_loc17_.length)
               {
                  _loc18_ = _loc17_[0];
                  _loc19_ = _loc4_.§1#m§(_loc18_);
                  for each(_loc20_ in _loc19_)
                  {
                     _loc12_ += §#&>§.§1$9§(_loc20_,Bonus.REACTION_REDUCTION);
                  }
               }
            }
            _loc13_ = param1.§^!n§() + _loc12_;
            _loc14_ = §@$&§.§#!F§(param1.§=u§()) + _loc13_;
            _loc15_ = §0%§.format(§0$N§.LEVEL_REQUIREMENT,{"level":_loc14_.toString()});
            _loc16_ = "#524336";
            if(_loc13_ > 0)
            {
               _loc16_ = "#329300";
            }
            else if(_loc13_ < 0)
            {
               _loc16_ = "#B40109";
            }
            TextField(param2.reactionRate).htmlText = "<font color=\'" + _loc16_ + "\'>" + _loc15_ + "</font>";
         }
         if(Boolean(param2.race) && Boolean(param1.getRace()))
         {
            TextField(param2.race).text = param1.getRace().§7%z§();
            §&$9§.§`F§(param2.raceLabel,§0$N§.RACE);
            if(!§1""§.§8# §)
            {
               if(Boolean(param2.rating) && Boolean(param2.ratingLabel))
               {
                  param2.race.y = param2.rating.y;
                  param2.raceLabel.y = param2.ratingLabel.y;
               }
            }
         }
         if(Boolean(param2["emblemContainer"]) && Boolean(param2["rankContainer"]))
         {
            _loc21_ = param1.§!#E§() && !param1.clanMember.isBlocked();
            param2["emblemContainer"].visible = _loc21_;
            param2["rankContainer"].visible = _loc21_;
            if(_loc21_)
            {
               §=%_§.§!-§(param2["emblemContainer"]["logo"],param1.clanMember.clanEmblem);
               param2["clanNameLabel"].text = param1.clanMember.clanName;
               param2["clanRatingLabel"].text = §2"e§.§5%t§(param1.clanMember.clanSeasonRating);
               _loc22_ = "rankIconContainer";
               _loc23_ = param2["rankContainer"].getChildByName(_loc22_);
               if(_loc23_)
               {
                  param2["rankContainer"].removeChild(_loc23_);
               }
               _loc24_ = §`&-§(§=%_§.§&#s§(param1.clanMember.rank));
               _loc23_ = _loc24_.getContainer();
               _loc23_.name = _loc22_;
               _loc24_.x = 7.25;
               _loc24_.y = (41 - _loc24_.height) * 0.5 + 5;
               param2["rankContainer"].addChild(_loc23_);
            }
            else
            {
               param2["clanNameLabel"].text = §<"G§.§%! §("PLAYER_NOT_IN_CLAN");
               param2["clanRatingLabel"].text = "-";
            }
         }
      }
      
      public static function §!!1§(param1:§6!G§, param2:UserProfile, param3:DisplayObjectContainer, param4:§`!d§ = null, param5:§^$E§ = null, param6:§^%%§ = null) : §6!G§
      {
         var _loc7_:§`!d§ = null;
         var _loc8_:§6!G§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         if(Boolean(param2) && Boolean(param3))
         {
            if(param1)
            {
               _loc10_ = param1.getClip();
               if(param3.contains(_loc10_))
               {
                  param3.removeChild(_loc10_);
               }
            }
            _loc7_ = param4 != null ? param4 : param2.getRace();
            _loc8_ = new §6!G§(_loc7_,param2.§5"L§());
            _loc9_ = _loc8_.getClip();
            _loc9_.scaleX = _loc9_.scaleY = param3.width / 40;
            _loc9_.x = param3.width * 0.5 - 1.5;
            param3.addChild(_loc9_);
            _loc9_.y = _loc9_.parent.getBounds(_loc9_.parent).bottom - _loc9_.height - _loc9_.getBounds(_loc9_.parent).top;
            _loc9_.name = "charClip";
            _loc8_.§7"i§(param5 ? param5 : (param2.§2u§() ? §<$c§.§^&1§(param2.§2u§().getId(),_loc7_) : null));
            _loc8_.§;"U§(param6 ? param6 : param2.§+!b§());
            _loc8_.§!$B§();
            if(_loc8_.§]!D§())
            {
               MovieClip(_loc8_.getClip().parent.parent).stop();
            }
            return _loc8_;
         }
         return null;
      }
   }
}

