package ru.pragmatix.wormix.serialization.clans.main.server
{
   import § %f§.§##d§;
   import § &5§.§=#P§;
   import §#P§.§`o§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §5!9§.§6$,§;
   import §@!N§.§'+§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class InviteFriendToClanBinarySerializer implements §&"a§
   {
      
      public function InviteFriendToClanBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:InviteFriendToClan = new InviteFriendToClan();
         param1.readShort();
         _loc3_.invite = ClanInviteStructure(§<!h§.§@%$§(ClanInviteStructure).deserializeStructure(param1,null));
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return 94;
      }
   }
}

