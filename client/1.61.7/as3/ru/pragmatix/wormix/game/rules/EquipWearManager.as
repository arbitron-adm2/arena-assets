package ru.pragmatix.wormix.game.rules
{
   import §!L§.§+"'§;
   import §#!5§.§>S§;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §##y§.BeforeHitEvent;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%#u§.*;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+5§.*;
   import §,"v§.§9%d§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2!-§.NewUnitEvent;
   import §2"L§.§,'§;
   import §3#a§.§<#_§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §7!B§.§6#I§;
   import §7!B§.§>"D§;
   import §7$t§.§9#x§;
   import §8$Z§.*;
   import §9![§.*;
   import §9%W§.§!7§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §<%k§.*;
   import §>!_§.§'!&§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §^!"§.§^$F§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.SendWipeConfirmCode;
   import ru.pragmatix.wormix.messages.server.SendWipeConfirmCodeResponse;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.boss.§+&&§;
   
   use namespace gestouch_internal;
   
   public class EquipWearManager
   {
      
      private var list:Vector.<WearHatRecord> = new Vector.<WearHatRecord>(0);
      
      public function EquipWearManager()
      {
         super();
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.addEventListener(§0%v§.SHUTDOWN,this.§^$S§);
      }
      
      private function §@%D§(param1:Event) : void
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(_loc2_.§,j§() == 1)
         {
            Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
            Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
            _loc3_ = Application.scene.§@$I§.§;%a§.§1!n§();
            _loc3_ = §8"%§.§?!W§.§4"m§.§5#h§();
            for each(_loc4_ in _loc3_)
            {
               this.§"V§(_loc4_);
            }
         }
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         this.§"V§(param1.unit);
      }
      
      private function §^$S§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SHUTDOWN,this.§^$S§);
         Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
      }
      
      public function §"V§(param1:§+%]§) : void
      {
         if(!param1)
         {
            return;
         }
         if(param1.disposed)
         {
            return;
         }
         if(!param1.§2u§())
         {
            return;
         }
         if(!param1.squad)
         {
            return;
         }
         if(param1.squad.isAi() && !param1.§0!e§)
         {
            return;
         }
         var _loc2_:WearHatRecord = new WearHatRecord(param1);
         _loc2_.id = this.list.length;
         this.list.push(_loc2_);
      }
      
      public function §=D§(param1:§+%]§) : void
      {
         var _loc2_:WearHatRecord = null;
         var _loc3_:§6#I§ = null;
         if(!param1)
         {
            return;
         }
         if(!param1.§2u§())
         {
            return;
         }
         if(!param1.squad)
         {
            return;
         }
         for each(_loc2_ in this.list)
         {
            if(_loc2_.isCurrentOwner(param1))
            {
               _loc2_.currentOwnerId = -1;
               _loc3_ = param1.§8!m§;
               if(Boolean(param1.disposed && _loc3_ && _loc3_.owner) && Boolean(_loc3_.owner.squad.isLocal()) && !_loc3_.owner.§+&,§(param1))
               {
                  _loc2_.lastDisposedOwnerAI = param1.squad.isAi();
                  _loc2_.lastDisposedOwnerId = param1.getId();
                  _loc2_.lastDisposedTeamId = param1.squad.getTeamId();
               }
               else
               {
                  _loc2_.lastDisposedOwnerAI = false;
                  _loc2_.lastDisposedOwnerId = -1;
                  _loc2_.lastDisposedTeamId = -1;
               }
               break;
            }
         }
      }
      
      public function §4&I§(param1:§>"D§, param2:§+%]§) : void
      {
         if(!§8"%§.§?!W§.§4"m§.§=%g§())
         {
            return;
         }
         if(!param2)
         {
            return;
         }
         if(!param2.squad)
         {
            return;
         }
         if(param2.squad.isAi())
         {
            return;
         }
         var _loc3_:WearHatRecord = this.§%#M§(param1.hatId,param1.getOwner());
         if(!_loc3_)
         {
            return;
         }
         if(_loc3_.isOncePickuped)
         {
            return;
         }
         if(_loc3_.lastDisposedOwnerId == -1)
         {
            return;
         }
         if(_loc3_.firstTeamId == param2.squad.getTeamId())
         {
            return;
         }
         _loc3_.isOncePickuped = true;
         _loc3_.currentOwnerId = param2.getId();
         _loc3_.lastDisposedOwnerId = -1;
         §8"%§.§?!W§.§7%@§.§'%&§();
         if(§8"%§.§?!W§.§^!U§().§`!Q§())
         {
            §8"%§.§?!W§.§7%@§.§,#m§();
         }
      }
      
      private function §%#M§(param1:int, param2:§+%]§) : WearHatRecord
      {
         var _loc3_:WearHatRecord = null;
         for each(_loc3_ in this.list)
         {
            if(_loc3_.hatId == param1 && _loc3_.lastDisposedOwnerId == param2.getId())
            {
               return _loc3_;
            }
         }
         return null;
      }
   }
}

import §@<§.§+%]§;

class WearHatRecord
{
   
   public var id:int;
   
   public var hatId:int;
   
   public var firstOwnerAI:Boolean;
   
   public var firstOwnerId:int;
   
   public var firstTeamId:int;
   
   public var currentOwnerId:int;
   
   public var lastDisposedOwnerAI:Boolean;
   
   public var lastDisposedOwnerId:int = -1;
   
   public var lastDisposedTeamId:int = -1;
   
   public var isOncePickuped:Boolean;
   
   public function WearHatRecord(param1:§+%]§)
   {
      super();
      if(param1)
      {
         this.hatId = param1.§2u§().getId();
         this.firstOwnerAI = param1.squad.isAi();
         this.firstOwnerId = this.currentOwnerId = param1.getId();
         this.firstTeamId = param1.squad.getTeamId();
      }
      else
      {
         this.firstOwnerId = this.currentOwnerId = -1;
      }
   }
   
   public function toString() : String
   {
      return "WearHatRecord{" + "id=" + this.id + ",hatId=" + this.hatId + ",firstOwnerAI=" + this.firstOwnerAI + ",firstOwnerId=" + this.firstOwnerId + ",firstTeamId=" + this.firstTeamId + ",currentOwnerId=" + this.currentOwnerId + ",lastDisposedOwnerAI=" + this.lastDisposedOwnerAI + ",lastDisposedOwnerId=" + this.lastDisposedOwnerId + ",lastDisposedTeamId=" + this.lastDisposedTeamId + ",isOncePickuped=" + this.isOncePickuped + "}";
   }
   
   public function isCurrentOwner(param1:§+%]§) : Boolean
   {
      return this.currentOwnerId == param1.getId();
   }
}
