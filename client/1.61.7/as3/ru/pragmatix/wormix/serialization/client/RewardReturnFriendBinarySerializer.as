package ru.pragmatix.wormix.serialization.client
{
   import §!!i§.§@&&§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §1%H§.§!"=§;
   import §2"L§.§^$y§;
   import §2#V§.§-#U§;
   import §7!B§.§&"T§;
   import §>%S§.§^!V§;
   import §?"[§.*;
   import §@!N§.§3!3§;
   import §`#x§.*;
   import §`v§.§2&H§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.plugins.*;
   import config.achievements.§^t§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.LeaveFromChat;
   import ru.pragmatix.wormix.messages.client.RewardReturnFriend;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class RewardReturnFriendBinarySerializer implements §&"a§
   {
      
      public function RewardReturnFriendBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:RewardReturnFriend = RewardReturnFriend(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.friendId);
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
         return 92;
      }
   }
}

