package ru.pragmatix.wormix.social.common.post
{
   import § !8§.§`!d§;
   import § !P§.*;
   import § "d§.§,!c§;
   import § #9§.§"$t§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import § K§.§^#V§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#",§.§+!h§;
   import §#"V§.§8"@§;
   import §##j§.§!%&§;
   import §##j§.§7,§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&!?§.§@&@§;
   import §&!@§.§!6§;
   import §&!@§.§5"`§;
   import §&!@§.Assassin;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Miner;
   import §&!@§.Samurai;
   import §&!m§.§;#[§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&%X§.§5F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$j§.§'-§;
   import §'%!§.§>%k§;
   import §'%!§.§@!Z§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!§.§[k§;
   import §0"L§.§+# §;
   import §0%"§.§[!^§;
   import §0%[§.*;
   import §0%z§.§1&6§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.§`"^§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3#a§.§-!`§;
   import §4$b§.§6!G§;
   import §4&F§.*;
   import §4f§.§-&§;
   import §6",§.§[%w§;
   import §6#Z§.§&!Z§;
   import §6$z§.§!"§;
   import §6$z§.BonusStat;
   import §6%2§.§'"Y§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#`§.§#%r§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §9&+§.§>&5§;
   import §;$%§.§0%%§;
   import §<!^§.§'$e§;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%k§.*;
   import §=!p§.§'%#§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §=#g§.§!"X§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §=7§.*;
   import §>"w§.§&%>§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§&#Z§;
   import §@!N§.§'+§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§8%6§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@#K§.§-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §[%§.Dragon;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^§.§ $^§;
   import §^§.§8$y§;
   import §^§.§8%l§;
   import §^§.§>o§;
   import §`%&§.§@&,§;
   import §`%&§.§`§;
   import avmplus.getQualifiedClassName;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import org.gestouch.events.GestureEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.gui.MainInterface;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.treasury.DonateClanRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.server.ResetParametersResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §##Z§ extends §&%>§ implements §^#V§
   {
      
      protected static const log:§&`§ = new §&`§(§##Z§);
      
      protected var §+&C§:§>o§;
      
      protected var §0$O§:§ $^§;
      
      protected var §0%b§:§8%l§;
      
      protected var §[O§:§8$y§;
      
      protected var iconsScheme:§#%r§;
      
      public function §##Z§(param1:§%"'§, param2:§1#+§, param3:§#%r§, param4:String = "", param5:§ $^§ = null, param6:§8$y§ = null, param7:§8%l§ = null)
      {
         super(param1,param2,param4);
         this.iconsScheme = param3;
         this.§0$O§ = param5 || new § $^§();
         this.§0%b§ = param7 || new §8%l§();
         this.§[O§ = param6 || new §8$y§();
         this.§+&C§ = new §>o§();
         this.§+&C§.§4!E§();
         if(§'!t§)
         {
            this.§0$O§.§4!E§();
         }
         if(§'"A§)
         {
            this.§0%b§.§4!E§();
         }
         if(§%#h§)
         {
            this.§[O§.§4!E§();
         }
      }
      
      public function §["L§(param1:§`!d§) : void
      {
         this.§!!L§(this.§0%b§.§2$Q§,this.§0%b§.§8"U§,this.§0%b§.§["L§,{"race":param1.§7%z§()},this.iconsScheme.§8$=§(param1));
      }
      
      public function §=$v§(param1:§`!d§, param2:§&"P§) : void
      {
         this.§!!L§(this.§0%b§.§>$l§,this.§0%b§.§8"U§,this.§0%b§.§=$v§,{"skin":param2.§7%z§()},this.iconsScheme.§]!r§(param1,param2));
      }
      
      public function rubyFoundInHouse(param1:UserProfile) : void
      {
         var _loc2_:Object = this.§1"0§(param1);
         this.§!!L§(this.§0%b§.§"!H§,this.§0%b§.§8"U§,this.§0%b§.rubyFoundInHouse,_loc2_,this.iconsScheme.rubyFoundInHouse);
      }
      
      public function activityPumpFriendsReaction(param1:UserProfile, param2:uint) : void
      {
      }
      
      public function requestPumpReaction(param1:UserProfile, param2:Boolean) : void
      {
         var params:Object = null;
         var profile:UserProfile = param1;
         var needToAsk:Boolean = param2;
         if(profile)
         {
            params = this.§1"0§(profile);
            if(needToAsk)
            {
               if(§8"%§.§&S§.§2%C§())
               {
                  this.§ !N§(profile,"",this.§[O§.§&&-§,this.§[O§.requestPumpReaction,params,this.iconsScheme.requestPumpReaction,null,function():void
                  {
                     §8"%§.§&S§.§-#6§(false);
                  });
               }
            }
            else
            {
               §8"%§.§^%W§.§[#l§();
               notify(profile,this.§[O§.requestPumpReaction,params,this.iconsScheme.requestPumpReaction);
            }
         }
         else
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,this.§[O§.§%$j§);
         }
      }
      
      public function §8%I§(param1:uint) : void
      {
         §8"%§.§^%W§.§[#l§();
         §!#Z§(this.§0%b§.§8%I§,{"level":param1},this.iconsScheme.§5&<§(Application.userProfile.getRace()));
      }
      
      public function §"%k§(param1:§&!e§) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:String = this.§0%b§.§?$=§[int(Math.random() * this.§0%b§.§?$=§.length)];
         if(param1 is §;#_§ || param1 is §^$E§ || param1 is §^%%§)
         {
            _loc3_ = this.§4!d§(param1);
         }
         if(_loc3_)
         {
            this.§,&-§(this.§0%b§.§`>§,this.§0%b§.§8"U§,_loc2_,_loc3_,{});
         }
         else
         {
            this.§!!L§(this.§0%b§.§`>§,this.§0%b§.§8"U§,param1.§7%z§() + "! " + _loc2_,{},this.iconsScheme.bonusIcon);
         }
      }
      
      public function §3!S§(param1:§6$3§, param2:int, param3:MovieClip) : void
      {
         var _loc4_:uint = 0;
         var _loc5_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:Sprite = null;
         §8"%§.§^%W§.§[#l§();
         _loc4_ = this.§0%b§.§7!T§.length;
         _loc5_ = {
            "achievement_name":param1.levels[param2].name,
            "user_name":§4! §.§5l§(Application.userProfile)
         };
         var _loc6_:String = §0%§.format(this.§0%b§.§7!T§[int(Math.random() * _loc4_)],_loc5_);
         if(param1 is §'%u§ && §'%u§(param1).isTotal)
         {
            _loc7_ = §^t§.§1!3§(param1.id);
            _loc8_ = this.iconsScheme.§9#A§(_loc7_);
            §!#Z§(_loc6_,{},_loc8_);
         }
         else
         {
            _loc9_ = §&#Z§.§]`§(param3,param1);
            §'"A§.§^#U§(_loc6_,§0$N§.GAME_NAME,_loc9_);
         }
      }
      
      protected function §4!d§(param1:§&!e§) : DisplayObject
      {
         return §&#Z§.§]`§(§'+§.getMenuIcon(param1),param1);
      }
      
      protected function §]!b§(param1:§&!e§) : String
      {
         var _loc2_:String = null;
         if(param1 is §;#_§)
         {
            _loc2_ = this.iconsScheme.§]#M§(§;#_§(param1));
         }
         else if(param1 is §^$E§)
         {
            _loc2_ = this.iconsScheme.§@$W§(§^$E§(param1));
         }
         else if(param1 is §^%%§)
         {
            _loc2_ = this.iconsScheme.§3k§(§^%%§(param1));
         }
         if(!_loc2_ || !_loc2_.length)
         {
            _loc2_ = this.iconsScheme.bonusIcon;
         }
         return _loc2_;
      }
      
      public function §^$G§(param1:§&!e§) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = §;#[§.§-#T§(param1);
            if(param1 is §^$E§)
            {
               this.§?%&§(_loc2_,param1 as §^$E§);
            }
            else if(param1 is §;#_§)
            {
               if(param1.§4$n§() >= §,! §.§8"Y§ || param1.getRealPrice() >= §,! §.§8![§)
               {
                  this.§>&$§(_loc2_,param1 as §;#_§);
               }
               else
               {
                  this.§"#i§(_loc2_,param1 as §;#_§);
               }
            }
            else if(param1 is §^%%§)
            {
               this.§1"w§(_loc2_,param1 as §^%%§);
            }
         }
      }
      
      protected function §"#i§(param1:String, param2:§;#_§) : void
      {
      }
      
      protected function §>&$§(param1:String, param2:§;#_§) : void
      {
         var weaponName:String = param1;
         var item:§;#_§ = param2;
         if(§8"%§.§&S§.§2%C§())
         {
            this.§,&-§(this.§0%b§.§%x§,this.§0%b§.§8"U§,this.§0%b§.§"#i§,this.§4!d§(item),{"weapon":weaponName},null,function():void
            {
               §8"%§.§&S§.§-#6§(false);
            });
         }
      }
      
      protected function §?%&§(param1:String, param2:§^$E§) : void
      {
         var hatName:String = param1;
         var item:§^$E§ = param2;
         if(§8"%§.§&S§.§2%C§())
         {
            this.§,&-§(this.§0%b§.§0!=§,this.§0%b§.§8"U§,this.§0%b§.§?%&§,this.§4!d§(item),{"hat":hatName},null,function():void
            {
               §8"%§.§&S§.§-#6§(false);
            });
         }
      }
      
      protected function §1"w§(param1:String, param2:§^%%§) : void
      {
         var artifactName:String = param1;
         var item:§^%%§ = param2;
         if(§8"%§.§&S§.§2%C§())
         {
            this.§,&-§(this.§0%b§.§9$X§,this.§0%b§.§8"U§,this.§0%b§.§1"w§,this.§4!d§(item),{"artifact":artifactName},null,function():void
            {
               §8"%§.§&S§.§-#6§(false);
            });
         }
      }
      
      public function §[%,§(param1:§&!e§) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = §;#[§.§-#T§(param1);
            if(param1 is §^$E§)
            {
               this.§%I§(_loc2_,param1 as §^$E§);
            }
            else if(param1 is §^%%§)
            {
               this.§7$O§(_loc2_,param1 as §^%%§);
            }
            else if(param1 is §;#_§ && param1.getId() > §'"Y§.§;9§)
            {
               this.§4$G§(_loc2_,param1 as §;#_§);
            }
         }
      }
      
      protected function §%I§(param1:String, param2:§^$E§) : void
      {
         §8"%§.§^%W§.§[#l§();
         §'"A§.§^#U§(§0%§.format(this.§0%b§.§<$J§,{"item":param1}),§0$N§.GAME_NAME,this.§4!d§(param2));
      }
      
      protected function §7$O§(param1:String, param2:§^%%§) : void
      {
         §8"%§.§^%W§.§[#l§();
         §'"A§.§^#U§(§0%§.format(this.§0%b§.§<$J§,{"item":param1}),§0$N§.GAME_NAME,this.§4!d§(param2));
      }
      
      protected function §4$G§(param1:String, param2:§;#_§) : void
      {
         var weaponName:String = param1;
         var item:§;#_§ = param2;
         if(!§8"%§.§&S§.§2%C§())
         {
            this.§,&-§(this.§0%b§.§%x§,this.§0%b§.§8"U§,this.§0%b§.§<$J§,this.§4!d§(item),{"item":weaponName},null,function():void
            {
               §8"%§.§&S§.§-#6§(false);
            });
         }
      }
      
      protected function newItems(param1:Array, param2:Array) : void
      {
      }
      
      public function §=#X§(param1:Array) : void
      {
         var _loc3_:§&!e§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(§;#[§.§-#T§(_loc3_));
         }
         this.newItems(_loc2_,param1);
      }
      
      public function newTeamMate(param1:UserProfile, param2:Boolean = true) : void
      {
         var _loc3_:Object = this.§6%B§(param1);
         if(param2)
         {
            this.§ !N§(param1,this.§[O§.§-#1§,this.§[O§.§>"q§,this.§[O§.newTeamMate,_loc3_,this.iconsScheme.newTeamMateYou);
         }
         else
         {
            this.§!!L§(§0%§.format(this.§0$O§.newTeamMate,_loc3_),this.§0%b§.§8"U§,this.§0$O§.newTeamMate,_loc3_,this.iconsScheme.newTeamMateYou);
         }
      }
      
      public function §'"2§(param1:§]$d§, param2:§4$z§, param3:Function = null) : void
      {
         var _loc6_:§8%6§ = null;
         var _loc7_:§8%6§ = null;
         var _loc4_:UserProfile = §4! §.§!$g§(param1.§="T§());
         var _loc5_:Vector.<UserProfile> = param1.§6"M§();
         if(param1.battleType == §&$a§.§^#f§)
         {
            if(param1.§<",§())
            {
               if(param1.wager.id == §-"P§.§4&<§)
               {
                  this.§@%6§(param2.result,_loc4_,null);
               }
               else if(param1.wager.id == §-"P§.§="%§)
               {
                  this.§@%6§(param2.result,null,_loc5_[0]);
               }
            }
            else
            {
               this.§%u§(_loc5_[0],param2.result);
            }
         }
         else if(param1.battleType == §&$a§.§#"g§)
         {
            if(param1.wager.id == §-"P§.§,%@§ || param1.wager.id == §-"P§.§`$=§)
            {
               if(param1.§<",§())
               {
                  this.§@%6§(param2.result,_loc4_,_loc5_.length ? _loc5_[0] : null);
               }
               else
               {
                  this.§%u§(_loc5_[0],param2.result);
               }
            }
            else
            {
               this.§#"@§(_loc4_,_loc5_,param2.result,param2.rating);
            }
         }
         else if(param1.battleType == §&$a§.§^!p§)
         {
            this.§6%8§(param2.result,param2.§-!K§.name);
         }
         else if(param1.battleType == §&$a§.§5!w§)
         {
            if(!param1.§>$'§())
            {
               _loc6_ = §6%k§.§7%q§(param1.missionIds[0]);
               _loc7_ = param1.missionIds.length > 1 ? §6%k§.§7%q§(param1.missionIds[1]) : null;
               if(param1.§]_§())
               {
                  this.§+"p§(_loc6_,_loc7_,param2.result,_loc4_);
               }
               else if(§6%k§.§8y§(param1.missionIds[0]))
               {
                  this.§%!2§(_loc6_,param2.result,_loc4_);
               }
               else
               {
                  this.§`#v§(_loc6_.§7%z§());
               }
            }
         }
         if(param3 != null)
         {
            param3();
         }
      }
      
      public function §6%8§(param1:§<$Z§, param2:String) : void
      {
         var _loc3_:String = param1 == §<$Z§.§+%I§ ? this.§0$O§.missionComplete : this.§0$O§.§@#P§;
         var _loc4_:Object = {"name_mission":param2};
         §8"%§.§^%W§.§[#l§();
         if(§'!t§)
         {
            log.info(this + ".postBattleMission: activityPoster",§[#Z§.NAME);
            postActivity(_loc3_,_loc4_,this.iconsScheme.missionComplete);
         }
         else
         {
            log.info(this + ".postBattleMission: postOnWall",§[#Z§.NAME);
            §!#Z§(_loc3_,_loc4_,this.iconsScheme.missionComplete);
         }
      }
      
      protected function §="s§() : void
      {
         this.§!!L§(this.§0$O§.missionComplete,this.§0%b§.§8"U§,this.§0$O§.missionComplete,null,this.iconsScheme.missionComplete);
      }
      
      public function §`#v§(param1:String) : void
      {
         var _loc2_:Object = {"name_mission":param1};
         §8"%§.§^%W§.§[#l§();
         if(§'!t§)
         {
            postActivity(this.§0%b§.§&$j§,_loc2_,this.iconsScheme.tutorialIcon);
         }
         else
         {
            §!#Z§(this.§0%b§.§&$j§,_loc2_,this.iconsScheme.tutorialIcon);
         }
      }
      
      public function §^_§(param1:int, param2:int) : void
      {
         §8"%§.§^%W§.§[#l§();
         §!#Z§(this.§0%b§.gladiatorComplete,{
            "winCount":param1,
            "defeatCount":param2
         },this.iconsScheme.gladiatorComplete);
      }
      
      public function §+"p§(param1:§8%6§, param2:§8%6§, param3:§<$Z§, param4:UserProfile = null) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         if(param3.equals(§<$Z§.§+%I§))
         {
            _loc6_ = param4 ? this.§0$O§.§-$V§ : this.§0$O§.§<§;
            _loc5_ = param4 ? this.iconsScheme.winSuperbossWithFriend : this.iconsScheme.winSuperboss;
         }
         else if(param3.equals(§<$Z§.§7!i§))
         {
            _loc6_ = this.§0%b§.§]"H§;
            _loc5_ = param4 ? this.iconsScheme.looseSuperbossWithFriend : this.iconsScheme.looseSuperboss;
         }
         else
         {
            _loc6_ = param4 ? this.§0%b§.§5"-§ : this.§0%b§.§#"M§;
            _loc5_ = param4 ? this.iconsScheme.looseSuperbossWithFriend : this.iconsScheme.looseSuperboss;
         }
         var _loc7_:String = §4! §.§5l§(Application.userProfile);
         var _loc8_:String = param4 ? §4! §.§5l§(param4) : "";
         var _loc9_:Object = {
            "userName":_loc7_,
            "friendName":_loc8_,
            "bossName":param2.§7%z§(),
            "bossName2":param1.§7%z§()
         };
         §8"%§.§^%W§.§[#l§();
         §!#Z§(_loc6_,_loc9_,_loc5_);
      }
      
      public function §%!2§(param1:§8%6§, param2:§<$Z§, param3:UserProfile = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(param2.equals(§<$Z§.§+%I§))
         {
            _loc4_ = param3 ? this.§0$O§.§6#V§ : this.§0%b§.§3$a§(param1.getId());
            _loc5_ = this.iconsScheme.§9#A§(param1.getId());
         }
         else if(param2.equals(§<$Z§.§7!i§))
         {
            _loc4_ = this.§0%b§.§]"H§;
            _loc5_ = param3 ? this.iconsScheme.looseSuperbossWithFriend : this.iconsScheme.looseSuperboss;
         }
         else
         {
            _loc4_ = param3 ? this.§0%b§.§4!$§ : this.§0%b§.§%#s§;
            _loc5_ = param3 ? this.iconsScheme.looseSuperbossWithFriend : this.iconsScheme.looseSuperboss;
         }
         var _loc6_:String = §4! §.§5l§(Application.userProfile);
         var _loc7_:String = param3 ? §4! §.§5l§(param3) : "";
         §8"%§.§^%W§.§[#l§();
         §!#Z§(_loc4_,{
            "userName":_loc6_,
            "friendName":_loc7_,
            "bossName":param1.§7%z§()
         },_loc5_);
      }
      
      public function §#"@§(param1:UserProfile, param2:Vector.<UserProfile>, param3:§<$Z§, param4:int) : void
      {
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:Object = null;
         var _loc5_:Boolean = param3 == §<$Z§.§+%I§;
         var _loc6_:Boolean = param3 == §<$Z§.§7!i§;
         var _loc7_:int = int(Application.userProfile.getRating());
         var _loc8_:String = param1 ? §4! §.§5l§(param1) : "";
         var _loc9_:String = param2 ? §4! §.§5l§(param2[0]) : "";
         var _loc10_:String = Boolean(param2) && param2.length > 1 ? §4! §.§5l§(param2[1]) : "";
         if(!param1)
         {
            if(param2.length > 1)
            {
               _loc12_ = _loc5_ ? this.§0%b§.§`%r§ : (_loc6_ ? this.§0%b§.§]"H§ : this.§0%b§.§"#;§);
               _loc11_ = _loc5_ ? this.iconsScheme.winTwoOpponents : this.iconsScheme.looseTwoOpponents;
               _loc13_ = {
                  "enemyName":_loc9_,
                  "enemyName2":_loc10_,
                  "rating":_loc7_
               };
            }
            else
            {
               _loc12_ = _loc5_ ? this.§0%b§.§`%r§ : (_loc6_ ? this.§0%b§.§]"H§ : this.§0%b§.looseInPvp);
               _loc11_ = _loc5_ ? this.iconsScheme.winInPvp : this.iconsScheme.looseInPvp;
               _loc13_ = {
                  "enemyName":_loc9_,
                  "rating":_loc7_
               };
            }
         }
         else
         {
            _loc12_ = _loc5_ ? this.§0%b§.§&#A§ : (_loc6_ ? this.§0%b§.§]"H§ : this.§0%b§.§"#;§);
            _loc11_ = _loc5_ ? this.iconsScheme.winWithFriend : this.iconsScheme.looseWithFriend;
            _loc13_ = {
               "allyName":_loc8_,
               "enemyName":_loc9_,
               "enemyName2":_loc10_
            };
         }
         _loc12_ = §>!n§.§-#h§(_loc12_);
         §8"%§.§^%W§.§[#l§();
         §!#Z§(_loc12_,_loc13_,_loc11_);
      }
      
      public function §%u§(param1:UserProfile, param2:§<$Z§) : void
      {
         var _loc3_:Boolean = param2 == §<$Z§.§+%I§;
         var _loc4_:Boolean = param2 == §<$Z§.§7!i§;
         var _loc5_:String = _loc3_ ? this.§0%b§.§>&I§ : (_loc4_ ? this.§0%b§.§]"H§ : this.§0%b§.looseInPvp);
         _loc5_ = §>!n§.§-#h§(_loc5_);
         var _loc6_:String = _loc3_ ? this.iconsScheme.winInPvp : this.iconsScheme.looseInPvp;
         §8"%§.§^%W§.§[#l§();
         §!#Z§(_loc5_,{"enemyName":§4! §.§5l§(param1)},_loc6_);
      }
      
      public function §@%6§(param1:§<$Z§, param2:UserProfile = null, param3:UserProfile = null) : void
      {
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:Object = null;
         var _loc4_:Boolean = param1 == §<$Z§.§+%I§;
         var _loc5_:String = param2 ? §4! §.§5l§(param2) : "";
         var _loc6_:String = param3 ? §4! §.§5l§(param3) : "";
         if(param3)
         {
            _loc8_ = _loc4_ ? this.§0%b§.§#$W§ : this.§0%b§.looseRopeRace;
            _loc7_ = _loc4_ ? this.iconsScheme.winInRopeRace : this.iconsScheme.looseInRopeRace;
            _loc9_ = {"enemyName":_loc6_};
         }
         else if(param2)
         {
            _loc8_ = _loc4_ ? this.§0%b§.§^#-§ : this.§0%b§.looseRopeRace;
            _loc7_ = _loc4_ ? this.iconsScheme.winInRopeRaceCoop : this.iconsScheme.looseInRopeRace;
            _loc9_ = {"allyName":_loc5_};
         }
         §8"%§.§^%W§.§[#l§();
         §!#Z§(_loc8_,_loc9_,_loc7_);
      }
      
      public function callToPvp(param1:UserProfile, param2:UserProfile) : void
      {
         var _loc3_:String = this.iconsScheme.callToPvp[int(Math.random() * this.iconsScheme.callToPvp.length)];
         if(§%#h§)
         {
            §8"%§.§^%W§.§[#l§();
            notify(param2,this.§2"5§(param1,param2),null,_loc3_);
         }
      }
      
      protected function §2"5§(param1:UserProfile, param2:UserProfile) : String
      {
         var _loc3_:Object = {
            "rating":param1.getRating(),
            "name":§4! §.§5l§(param2)
         };
         return §0%§.format(param1.getRating() ? this.§+&C§.callToPvp : this.§+&C§.§[v§,_loc3_);
      }
      
      public function enter7DaySequence(param1:§<,§) : void
      {
         this.§!!L§(this.§0%b§.enter7DaySequenceTitle,this.§0%b§.§8"U§,this.§0%b§.enter7DaySequence,{"reward":§0%§.format(this.§0$E§(param1),{"count":param1.count})},this.iconsScheme.§?$^§(param1));
      }
      
      protected function §0$E§(param1:§<,§) : String
      {
         var _loc2_:String = null;
         if(param1.type == §=$,§.RUBY.serverCode)
         {
            _loc2_ = this.§0%b§.enter7DaySequence_rubies;
         }
         return _loc2_;
      }
      
      protected function §]%<§(param1:§<,§) : String
      {
         return this.iconsScheme.§?$^§(param1);
      }
      
      public function §1"S§(param1:String) : void
      {
         postActivity(this.§0$O§.§1"S§,null,this.iconsScheme.postStatus,param1);
      }
      
      public function §;&4§(param1:String, param2:Boolean) : void
      {
         §8"%§.§^%W§.§[#l§();
         §!#Z§(param1,{},this.iconsScheme.§@%t§(param2));
      }
      
      public function §&&'§(param1:UserProfile, param2:Function, param3:String = "") : void
      {
         var _loc4_:String = this.iconsScheme.missionComplete;
         if(this.§]$>§())
         {
            if(param2 == null)
            {
               this.§ !N§(param1,this.§[O§.§^%`§,param3 + " " + this.§[O§.§&"j§,this.§[O§.returnFriend,null,_loc4_);
            }
            else
            {
               §8"%§.§^%W§.§[#l§();
               §%#h§.§3%o§(param1,this.§[O§.returnFriend,param2,_loc4_);
            }
         }
      }
      
      public function §]$>§() : Boolean
      {
         return §%#h§ != null;
      }
      
      public function §]!N§() : Boolean
      {
         return §'!t§ != null;
      }
      
      private function §<&§(param1:§]$d§, param2:§4$z§) : Array
      {
         var _loc4_:UserProfile = null;
         var _loc9_:String = null;
         var _loc3_:Array = [];
         _loc4_ = Application.userProfile;
         var _loc5_:Object = {
            "level":_loc4_.getLevel(),
            "rating":_loc4_.getRating(),
            "opponent":§4! §.§5l§(param1.§6"M§()[0])
         };
         if(param2.result.equals(§<$Z§.§+%I§))
         {
            _loc3_.push(§0%§.format(this.§+&C§.§;&8§,_loc5_));
         }
         if(param1.battleType.§3g§())
         {
            _loc3_.push(this.§2"5§(_loc4_,param1.§6"M§()[0]));
         }
         var _loc6_:Array = [this.§+&C§.status0,this.§+&C§.status1,this.§+&C§.status2,this.§+&C§.status3];
         var _loc7_:uint = 3 - _loc3_.length;
         var _loc8_:uint = 0;
         while(_loc8_ < _loc7_)
         {
            _loc9_ = _loc6_[int(Math.random() * _loc6_.length)];
            _loc3_.push(_loc9_);
            §6!?§.remove(_loc6_,_loc9_);
            _loc8_++;
         }
         return _loc3_;
      }
      
      protected function §!!L§(param1:String, param2:String, param3:String, param4:Object = null, param5:String = null, param6:Function = null, param7:Function = null) : void
      {
         var msgBox:§,#W§ = null;
         var questionTitle:String = param1;
         var question:String = param2;
         var msg:String = param3;
         var params:Object = param4;
         var icon:String = param5;
         var callbackClose:Function = param6;
         var callbackCancel:Function = param7;
         if(!§8"%§.§&S§.§2%C§())
         {
            return;
         }
         if(§'"A§)
         {
            msgBox = §,#W§.§'!+§(questionTitle,question,§,#W§.§7"d§,function():void
            {
               §8"%§.§^%W§.§[#l§();
               §!#Z§(msg,params,icon);
               if(callbackClose != null)
               {
                  callbackClose();
               }
            });
            §`o§.§8#y§(msgBox.getChildByName("msg"),msgBox.getChildByName("heightLine"));
            msgBox.addEventListener(§[%w§.WINDOW_CANCEL,function(param1:Event):void
            {
               if(callbackCancel != null)
               {
                  callbackCancel();
               }
            });
            msgBox.show();
         }
      }
      
      protected function §,&-§(param1:String, param2:String, param3:String, param4:DisplayObject, param5:Object = null, param6:Function = null, param7:Function = null) : void
      {
         var msgBox:§,#W§ = null;
         var questionTitle:String = param1;
         var question:String = param2;
         var msg:String = param3;
         var icon:DisplayObject = param4;
         var params:Object = param5;
         var callbackClose:Function = param6;
         var callbackCancel:Function = param7;
         if(!§8"%§.§&S§.§2%C§())
         {
            return;
         }
         if(§'"A§)
         {
            msgBox = §,#W§.§'!+§(questionTitle,question,§,#W§.§7"d§,function():void
            {
               §8"%§.§^%W§.§[#l§();
               §'"A§.§^#U§(§0%§.format(msg,params),§0$N§.GAME_NAME,icon);
               if(callbackClose != null)
               {
                  callbackClose();
               }
            });
            §`o§.§8#y§(msgBox.getChildByName("msg"),msgBox.getChildByName("heightLine"));
            msgBox.addEventListener(§[%w§.WINDOW_CANCEL,function(param1:Event):void
            {
               if(callbackCancel != null)
               {
                  callbackCancel();
               }
            });
            msgBox.show();
         }
      }
      
      protected function § !N§(param1:UserProfile, param2:String, param3:String, param4:String, param5:Object = null, param6:String = null, param7:Function = null, param8:Function = null) : void
      {
         var msgBox:§,#W§ = null;
         var profile:UserProfile = param1;
         var questionTitle:String = param2;
         var question:String = param3;
         var msg:String = param4;
         var params:Object = param5;
         var icon:String = param6;
         var callbackClose:Function = param7;
         var callbackCancel:Function = param8;
         if(this.§]$>§())
         {
            msgBox = §,#W§.§'!+§(questionTitle,question,§,#W§.§7"d§,function():void
            {
               var _loc1_:* = undefined;
               §8"%§.§^%W§.§[#l§();
               if(!profile.getSocialData())
               {
                  _loc1_ = new §'%#§();
                  _loc1_.setSocialId(profile.§"%D§());
                  profile.§8!J§(_loc1_);
               }
               notify(profile,msg,params,icon);
            });
            §`o§.§8#y§(msgBox.getChildByName("msg"),msgBox.getChildByName("heightLine"));
            msgBox.addEventListener(§[%w§.WINDOW_CLOSE,function(param1:Event):void
            {
               if(callbackClose != null)
               {
                  callbackClose();
               }
            });
            msgBox.addEventListener(§[%w§.WINDOW_CANCEL,function(param1:Event):void
            {
               if(callbackCancel != null)
               {
                  callbackCancel();
               }
            });
            msgBox.show();
         }
      }
      
      public function §%"o§(param1:UserProfile, param2:String) : void
      {
         this.§ !N§(param1,§0$N§.§%! §("FRIEND_INVITE_SENT"),this.§[O§.§8$h§,this.§[O§.§8"0§,{
            "friendName":param1.getCharName(),
            "clanName":param2
         });
      }
      
      public function §1'§() : void
      {
         this.§%$V§(§0%§.format(this.§0%b§.§!$T§,this.§3#y§()),this.§0%b§.§8"U§,this.§0%b§.§>!>§,this.§3#y§(),this.iconsScheme.joinToClan);
      }
      
      public function §`"e§() : void
      {
         this.§%$V§(§0%§.format(this.§0%b§.§>z§,this.§3#y§()),this.§0%b§.§8"U§,this.§0%b§.createClan,this.§3#y§(),this.iconsScheme.createClan);
      }
      
      public function §`#`§() : void
      {
         this.§%$V§(§0%§.format(this.§0%b§.§-#<§,this.§3#y§()),this.§0%b§.§8"U§,this.§0%b§.§#$S§,this.§3#y§(),this.iconsScheme.extendClan);
      }
      
      public function §,t§() : void
      {
         this.§%$V§(§0%§.format(this.§0%b§.§,=§,this.§3#y§()),this.§0%b§.§8"U§,this.§0%b§.§#&§,this.§3#y§(),this.iconsScheme.openClan);
      }
      
      public function §"!@§(param1:String, param2:String) : void
      {
         §!#Z§(param1,this.§3#y§,param2);
      }
      
      public function §%$V§(param1:String, param2:String, param3:String, param4:Object, param5:Object) : void
      {
         if(param5 is String)
         {
            this.§!!L§(param1,param2,param3,param4,param5 as String);
         }
         else if(param5 is DisplayObject)
         {
            this.§,&-§(param1,param2,param3,param5 as DisplayObject,param4);
         }
      }
      
      protected function §0!H§(param1:UserProfile = null, param2:int = 0) : DisplayObject
      {
         var _loc3_:UserProfile = param1 == null ? Application.userProfile : param1;
         var _loc4_:Sprite = new Sprite();
         §=%_§.§!-§(_loc4_,§]#i§.§?H§(_loc3_.clanMember ? _loc3_.clanMember.clanId : param2).emblem);
         §=%_§.§'!?§(_loc4_);
         return §&#Z§.§<%`§(_loc4_);
      }
      
      protected function §,"h§(param1:UserProfile) : DisplayObject
      {
         return §&#Z§.§<%`§(§=%_§.§&#s§(param1.clanMember.rank).getContainer(),0,0,false,1122833);
      }
      
      protected function §3#y§(param1:UserProfile = null) : Object
      {
         var _loc2_:UserProfile = param1 == null ? Application.userProfile : param1;
         return {"clanName":_loc2_.clanMember.clanName};
      }
      
      protected function §6%B§(param1:UserProfile = null) : Object
      {
         var _loc2_:UserProfile = param1 == null ? Application.userProfile : param1;
         return {"name":_loc2_.getCharName()};
      }
      
      protected function §1"0§(param1:UserProfile = null) : Object
      {
         var _loc2_:UserProfile = param1 == null ? Application.userProfile : param1;
         return {"name":§4! §.§5l§(_loc2_)};
      }
      
      public function §=#W§(param1:§]+§) : void
      {
         var _loc3_:§&!e§ = null;
         var _loc5_:String = null;
         §8"%§.§^%W§.§[#l§();
         var _loc2_:String = §2"e§.§`$1§(param1);
         _loc3_ = §1!S§.§@$9§(param1);
         var _loc4_:DisplayObject = _loc3_ ? this.§4!d§(_loc3_) : null;
         if(Boolean(§'"A§) && Boolean(_loc4_))
         {
            §'"A§.§^#U§(_loc2_,§0$N§.GAME_NAME,_loc4_);
         }
         else
         {
            _loc5_ = _loc3_ ? this.§]!b§(_loc3_) : this.iconsScheme.bonusIcon;
            §!#Z§(_loc2_,null,_loc5_);
         }
      }
      
      public function §'V§(param1:ClanMemberTO) : void
      {
         var _loc2_:Object = this.§3#y§();
         _loc2_.userName = param1.name;
         var _loc3_:String = param1.rank == §`&$§.§+#8§ ? this.§0%b§.§+$W§ : this.§0%b§.§@$#§;
         this.§%$V§(§0%§.format(this.§0%b§.§#%t§,{"userName":param1.name}),this.§0%b§.§8"U§,_loc3_,_loc2_,this.iconsScheme.promoteRank);
      }
      
      public function §^m§(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Object = null;
         _loc3_ = param1 == §`&$§.§+#8§;
         _loc4_ = {"clanName":param2};
         var _loc5_:String = §0%§.format(_loc3_ ? this.§0%b§.§#$y§ : this.§0%b§.§;"D§,_loc4_);
         var _loc6_:String = §0%§.format(_loc3_ ? this.§0%b§.§,#i§ : this.§0%b§.§<"s§,_loc4_);
         this.§%$V§(_loc5_,this.§0%b§.§8"U§,_loc6_,{},this.iconsScheme.leaveClan);
      }
      
      public function §,$=§() : void
      {
         this.§%$V§(this.§0%b§.§'%I§,this.§0%b§.§8"U§,this.§0%b§.§-"Z§,this.§3#y§(),this.iconsScheme.medalsExchange);
      }
      
      public function §!x§(param1:§]+§) : void
      {
         §8"%§.§^%W§.§[#l§();
         §'"A§.§^#U§(param1.postMessage,§0$N§.GAME_NAME,this.§4!d§(param1.§ +§));
      }
      
      public function §7%<§(param1:§&!e§) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:String = this.§0%b§.§0%<§[int(Math.random() * this.§0%b§.§0%<§.length)];
         _loc2_ = §0%§.format(_loc2_,{"item":param1.§7%z§()});
         if(param1 is §;#_§ || param1 is §^$E§ || param1 is §^%%§)
         {
            _loc3_ = this.§4!d§(param1);
         }
         §8"%§.§^%W§.§[#l§();
         if(_loc3_)
         {
            §'"A§.§^#U§(_loc2_,§0$N§.GAME_NAME,_loc3_);
         }
         else
         {
            §!#Z§(_loc2_,null,this.iconsScheme.bonusIcon);
         }
      }
      
      public function §%"!§(param1:uint) : void
      {
         §8"%§.§^%W§.§[#l§();
         §!#Z§(this.§0%b§.newRank,{"rank":param1},this.iconsScheme.newRank);
      }
      
      public function rubyLeague() : void
      {
         §8"%§.§^%W§.§[#l§();
         §!#Z§(this.§0%b§.rubyLeague,null,this.iconsScheme.rubyLeague);
      }
      
      public function §5%`§(param1:§]+§) : void
      {
         §8"%§.§^%W§.§[#l§();
         §!#Z§(param1.postMessage,null,this.iconsScheme.bonusIcon);
      }
      
      public function §;#5§() : §#%r§
      {
         return this.iconsScheme;
      }
      
      public function §,R§() : String
      {
         return §5$V§;
      }
   }
}

