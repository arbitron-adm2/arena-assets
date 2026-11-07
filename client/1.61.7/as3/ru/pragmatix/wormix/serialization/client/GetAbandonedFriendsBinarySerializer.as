package ru.pragmatix.wormix.serialization.client
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §&&6§.§7$§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §4$b§.§2m§;
   import §4%_§.§3§;
   import §6"'§.§&"3§;
   import §7$1§.§;$n§;
   import §8#o§.§#$s§;
   import §9%W§.§!7§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetAbandonedFriends;
   import ru.pragmatix.wormix.social.Social;
   
   public class GetAbandonedFriendsBinarySerializer implements §&"a§
   {
      
      public function GetAbandonedFriendsBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetAbandonedFriends = GetAbandonedFriends(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.page);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
      
      public function getCommandId() : uint
      {
         return 89;
      }
   }
}

