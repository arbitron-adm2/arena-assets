package ru.pragmatix.wormix.utils
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.§@C§;
   import §"$+§.§^$`§;
   import §"$+§.§`&$§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'T§.§!$C§;
   import §+"m§.§3#[§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §3#T§.§;#Q§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4#2§.§2&@§;
   import §4#2§.§^S§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §7$t§.§;#_§;
   import §8#<§.§!#^§;
   import §8#`§.§#%r§;
   import §8#o§.§#$s§;
   import §9%W§.§&!P§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §?>§.§0!7§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §]$J§.§#"s§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§2§;
   import avmplus.getQualifiedClassName;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.ai.§3+§;
   import ru.pragmatix.wormix.game.ai.§5&6§;
   import ru.pragmatix.wormix.game.ai.§<%&§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.TopClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.AddToGroup;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.JoinToBattle;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §=%_§
   {
      
      public function §=%_§()
      {
         super();
      }
      
      public static function §+!O§(param1:uint) : MovieClip
      {
         return §6#A§.§!&6§(§^$`§.§ v§[param1]);
      }
      
      public static function §@!Y§(param1:uint, param2:uint) : MovieClip
      {
         var _loc3_:Vector.<String> = §^$`§.§@"?§[param1];
         return §6#A§.§!&6§(_loc3_[param2]);
      }
      
      public static function §2% §(param1:UserProfile, param2:uint) : void
      {
         var _loc3_:ClanTO = null;
         _loc3_ = §]#i§.§?H§(param2);
         var _loc4_:ClanMemberStructure = param1.clanMember;
         _loc4_.clanId = _loc3_.id;
         _loc4_.clanName = _loc3_.name;
         _loc4_.clanEmblem = _loc3_.emblem;
         _loc4_.clanSeasonRating = _loc3_.seasonRating;
         var _loc5_:ClanMemberTO = §7&3§(param1,_loc3_);
         _loc4_.rank = _loc5_.rank;
      }
      
      public static function §7&3§(param1:UserProfile, param2:ClanTO) : ClanMemberTO
      {
         var _loc3_:ClanMemberTO = null;
         for each(_loc3_ in param2.members)
         {
            if(_loc3_.socialProfileId == param1.§"%D§())
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public static function §!-§(param1:DisplayObjectContainer, param2:Vector.<uint>) : void
      {
         §-"5§(param1,param2[0],param2[1]);
         §%%I§(param1,param2[2],param2[3]);
      }
      
      public static function §-"5§(param1:DisplayObjectContainer, param2:uint, param3:uint) : void
      {
         var _loc5_:DisplayObject = null;
         var _loc4_:MovieClip = §+!O§(param2);
         _loc5_ = param1.getChildByName("icon");
         param1.addChild(_loc4_);
         if(_loc5_)
         {
            param1.removeChild(_loc5_);
            _loc4_.name = _loc5_.name;
            _loc4_.x = _loc5_.x;
            _loc4_.y = _loc5_.y;
         }
         else
         {
            _loc4_.name = "icon";
         }
         var _loc6_:ColorTransform = new ColorTransform();
         _loc6_.color = §^$`§.§1&7§[param3];
         _loc4_.transform.colorTransform = _loc6_;
      }
      
      public static function §%%I§(param1:DisplayObjectContainer, param2:uint, param3:uint) : void
      {
         var _loc5_:DisplayObject = null;
         var _loc4_:DisplayObject = §=%_§.§@!Y§(param2,param3);
         _loc5_ = param1.getChildByName("pattern");
         var _loc6_:int = _loc5_ ? param1.getChildIndex(_loc5_) : int(param1.numChildren - 1);
         if(_loc5_)
         {
            if(param1.contains(_loc5_))
            {
               param1.removeChild(_loc5_);
            }
            _loc4_.name = _loc5_.name;
            _loc4_.x = _loc5_.x;
            _loc4_.y = _loc5_.y;
         }
         else
         {
            _loc4_.name = "pattern";
         }
         param1.addChildAt(_loc4_,_loc6_ > 0 ? _loc6_ : 0);
      }
      
      public static function §'!?§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = param1.getChildByName("pattern");
         var _loc3_:DisplayObject = param1.getChildByName("icon");
         _loc3_.x = _loc2_.width * 0.06;
         _loc3_.y = _loc2_.height * 0.13;
      }
      
      public static function §?%+§() : MovieClip
      {
         var _loc1_:MovieClip = §6#A§.§!&6§(§+"'§.§'!;§);
         _loc1_.scaleX = _loc1_.scaleY = 0.12;
         _loc1_.x = 245;
         _loc1_.y = 292;
         _loc1_.visible = false;
         return _loc1_;
      }
      
      public static function §&#s§(param1:uint) : §`&-§
      {
         var _loc2_:§`&-§ = new §`&-§(§6#A§.§!&6§(§`&$§.§!#X§[param1 - 1]));
         if(param1 == §`&$§.§+#8§)
         {
            _loc2_.setQtip(§0$N§.§%! §("RANK_LEADER"));
         }
         else if(param1 == §`&$§.OFFICER)
         {
            _loc2_.setQtip(§0$N§.§%! §("RANK_OFFICER"));
         }
         else
         {
            _loc2_.setQtip(§0$N§.§%! §("RANK_SOLDIER"));
         }
         return _loc2_;
      }
      
      public static function §?"F§(param1:int, param2:uint = 20, param3:ClanTO = null) : String
      {
         var _loc4_:ClanMemberTO = §<!5§(param1,param3);
         return _loc4_ ? §4! §.§^B§(_loc4_.name,param2) : §2"e§.NA;
      }
      
      public static function §<!5§(param1:int, param2:ClanTO = null) : ClanMemberTO
      {
         var _loc3_:ClanMemberTO = null;
         if(!param2)
         {
            param2 = §]#i§.userClan;
         }
         if(param2)
         {
            for each(_loc3_ in param2.members)
            {
               if(param1 == _loc3_.profileId)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      public static function §9!7§(param1:ClanTO) : void
      {
         var _loc2_:ClanMemberTO = null;
         var _loc3_:UserProfile = null;
         for each(_loc2_ in param1.members)
         {
            _loc3_ = §`#p§.§"!6§(_loc2_.socialProfileId);
            if(_loc3_)
            {
               _loc3_.clanMember.clanId = param1.id;
               _loc3_.clanMember.clanName = param1.name;
               _loc3_.clanMember.clanEmblem = param1.emblem;
               _loc3_.clanMember.clanSeasonRating = param1.seasonRating;
               _loc3_.clanMember.rank = _loc2_.rank;
            }
         }
         §]#i§.§3"y§(param1);
      }
      
      public static function §7$u§(param1:String, param2:Function = null) : Boolean
      {
         if(param1.length < §@C§.§=%L§)
         {
            §,#W§.§'!+§(§0$N§.TITLE_ERROR,§0%§.format(§0$N§.ERROR_MIN_CHAR_CLAN_NAME,{"value":§@C§.§=%L§}),§,#W§.§6!m§,param2).show();
            return false;
         }
         return true;
      }
      
      public static function §5$3§(param1:Vector.<ClanMemberTO>) : Vector.<ClanMemberTO>
      {
         var members:Vector.<ClanMemberTO> = param1;
         var compareFunc:Function = function(param1:ClanMemberTO, param2:ClanMemberTO):int
         {
            if(param1.seasonRating > param2.seasonRating)
            {
               return -1;
            }
            if(param1.seasonRating == param2.seasonRating && param1.rank < param2.rank)
            {
               return -1;
            }
            if(param1.seasonRating == param2.seasonRating && param1.rank == param2.rank && param1.lastLoginTime > param2.lastLoginTime)
            {
               return -1;
            }
            return 1;
         };
         return members.sort(compareFunc);
      }
      
      public static function § "D§(param1:Vector.<ClanMemberTO>) : Vector.<ClanMemberTO>
      {
         var members:Vector.<ClanMemberTO> = param1;
         var compareFunc:Function = function(param1:ClanMemberTO, param2:ClanMemberTO):int
         {
            return param1.seasonRating > param2.seasonRating ? -1 : 1;
         };
         return members.sort(compareFunc);
      }
      
      public static function §=#L§(param1:Vector.<ClanAuditActionTO>) : Vector.<ClanAuditActionTO>
      {
         var actions:Vector.<ClanAuditActionTO> = param1;
         var compareFunc:Function = function(param1:ClanAuditActionTO, param2:ClanAuditActionTO):int
         {
            return param1.date < param2.date ? -1 : 1;
         };
         actions.sort(compareFunc);
         return actions;
      }
      
      public static function §-+§(param1:Vector.<ClanMemberTO>, param2:int) : Vector.<ClanMemberTO>
      {
         var _loc4_:ClanMemberTO = null;
         var _loc3_:Vector.<ClanMemberTO> = new Vector.<ClanMemberTO>();
         for each(_loc4_ in param1)
         {
            if(_loc4_.rank == param2)
            {
               _loc3_[_loc3_.length] = _loc4_;
            }
         }
         return _loc3_;
      }
      
      public static function §>%"§(param1:int) : §!&-§
      {
         var _loc3_:uint = 0;
         var _loc2_:int = 0;
         if(param1 > 0)
         {
            for each(_loc3_ in §@C§.§@#k§)
            {
               if(param1 > _loc3_)
               {
                  break;
               }
               _loc2_++;
            }
         }
         return §!&-§.valueOf(_loc2_);
      }
      
      public static function §[#v§(param1:uint, param2:Vector.<uint>) : MovieClip
      {
         var _loc3_:MovieClip = new MovieClip();
         var _loc4_:MovieClip = §6#A§.§!&6§(§@C§.§1K§[param1 - 1]);
         _loc3_.addChild(_loc4_);
         var _loc5_:MovieClip = §6#A§.§!&6§(§@C§.§>B§ + String(param2[3] + 1));
         _loc5_.x = -23;
         _loc5_.y = -85.4;
         _loc3_.addChild(_loc5_);
         var _loc6_:MovieClip = §+!O§(param2[0]);
         var _loc7_:ColorTransform = new ColorTransform();
         _loc7_.color = §^$`§.§1&7§[param2[1]];
         _loc6_.transform.colorTransform = _loc7_;
         _loc6_.scaleX = _loc6_.scaleY = 0.6;
         _loc6_.x = -22;
         _loc6_.y = -72.5;
         _loc3_.addChild(_loc6_);
         return _loc3_;
      }
      
      public static function §1$V§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = new MovieClip();
         var _loc3_:MovieClip = §6#A§.§!&6§(§@C§.§1K§[0]);
         _loc2_.addChild(_loc3_);
         var _loc4_:MovieClip = §6#A§.§!&6§(param1);
         _loc4_.x = -23;
         _loc4_.y = -85.4;
         _loc2_.addChild(_loc4_);
         return _loc2_;
      }
      
      public static function §7&D§(param1:UserProfile) : void
      {
         var _loc2_:UserProfile = null;
         for each(_loc2_ in param1.§"]§())
         {
            if(_loc2_.§4!^§() == §2=§.§^%&§ && param1.getLevel() >= _loc2_.getLevel())
            {
               _loc2_.§;$v§(§2=§.§"!$§);
            }
         }
      }
   }
}

