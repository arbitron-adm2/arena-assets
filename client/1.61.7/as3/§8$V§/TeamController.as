package §8$V§
{
   import § !P§.*;
   import § &5§.§=#P§;
   import §"%H§.§1! §;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §%&3§.§'C§;
   import §%L§.§%%w§;
   import §&%X§.§5F§;
   import §'!Z§.§2!H§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2#8§.§6"a§;
   import §7$1§.§;$n§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import avmplus.getQualifiedClassName;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.TracePublisher;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.ClearName;
   import ru.pragmatix.wormix.messages.client.GetProfiles;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.client.ReorderGroup;
   import ru.pragmatix.wormix.messages.client.ToggleTeamMember;
   import ru.pragmatix.wormix.messages.server.ClearNameResult;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.messages.server.RemoveFromGroupResult;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class TeamController
   {
      
      public static const §4%K§:int = 4;
      
      public static const §=%Q§:int = 6;
      
      public static const §+"1§:int = 3;
      
      public static const §%$y§:int = §+"1§ + 1;
      
      private var §+%i§:UserProfile;
      
      private var §#!k§:Vector.<§+E§> = new Vector.<§+E§>(0);
      
      private var §@&2§:Vector.<int> = new Vector.<int>(0);
      
      private var §1%o§:Vector.<PendingToggle> = new Vector.<PendingToggle>(0);
      
      public function TeamController()
      {
         super();
         §%%w§.§##$§(RemoveFromGroupResult,this.§,!a§);
         §%%w§.§##$§(ReorderGroupResult,this.§^"1§);
         §%%w§.§##$§(ToggleTeamMemberResult,this.§+&D§);
      }
      
      private static function §,U§(param1:Vector.<int>) : void
      {
         var _loc2_:ReorderGroup = new ReorderGroup();
         _loc2_.reorderedWormGroup = param1;
         §%%w§.§,U§(_loc2_);
      }
      
      public function §2"X§(param1:UserProfile, param2:Object = null) : void
      {
         if(param1.§4!^§() == §2=§.MERCENARY)
         {
            this.§,#T§(param1);
         }
         else
         {
            this.§=V§(param1,param2);
         }
      }
      
      private function §=V§(param1:UserProfile, param2:Object = null) : void
      {
         §[&G§.§8"&§.show();
         var _loc3_:GetProfiles = new GetProfiles();
         _loc3_.sessionKey = §%%w§.§7F§.§?$X§();
         §§push(_loc3_);
         var _temp_1:* = new <String>[param1.getId().toString()];
         §§pop().ids = new <String>[param1.getId().toString()];
         §^"5§.single(§%%w§.§7F§,ProfilesResult,this.§^j§,param2,[param1.§4!^§()],true);
         §%%w§.§,U§(_loc3_);
      }
      
      private function §^j§(param1:§9$v§, param2:int) : void
      {
         var _loc3_:ProfilesResult = null;
         var _loc4_:Array = null;
         §[&G§.§8"&§.hide();
         _loc3_ = ProfilesResult(param1.message);
         _loc4_ = §4! §.§9%I§(_loc3_.userProfileStructures,true);
         var _loc5_:UserProfile = _loc4_[0];
         _loc5_.§;$v§(param2);
         this.§,#T§(_loc5_);
      }
      
      private function §,#T§(param1:UserProfile) : void
      {
         var replacingProfile:UserProfile = param1;
         var menu:§6"a§ = new §6"a§(replacingProfile,function(param1:Boolean):void
         {
            if(param1)
            {
               Application.§5!>§.§^P§.§6X§();
            }
         });
         menu.show();
      }
      
      public function replace(param1:UserProfile, param2:§+$A§, param3:uint, param4:int, param5:int, param6:Boolean, param7:Function) : void
      {
         this.§##^§(param1,param2,param3,param4,param5,param6,param7);
      }
      
      private function §##^§(param1:UserProfile, param2:§+$A§, param3:uint, param4:int, param5:int, param6:Boolean, param7:Function) : void
      {
         §8"%§.§&"n§.§4L§(param1,param2,param3,param4,param5,param6,§1%"§.§]$<§(this.§^!h§,this,[param1,param4,param7,param5,param6],true));
      }
      
      public function §]%5§(param1:UserProfile, param2:§+$A§, param3:uint, param4:int, param5:Boolean, param6:Function) : void
      {
         §,#W§.§[#r§(§0"-§.TITLE_ATTENTION,§0$N§.ADD_IN_GROUP_CONFIRMATION,§,#W§.§7"d§,§1%"§.§]$<§(this.§;3§,this,[param1,param2,param3,param4,param5,param6],true));
      }
      
      private function §;3§(param1:UserProfile, param2:§+$A§, param3:uint, param4:int, param5:Boolean, param6:Function) : void
      {
         §8"%§.§&"n§.§;#,§(param1,param2,param3,param4,param5,§1%"§.§]$<§(this.§^!h§,this,[param1,param4,param6,0,param5],true));
      }
      
      private function §^!h§(param1:Boolean, param2:UserProfile, param3:int, param4:Function, param5:int = 0, param6:Boolean = false) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(param1)
         {
            param2.§;$v§(param3);
            param2.setActive(param6);
            Application.userProfile.§1G§.§<#x§(param2,param3 != §2=§.FRIEND,param5,param6);
            if(param5 == 0)
            {
               this.§#!k§.push(new §+E§(param2.getId(),param2.isActive()));
            }
            else
            {
               _loc7_ = 0;
               _loc8_ = int(this.§#!k§.length);
               while(_loc7_ < _loc8_)
               {
                  if(this.§#!k§[_loc7_].teamMemberId == param5)
                  {
                     this.§#!k§[_loc7_] = new §+E§(param2.getId(),param2.isActive());
                     break;
                  }
                  _loc7_++;
               }
            }
            Application.§5!>§.§8$w§();
            if(param3 == §2=§.FRIEND || param3 == §2=§.§"!$§ || param3 == §2=§.MERCENARY)
            {
               if(param3 == §2=§.FRIEND)
               {
                  param2.§7"i§(null);
                  param2.§;"U§(null);
               }
               Social.§!g§.newTeamMate(param2,param3 == §2=§.FRIEND);
            }
         }
         param4(param1);
      }
      
      public function §9&$§(param1:UserProfile, param2:int) : void
      {
         param1.§;$v§(param2);
         Application.userProfile.§1G§.§<#x§(param1,param2 != §2=§.FRIEND);
         this.§#!k§.push(new §+E§(param1.getId(),param1.isActive()));
      }
      
      public function fire(param1:UserProfile) : void
      {
         this.§+%i§ = param1;
         §,#W§.§[#r§(§0"-§.TITLE_ATTENTION,§0$N§.REMOVE_FROM_GROUP_CONFIRMATION,§,#W§.§7"d§,this.§&#v§);
      }
      
      private function §&#v§() : void
      {
         §[&G§.§3$5§.show();
         §%%w§.§,U§(new RemoveFromGroup(this.§+%i§.getId()));
      }
      
      private function §,!a§(param1:§9$v§) : void
      {
         var _loc2_:Vector.<UserProfile> = null;
         var _loc3_:UserProfile = null;
         var _loc4_:int = 0;
         var _loc5_:uint = 0;
         var _loc6_:§+E§ = null;
         switch(RemoveFromGroupResult(param1.message).result)
         {
            case RemoveFromGroupResult.SUCCESS:
               _loc2_ = Application.userProfile.§"]§();
               for each(_loc3_ in _loc2_)
               {
                  if(_loc3_.getId() == this.§+%i§.getId())
                  {
                     _loc5_ = _loc2_.indexOf(_loc3_);
                     _loc2_.splice(_loc5_,1);
                     break;
                  }
               }
               _loc4_ = 0;
               while(_loc4_ < this.§#!k§.length)
               {
                  _loc6_ = this.§#!k§[_loc4_];
                  if(_loc6_.teamMemberId == this.§+%i§.getId())
                  {
                     this.§#!k§.splice(_loc4_,1);
                     break;
                  }
                  _loc4_++;
               }
               Application.§5!>§.§8$w§();
               Application.§5!>§.§^P§.§6X§();
               break;
            case RemoveFromGroupResult.ERROR:
               §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.ERROR_SAVING);
         }
         §[&G§.§3$5§.hide();
      }
      
      public function §!&B§(param1:UserProfile, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§+E§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:UserProfile = null;
         var _loc9_:§+E§ = null;
         if(param2)
         {
            _loc3_ = param1.isActive();
            _loc4_ = param1.getId();
            _loc6_ = 0;
            _loc7_ = int(this.§#!k§.length);
            while(_loc6_ < _loc7_)
            {
               _loc5_ = this.§#!k§[_loc6_];
               if(_loc5_.teamMemberId == _loc4_ && _loc5_.state != _loc3_)
               {
                  _loc5_.state = param1.isActive();
                  this.§2"f§(param1,_loc3_);
                  break;
               }
               _loc6_++;
            }
         }
         else
         {
            for each(_loc8_ in param1.§"]§())
            {
               for each(_loc9_ in this.§#!k§)
               {
                  if(_loc9_.teamMemberId == _loc8_.getId() && _loc9_.state != _loc8_.isActive())
                  {
                     _loc9_.state = _loc8_.isActive();
                     this.§2"f§(_loc8_,_loc8_.isActive());
                  }
               }
            }
         }
      }
      
      private function §2"f§(param1:UserProfile, param2:Boolean) : void
      {
         var _loc3_:int = param1.getId();
         var _loc4_:* = int(this.§1%o§.length - 1);
         while(_loc4_ >= 0)
         {
            if(this.§1%o§[_loc4_].teamMemberId == _loc3_)
            {
               if(this.§1%o§[_loc4_].requestedActive == param2)
               {
                  return;
               }
               break;
            }
            _loc4_--;
         }
         this.§1%o§.push(new PendingToggle(_loc3_,param1,param2));
         §%%w§.§,U§(new ToggleTeamMember(_loc3_,param2));
      }
      
      private function §+&D§(param1:§9$v§) : void
      {
         var _loc5_:PendingToggle = null;
         var _loc2_:ToggleTeamMemberResult = ToggleTeamMemberResult(param1.message);
         var _loc3_:int = 0;
         var _loc4_:int = int(this.§1%o§.length);
         while(_loc3_ < _loc4_)
         {
            var _temp_1:* = this.§1%o§[_loc3_];
            _loc5_ = this.§1%o§[_loc3_];
            if(_loc5_.teamMemberId == _loc2_.teamMemberId)
            {
               this.§1%o§.splice(_loc3_,1);
               if(_loc2_.result != 0)
               {
                  _loc5_.teamMember.setActive(!_loc5_.requestedActive);
                  this.§8!e§(_loc5_.teamMemberId,!_loc5_.requestedActive);
               }
               return;
            }
            _loc3_++;
         }
      }
      
      private function §8!e§(param1:int, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = int(this.§#!k§.length);
         while(_loc3_ < _loc4_)
         {
            if(this.§#!k§[_loc3_].teamMemberId == param1)
            {
               this.§#!k§[_loc3_].state = param2;
               return;
            }
            _loc3_++;
         }
      }
      
      public function §9&I§(param1:UserProfile) : void
      {
         this.§#!k§.length = 0;
         var _loc2_:Vector.<UserProfile> = param1.§"]§();
         var _loc3_:int = 0;
         var _loc4_:int = int(_loc2_.length);
         while(_loc3_ < _loc4_)
         {
            this.§#!k§[_loc3_] = new §+E§(_loc2_[_loc3_].getId(),_loc2_[_loc3_].isActive());
            _loc3_++;
         }
      }
      
      public function §5%U§(param1:UserProfile) : void
      {
         this.§!%?§(§0$c§.§-"=§(param1));
      }
      
      private function §!%?§(param1:Vector.<int>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(this.§#!k§.length);
         while(_loc2_ < _loc3_)
         {
            if(this.§#!k§[_loc2_].teamMemberId != param1[_loc2_])
            {
               this.§@&2§ = param1;
               §,U§(param1);
               return;
            }
            _loc2_++;
         }
      }
      
      private function §^"1§(param1:§9$v§) : void
      {
         var _loc3_:Vector.<UserProfile> = null;
         var _loc4_:Vector.<UserProfile> = null;
         var _loc5_:int = 0;
         var _loc6_:UserProfile = null;
         §[&G§.§8"&§.hide();
         var _loc2_:int = ReorderGroupResult(param1.message).result;
         if(_loc2_ == ReorderGroupResult.ERROR)
         {
            §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.ERROR_SAVING);
         }
         else if(_loc2_ == ReorderGroupResult.SUCCESS)
         {
            _loc3_ = Application.userProfile.§"]§();
            _loc4_ = new Vector.<UserProfile>(0);
            this.§#!k§.length = 0;
            for each(_loc5_ in this.§@&2§)
            {
               for each(_loc6_ in _loc3_)
               {
                  if(_loc5_ == _loc6_.getId())
                  {
                     _loc4_[_loc4_.length] = _loc6_;
                     this.§#!k§[this.§#!k§.length] = new §+E§(_loc5_,_loc6_.isActive());
                  }
               }
            }
            Application.userProfile.§;"!§(_loc4_);
         }
      }
      
      public function §@!z§(param1:int, param2:Function) : void
      {
         §[&G§.§8"&§.show();
         var _loc3_:ClearName = new ClearName();
         _loc3_.teamMemberId = param1;
         §""n§.single(§%%w§.§7F§,getQualifiedClassName(ClearNameResult),this.§9#k§,this,[param1,param2],true);
         §%%w§.§,U§(_loc3_);
      }
      
      private function §9#k§(param1:§9$v§, param2:int, param3:Function) : void
      {
         var _loc5_:UserProfile = null;
         var _loc6_:UserProfile = null;
         §[&G§.§8"&§.hide();
         var _loc4_:int = ClearNameResult(param1.message).result;
         if(_loc4_ == ClearNameResult.ERROR)
         {
            §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.ERROR_SAVING);
         }
         else if(_loc4_ == ClearNameResult.SUCCESS)
         {
            _loc5_ = Application.userProfile;
            if(param2 == _loc5_.getId())
            {
               _loc5_.§@!z§();
            }
            else
            {
               for each(_loc6_ in _loc5_.§"]§())
               {
                  if(param2 == _loc6_.getId())
                  {
                     _loc6_.§@!z§();
                     break;
                  }
               }
            }
            if(param3 != null)
            {
               param3(true);
            }
         }
      }
      
      public function §"%x§(param1:int, param2:Function) : void
      {
         var _loc3_:GetRaceExceptExclusive = new GetRaceExceptExclusive(param1);
         §""n§.single(§%%w§.§7F§,getQualifiedClassName(RaceExceptExclusiveResult),this.§#!;§,this,[param1,param2],true);
         §%%w§.§,U§(_loc3_);
      }
      
      private function §#!;§(param1:§9$v§, param2:int, param3:Function) : void
      {
         var _loc4_:RaceExceptExclusiveResult = RaceExceptExclusiveResult(param1.message);
         if(_loc4_.profileId != param2)
         {
            §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.ERROR_SAVING);
         }
         else
         {
            param3(_loc4_.race,_loc4_.skin);
         }
      }
   }
}

import ru.pragmatix.wormix.model.user.UserProfile;

class PendingToggle
{
   
   public var teamMemberId:int;
   
   public var teamMember:UserProfile;
   
   public var requestedActive:Boolean;
   
   public function PendingToggle(param1:int, param2:UserProfile, param3:Boolean)
   {
      super();
      this.teamMemberId = param1;
      this.teamMember = param2;
      this.requestedActive = param3;
   }
}
