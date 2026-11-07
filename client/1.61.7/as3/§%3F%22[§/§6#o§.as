package §?"[§
{
   import § m§.§9!^§;
   import §"!C§.§3#n§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'$Z§.ClanDescriptionPopup;
   import §+%Q§.§#%9§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§%"'§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%j§.§0$+§;
   import §2!-§.§'5§;
   import §2!-§.HpChangeEvent;
   import §2#V§.§-#U§;
   import §4'§.§`"q§;
   import §4u§.§#"d§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#`§.§#%r§;
   import §8#a§.ShopMenu;
   import §9"-§.§?!s§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§9#n§;
   import §>%S§.§^!V§;
   import §@!N§.§2"e§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import §`v§.§2&H§;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import config.achievements.§!$L§;
   import config.achievements.§^t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.AssembleEquip;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.SendWipeConfirmCodeResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.SyncInvestedAwardPointsResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.common.post.§##Z§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §6#o§ extends §##Z§
   {
      
      public function §6#o§(param1:§%"'§, param2:§1#+§, param3:§#%r§)
      {
         var context:§%"'§ = param1;
         var controller:§1#+§ = param2;
         var iconsScheme:§#%r§ = param3;
         super(context,controller,iconsScheme,"",new §#%9§());
         §#$K§(controller).addEventListener(§#$K§.EVENT_POST_SUCCESS,function(param1:Event):void
         {
            log.info("event " + (param1 ? param1 : "-"),§0$+§.MAILRU);
            §8"%§.§@1§.increase([§!$L§.§5$'§],[1]);
         });
      }
      
      private function §'#g§(param1:String, param2:String, param3:String, param4:Object = null, param5:String = null, param6:String = null) : void
      {
         var questionTitle:String = param1;
         var question:String = param2;
         var msg:String = param3;
         var params:Object = param4;
         var icon:String = param5;
         var link:String = param6;
         var msgBox:§,#W§ = §,#W§.§'!+§(questionTitle,question,§,#W§.§7"d§,function():void
         {
            postActivity(msg,params,icon,link);
         });
         §`o§.§8#y§(msgBox.getChildByName("msg"),msgBox.getChildByName("heightLine"));
         msgBox.show();
      }
      
      override protected function postActivity(param1:String, param2:Object = null, param3:String = null, param4:String = null) : void
      {
         if(§'!t§)
         {
            §8"%§.§^%W§.§[#l§();
            §'!t§.§-%r§(§0%§.format(param1,param2),§5$V§ + param3,param4,§0$N§.VIEW_ACTION_LINK);
         }
      }
      
      override protected function §!#Z§(param1:String, param2:Object = null, param3:String = null, param4:Function = null) : void
      {
         if(§'"A§)
         {
            §8"%§.§^%W§.§[#l§();
            §'"A§.§5"0§(§0%§.format(param1,param2),"",§5$V§ + param3);
         }
      }
      
      override public function §]$>§() : Boolean
      {
         return true;
      }
      
      override protected function §"#i§(param1:String, param2:§;#_§) : void
      {
         this.§>&$§(param1,param2);
      }
      
      override protected function §>&$§(param1:String, param2:§;#_§) : void
      {
         var weaponName:String = param1;
         var item:§;#_§ = param2;
         if(§8"%§.§&S§.§2%C§())
         {
            §!!L§(§0%b§.§%x§,§0%b§.§8"U§,§0%b§.§"#i§,{"weapon":weaponName},iconsScheme.§]#M§(item),null,function():void
            {
               §8"%§.§&S§.§-#6§(false);
            });
         }
      }
      
      override protected function §?%&§(param1:String, param2:§^$E§) : void
      {
         var hatName:String = param1;
         var item:§^$E§ = param2;
         if(§8"%§.§&S§.§2%C§())
         {
            §!!L§(§0%b§.§0!=§,§0%b§.§8"U§,§0%b§.§?%&§,{"hat":hatName},iconsScheme.§@$W§(item),function():void
            {
               §8"%§.§&S§.§-#6§(false);
            });
         }
      }
      
      override protected function §1"w§(param1:String, param2:§^%%§) : void
      {
         var artifactName:String = param1;
         var item:§^%%§ = param2;
         if(§8"%§.§&S§.§2%C§())
         {
            §!!L§(§0%b§.§9$X§,§0%b§.§8"U§,§0%b§.§1"w§,{"artifact":artifactName},iconsScheme.§3k§(item),null,function():void
            {
               §8"%§.§&S§.§-#6§(false);
            });
         }
      }
      
      override protected function §%I§(param1:String, param2:§^$E§) : void
      {
         this.§!#Z§(§0%b§.§<$J§,{"item":param1},iconsScheme.§@$W§(param2));
      }
      
      override protected function §7$O§(param1:String, param2:§^%%§) : void
      {
         this.§!#Z§(§0%b§.§<$J§,{"item":param1},iconsScheme.§3k§(param2));
      }
      
      override protected function §4$G§(param1:String, param2:§;#_§) : void
      {
         var weaponName:String = param1;
         var item:§;#_§ = param2;
         if(§8"%§.§&S§.§2%C§())
         {
            §!!L§(§0%b§.§%x§,§0%b§.§8"U§,§0%b§.§<$J§,{"item":weaponName},iconsScheme.§]#M§(item),null,function():void
            {
               §8"%§.§&S§.§-#6§(false);
            });
         }
      }
      
      override public function §"%k§(param1:§&!e§) : void
      {
         var _loc2_:String = §0%b§.§?$=§[int(Math.random() * §0%b§.§?$=§.length)];
         §!!L§(§0%b§.§`>§,§0%b§.§8"U§,param1.§7%z§() + "! " + _loc2_,null,§]!b§(param1));
      }
      
      override public function §3!S§(param1:§6$3§, param2:int, param3:MovieClip) : void
      {
         var _loc4_:uint = 0;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         _loc4_ = §0%b§.§7!T§.length;
         var _loc5_:String = §0%§.format(§0%b§.§7!T§[int(Math.random() * _loc4_)],{
            "achievement_name":param1.levels[param2].name,
            "user_name":§4! §.§5l§(Application.userProfile)
         });
         var _loc6_:§`"w§ = param1.levels[param2];
         if(param1 is §'%u§ && §'%u§(param1).isTotal)
         {
            _loc8_ = §^t§.§1!3§(param1.id);
            _loc7_ = iconsScheme.§9#A§(_loc8_);
         }
         else
         {
            _loc7_ = §2&H§(iconsScheme).getAchieveIcon(_loc6_);
         }
         §8"%§.§^%W§.§[#l§();
         this.postActivity(_loc5_,null,_loc7_);
      }
      
      override public function §&&'§(param1:UserProfile, param2:Function, param3:String = "") : void
      {
         var profileFriend:UserProfile = param1;
         var callback:Function = param2;
         var alternativeQuestion:String = param3;
         var fn:Function = callback != null ? §1%"§.§]$<§(function(param1:§,$2§):void
         {
            if(!param1.success)
            {
               param1.errorCode = new §9#n§(0,§0$N§.§%! §("MAILRU_API_ERROR_NEED_TEXT"));
            }
            callback(param1);
         },this) : null;
         super.§&&'§(profileFriend,fn,alternativeQuestion);
      }
      
      override public function §%"o§(param1:UserProfile, param2:String) : void
      {
         § !N§(param1,§0$N§.§%! §("FRIEND_INVITE_SENT"),§[O§.§8$h§,§[O§.§8"0§,{
            "friendName":param1.getCharName(),
            "clanName":param2
         },iconsScheme.inviteToClan);
      }
      
      override public function §=#W§(param1:§]+§) : void
      {
         var _loc2_:§&!e§ = null;
         §8"%§.§^%W§.§[#l§();
         _loc2_ = §1!S§.§@$9§(param1);
         var _loc3_:String = _loc2_ ? §]!b§(_loc2_) : iconsScheme.bonusIcon;
         this.postActivity(§2"e§.§`$1§(param1),null,_loc3_);
      }
      
      override public function §!x§(param1:§]+§) : void
      {
         this.postActivity(param1.postMessage,null,§]!b§(param1.§ +§));
      }
      
      override public function §7%<§(param1:§&!e§) : void
      {
         var _loc2_:String = §0%b§.§0%<§[int(Math.random() * §0%b§.§0%<§.length)];
         _loc2_ = §0%§.format(_loc2_,{"item":param1.§7%z§()});
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
         §8"%§.§^%W§.§[#l§();
         this.postActivity(param1.postMessage,null,iconsScheme.bonusIcon);
      }
   }
}

