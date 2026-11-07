package ru.pragmatix.wormix.social.facebook.controller
{
   import § !8§.§`!d§;
   import § $q§.SelectMapMenu;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%# §.*;
   import §%L§.§%%w§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'"N§.*;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.*;
   import §+5§.§5"<§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0"L§.§+# §;
   import §0"p§.*;
   import §0%[§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.*;
   import §2!-§.GameObjectDisposed;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §3#a§.*;
   import §4$b§.§8D§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#`§.§#%r§;
   import §8#`§.§4"y§;
   import §8#o§.§#$s§;
   import §8$V§.*;
   import §8$Z§.§9!&§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §;$8§.§6"E§;
   import §<!W§.§=!6§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?"j§.§]!<§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§8%6§;
   import §@!i§.§<,§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import §`#x§.§"$r§;
   import §`v§.§2&H§;
   import avmplus.getQualifiedClassName;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import com.inreflected.ui.touchScroll.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.common.post.§##Z§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §8"x§ extends §##Z§
   {
      
      public static const LOG:§&`§ = new §&`§(§8"x§);
      
      private var §[f§:§!a§;
      
      private var §`h§:§4"y§;
      
      private var §2s§:String;
      
      private var §-"z§:int = 0;
      
      public function §8"x§(param1:§%"'§, param2:§1#+§, param3:§#%r§)
      {
         var context:§%"'§ = param1;
         var controller:§1#+§ = param2;
         var iconsScheme:§#%r§ = param3;
         super(context,controller,iconsScheme);
         this.§[f§ = §!a§(controller);
         this.§`h§ = iconsScheme as §4"y§;
         this.§2s§ = "en";
         §#$K§(controller).addEventListener(§#$K§.EVENT_POST_SUCCESS,function(param1:Event):void
         {
            log.info("event " + (param1 ? param1 : "-"),§!a§.FB);
            §8"%§.§@1§.increase([§!$L§.§5$'§],[1]);
         });
      }
      
      override protected function §!#Z§(param1:String, param2:Object = null, param3:String = null, param4:Function = null) : void
      {
         if(param2)
         {
            param1 = §0%§.format(param1,param2);
         }
         §8"%§.§^%W§.§[#l§();
         (§8"%§.§[f§ as §!a§).§5"0§(param1,"",§5$V§ + param3);
      }
      
      override protected function postActivity(param1:String, param2:Object = null, param3:String = null, param4:String = null) : void
      {
         super.postActivity(param1,param2,param3,param4);
      }
      
      override public function §["L§(param1:§`!d§) : void
      {
         §8"%§.§^%W§.§[#l§();
         this.postActivity(§0%b§.§["L§,{"race":param1.§7%z§()},iconsScheme.§8$=§(param1));
      }
      
      override public function §=$v§(param1:§`!d§, param2:§&"P§) : void
      {
         §8"%§.§^%W§.§[#l§();
         this.postActivity(§0%b§.§=$v§,{"skin":param2.§7%z§()},iconsScheme.§]!r§(param1,param2));
      }
      
      override public function rubyFoundInHouse(param1:UserProfile) : void
      {
         § !N§(param1,§0%b§.§"!H§,§[O§.§&"j§,§[O§.rubyFoundInHouse,§1"0§(param1),iconsScheme.rubyFoundInHouse);
      }
      
      override public function activityPumpFriendsReaction(param1:UserProfile, param2:uint) : void
      {
         if(this.§-"z§ < 3)
         {
            ++this.§-"z§;
            this.postActivity(§0$O§.activityPumpFriendsReaction,{
               "name":§4! §.§5l§(param1),
               "count":param2
            },iconsScheme.activityPumpFriendsReaction);
         }
      }
      
      override protected function §"#i§(param1:String, param2:§;#_§) : void
      {
         this.postActivity(§0%b§.§"#i§,{"weapon":param1},iconsScheme.§]#M§(param2));
      }
      
      override protected function §>&$§(param1:String, param2:§;#_§) : void
      {
         this.postActivity(§0%b§.§"#i§,{"weapon":param1},iconsScheme.§]#M§(param2));
      }
      
      override protected function §?%&§(param1:String, param2:§^$E§) : void
      {
         this.postActivity(§0%b§.§?%&§,{"hat":param1},iconsScheme.§@$W§(param2));
      }
      
      override protected function §1"w§(param1:String, param2:§^%%§) : void
      {
         this.postActivity(§0%b§.§1"w§,{"artifact":param1},iconsScheme.§3k§(param2));
      }
      
      override protected function §%I§(param1:String, param2:§^$E§) : void
      {
         this.postActivity(§0%b§.§?%&§,{"hat":param1},iconsScheme.§@$W§(param2));
      }
      
      override protected function §7$O§(param1:String, param2:§^%%§) : void
      {
         this.postActivity(§0%b§.§1"w§,{"artifact":param1},iconsScheme.§3k§(param2));
      }
      
      override protected function §4$G§(param1:String, param2:§;#_§) : void
      {
         this.postActivity(§0%b§.§<$J§,{"item":param1},iconsScheme.§]#M§(param2));
      }
      
      override public function newTeamMate(param1:UserProfile, param2:Boolean = true) : void
      {
         this.postActivity(§0$O§.newTeamMate,§6%B§(param1),iconsScheme.newTeamMate);
         if(param2)
         {
            § !N§(param1,§[O§.§-#1§,§[O§.§>"q§,§0$O§.newTeamMate,{"name":""},iconsScheme.newTeamMateYou);
         }
      }
      
      override public function §6%8§(param1:§<$Z§, param2:String) : void
      {
         var _loc3_:String = param1 == §<$Z§.§+%I§ ? §0$O§.missionComplete : §0$O§.§@#P§;
         this.postActivity(_loc3_,{"name_mission":param2},iconsScheme.missionComplete);
      }
      
      override public function §`#v§(param1:String) : void
      {
         this.postActivity(§0%b§.§&$j§,{"name_mission":param1},iconsScheme.tutorialIcon);
      }
      
      override public function §^_§(param1:int, param2:int) : void
      {
         this.postActivity(§0%b§.gladiatorComplete,{
            "winCount":param1,
            "defeatCount":param2
         },iconsScheme.gladiatorComplete);
      }
      
      override public function §+"p§(param1:§8%6§, param2:§8%6§, param3:§<$Z§, param4:UserProfile = null) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         if(param3.equals(§<$Z§.§+%I§))
         {
            _loc5_ = param4 ? §0$O§.§-$V§ : §0$O§.§<§;
            _loc6_ = param4 ? iconsScheme.winSuperbossWithFriend : iconsScheme.winSuperboss;
         }
         else if(param3.equals(§<$Z§.§7!i§))
         {
            _loc5_ = §0%b§.§]"H§;
            _loc6_ = param4 ? iconsScheme.looseSuperbossWithFriend : iconsScheme.looseSuperboss;
         }
         else
         {
            _loc5_ = param4 ? §0%b§.§5"-§ : §0%b§.§#"M§;
            _loc6_ = param4 ? iconsScheme.looseSuperbossWithFriend : iconsScheme.looseSuperboss;
         }
         var _loc7_:String = §4! §.§5l§(Application.userProfile);
         var _loc8_:String = param4 ? §4! §.§5l§(param4) : "";
         this.postActivity(_loc5_,{
            "userName":_loc7_,
            "friendName":_loc8_,
            "bossName":param2.§7%z§(),
            "bossName2":param1.§7%z§()
         },_loc6_);
      }
      
      override public function §%!2§(param1:§8%6§, param2:§<$Z§, param3:UserProfile = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(param2.equals(§<$Z§.§+%I§))
         {
            _loc4_ = param3 ? §0$O§.§6#V§ : §0%b§.§3$a§(param1.getId());
            _loc5_ = iconsScheme.§9#A§(param1.getId());
         }
         else if(param2.equals(§<$Z§.§7!i§))
         {
            _loc4_ = §0%b§.§]"H§;
            _loc5_ = param3 ? iconsScheme.looseSuperbossWithFriend : iconsScheme.looseSuperboss;
         }
         else
         {
            _loc4_ = param3 ? §0%b§.§4!$§ : §0%b§.§%#s§;
            _loc5_ = param3 ? iconsScheme.looseSuperbossWithFriend : iconsScheme.looseSuperboss;
         }
         var _loc6_:String = §4! §.§5l§(Application.userProfile);
         var _loc7_:String = param3 ? §4! §.§5l§(param3) : "";
         this.postActivity(_loc4_,{
            "userName":_loc6_,
            "friendName":_loc7_,
            "bossName":param1.§7%z§()
         },_loc5_);
      }
      
      override public function §#"@§(param1:UserProfile, param2:Vector.<UserProfile>, param3:§<$Z§, param4:int) : void
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
               _loc12_ = _loc5_ ? §0%b§.§`%r§ : (_loc6_ ? §0%b§.§]"H§ : §0%b§.§"#;§);
               _loc11_ = _loc5_ ? iconsScheme.winTwoOpponents : iconsScheme.looseTwoOpponents;
               _loc13_ = {
                  "enemyName":_loc9_,
                  "enemyName2":_loc10_,
                  "rating":_loc7_
               };
            }
            else
            {
               _loc12_ = _loc5_ ? §0%b§.§`%r§ : (_loc6_ ? §0%b§.§]"H§ : §0%b§.looseInPvp);
               _loc11_ = _loc5_ ? iconsScheme.winInPvp : iconsScheme.looseInPvp;
               _loc13_ = {
                  "enemyName":_loc9_,
                  "rating":_loc7_
               };
            }
         }
         else
         {
            _loc12_ = _loc5_ ? §0%b§.§&#A§ : (_loc6_ ? §0%b§.§]"H§ : §0%b§.§"#;§);
            _loc11_ = _loc5_ ? iconsScheme.winWithFriend : iconsScheme.looseWithFriend;
            _loc13_ = {
               "allyName":_loc8_,
               "enemyName":_loc9_,
               "enemyName2":_loc10_
            };
         }
         _loc12_ = §>!n§.§-#h§(_loc12_);
         this.postActivity(_loc12_,_loc13_,_loc11_);
      }
      
      override public function §%u§(param1:UserProfile, param2:§<$Z§) : void
      {
         var _loc3_:Boolean = param2 == §<$Z§.§+%I§;
         var _loc4_:Boolean = param2 == §<$Z§.§7!i§;
         var _loc5_:String = _loc3_ ? §0%b§.§>&I§ : (_loc4_ ? §0%b§.§]"H§ : §0%b§.looseInPvp);
         _loc5_ = §>!n§.§-#h§(_loc5_);
         var _loc6_:String = _loc3_ ? iconsScheme.winInPvp : iconsScheme.looseInPvp;
         this.postActivity(_loc5_,{"enemyName":§4! §.§5l§(param1)},_loc6_);
      }
      
      override public function §@%6§(param1:§<$Z§, param2:UserProfile = null, param3:UserProfile = null) : void
      {
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:Object = null;
         var _loc4_:Boolean = param1 == §<$Z§.§+%I§;
         var _loc5_:String = param2 ? §4! §.§5l§(param2) : "";
         var _loc6_:String = param3 ? §4! §.§5l§(param3) : "";
         if(param3)
         {
            _loc8_ = _loc4_ ? §0%b§.§#$W§ : §0%b§.looseRopeRace;
            _loc7_ = _loc4_ ? iconsScheme.winInRopeRace : iconsScheme.looseInRopeRace;
            _loc9_ = {"enemyName":_loc6_};
         }
         else if(param2)
         {
            _loc8_ = _loc4_ ? §0%b§.§^#-§ : §0%b§.looseRopeRace;
            _loc7_ = _loc4_ ? iconsScheme.winInRopeRaceCoop : iconsScheme.looseInRopeRace;
            _loc9_ = {"allyName":_loc5_};
         }
         this.postActivity(_loc8_,_loc9_,_loc7_);
      }
      
      override public function §8%I§(param1:uint) : void
      {
         var _loc2_:String = iconsScheme.§5&<§(Application.userProfile.getRace());
         this.postActivity(§0$O§.§8%I§,{"level":param1},_loc2_);
      }
      
      override public function §"%k§(param1:§&!e§) : void
      {
         var _loc2_:String = §0%b§.§?$=§[int(Math.random() * §0%b§.§?$=§.length)];
         this.postActivity(param1.§7%z§() + "! " + _loc2_,null,§]!b§(param1));
      }
      
      override public function §3!S§(param1:§6$3§, param2:int, param3:MovieClip) : void
      {
         var _loc4_:uint = 0;
         var _loc7_:String = null;
         var _loc9_:int = 0;
         _loc4_ = §0%b§.§7!T§.length;
         var _loc5_:String = §0%§.format(§0%b§.§7!T§[int(Math.random() * _loc4_)],{
            "achievement_name":param1.levels[param2].name,
            "user_name":§4! §.§5l§(Application.userProfile)
         });
         var _loc6_:§`"w§ = param1.levels[param2];
         if(param1 is §'%u§ && §'%u§(param1).isTotal)
         {
            _loc9_ = §^t§.§1!3§(param1.id);
            _loc7_ = iconsScheme.§9#A§(_loc9_);
         }
         else
         {
            _loc7_ = §2&H§(this.§`h§).getAchieveIcon(_loc6_);
         }
         this.postActivity(_loc5_,null,_loc7_);
         var _loc8_:String = _loc6_.icon;
         this.§[f§.§!$q§(_loc8_);
         this.§[f§.§#$7§(Math.round(_loc6_.points) / 10);
      }
      
      override public function enter7DaySequence(param1:§<,§) : void
      {
         this.postActivity(§0$O§.enter7DaySequence,{"reward":§0%§.format(§0$E§(param1),{"count":param1.count})},§]%<§(param1));
      }
      
      override public function callToPvp(param1:UserProfile, param2:UserProfile) : void
      {
         var _loc3_:String = iconsScheme.callToPvp[int(Math.random() * iconsScheme.callToPvp.length)];
         §8"%§.§^%W§.§[#l§();
         notify(param2,§2"5§(param1,param2),null,_loc3_);
      }
      
      override public function §;&4§(param1:String, param2:Boolean) : void
      {
         this.postActivity(param1,{},iconsScheme.§@%t§(param2));
      }
      
      override public function §&&'§(param1:UserProfile, param2:Function, param3:String = "") : void
      {
         var _loc4_:String = iconsScheme.callOnReturnFriendButton;
         if(§]$>§())
         {
            if(param2 == null)
            {
               § !N§(param1,§[O§.§^%`§,param3 + " " + §[O§.§&"j§,§[O§.returnFriend,null,_loc4_);
            }
            else
            {
               §8"%§.§^%W§.§[#l§();
               §%#h§.§3%o§(param1,§[O§.returnFriend,param2,§5$V§ + _loc4_);
            }
         }
      }
      
      override public function §%"o§(param1:UserProfile, param2:String) : void
      {
         § !N§(param1,§0$N§.§%! §("FRIEND_INVITE_SENT"),§[O§.§8$h§,§[O§.§8"0§,{
            "friendName":param1.getCharName(),
            "clanName":param2
         },iconsScheme.inviteToClan);
      }
      
      override public function §1'§() : void
      {
         this.§"!@§(§0%b§.§>!>§,iconsScheme.joinToClan);
      }
      
      override public function §`"e§() : void
      {
         this.§"!@§(§0%b§.createClan,iconsScheme.createClan);
      }
      
      override public function §`#`§() : void
      {
         this.§"!@§(§0%b§.§#$S§,iconsScheme.extendClan);
      }
      
      override public function §,t§() : void
      {
         this.§"!@§(§0%b§.§#&§,iconsScheme.openClan);
      }
      
      override public function §"!@§(param1:String, param2:String) : void
      {
         this.postActivity(param1,§3#y§(),param2);
      }
      
      override public function §=#W§(param1:§]+§) : void
      {
         var _loc2_:§&!e§ = null;
         _loc2_ = §1!S§.§@$9§(param1);
         var _loc3_:String = _loc2_ ? §]!b§(_loc2_) : iconsScheme.bonusIcon;
         this.postActivity(§2"e§.§`$1§(param1),null,_loc3_);
      }
      
      override public function §'V§(param1:ClanMemberTO) : void
      {
         var _loc2_:String = §0%§.format(param1.rank == §`&$§.§+#8§ ? §0%b§.§+$W§ : §0%b§.§@$#§,{"userName":param1.name});
         this.§"!@§(_loc2_,iconsScheme.promoteRank);
      }
      
      override public function §^m§(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Object = null;
         _loc3_ = param1 == §`&$§.§+#8§;
         _loc4_ = {"clanName":param2};
         var _loc5_:String = §0%§.format(_loc3_ ? §0%b§.§,#i§ : §0%b§.§<"s§,_loc4_);
         var _loc6_:String = _loc3_ ? iconsScheme.leaveClan : iconsScheme.leaveClan;
         this.§"!@§(_loc5_,_loc6_);
      }
      
      override public function §,$=§() : void
      {
         this.§"!@§(§0%b§.§-"Z§,iconsScheme.medalsExchange);
      }
      
      override public function §!x§(param1:§]+§) : void
      {
         §8"%§.§^%W§.§[#l§();
         this.postActivity(param1.postMessage,null,§]!b§(param1.§ +§));
      }
      
      override public function §7%<§(param1:§&!e§) : void
      {
         var _loc2_:String = §0%b§.§0%<§[int(Math.random() * §0%b§.§0%<§.length)];
         _loc2_ = §0%§.format(_loc2_,{"item":param1.§7%z§()});
         §8"%§.§^%W§.§[#l§();
         this.postActivity(_loc2_,null,§]!b§(param1));
      }
      
      override public function §%"!§(param1:uint) : void
      {
         §8"%§.§^%W§.§[#l§();
         this.postActivity(§0%b§.newRank,{"rank":param1},iconsScheme.newRank);
      }
      
      override public function rubyLeague() : void
      {
         §8"%§.§^%W§.§[#l§();
         this.postActivity(§0%b§.rubyLeague,null,iconsScheme.rubyLeague);
      }
      
      override public function §5%`§(param1:§]+§) : void
      {
         this.postActivity(param1.postMessage,null,iconsScheme.bonusIcon);
      }
   }
}

