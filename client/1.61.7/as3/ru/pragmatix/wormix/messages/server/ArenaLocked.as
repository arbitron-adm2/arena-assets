package ru.pragmatix.wormix.messages.server
{
   import § "d§.§,!c§;
   import §!L§.§+"'§;
   import §#%!§.§%&F§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §2#x§.*;
   import §2o§.§]#@§;
   import §7"Q§.§"&=§;
   import §7$t§.§??§;
   import §7$t§.§^$E§;
   import §8$V§.§`"c§;
   import §<%E§.§,$2§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.inspirit.net.*;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.*;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.messages.structures.UnitHpV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class ArenaLocked
   {
      
      public var delay:uint;
      
      public var currentMission:int;
      
      public var errorCode:int;
      
      public function ArenaLocked()
      {
         super();
      }
      
      public function toString() : String
      {
         return "ArenaLocked{" + "delay=" + this.delay + ",currentMission=" + this.currentMission + ",errorCode=" + String(this.errorCode) + "}";
      }
   }
}

