package ru.pragmatix.wormix.serialization.client
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §8#o§.*;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §=&6§.§&"K§;
   import §>%S§.§^!V§;
   import §?"j§.§]!<§;
   import §?#g§.*;
   import §@#K§.§3&2§;
   import §@<§.§+%]§;
   import §`%&§.§5$1§;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.objects.mutators.§'"<§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class UpgradeWeaponBinarySerializer implements §&"a§
   {
      
      public function UpgradeWeaponBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:UpgradeWeapon = UpgradeWeapon(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.recipeId);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:UpgradeWeapon = new UpgradeWeapon();
         _loc3_.recipeId = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return 86;
      }
   }
}

