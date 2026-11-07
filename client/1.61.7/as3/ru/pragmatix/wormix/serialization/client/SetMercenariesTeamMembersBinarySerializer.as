package ru.pragmatix.wormix.serialization.client
{
   import §##j§.§0!-§;
   import §#k§.§9$v§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§;%l§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-@§.§5"4§;
   import §0&F§.§0%v§;
   import §2#i§.§9##§;
   import §4$b§.§2m§;
   import §7$t§.§;#_§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.client.SetMercenariesTeamMembers;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.AdrenalineInjection;
   
   public class SetMercenariesTeamMembersBinarySerializer implements §&"a§
   {
      
      public function SetMercenariesTeamMembersBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 127;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:SetMercenariesTeamMembers = SetMercenariesTeamMembers(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         §!!"§.§6%i§(_loc5_,_loc3_.members);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}

