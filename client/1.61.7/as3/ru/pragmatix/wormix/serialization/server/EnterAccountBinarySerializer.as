package ru.pragmatix.wormix.serialization.server
{
   import §#"V§.§8"@§;
   import §+&<§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §-!U§.*;
   import §-%B§.§-"o§;
   import §<"?§.§7!@§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §=$#§.§1!$§;
   import §=&!§.§]$d§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?%J§.§7"h§;
   import §@"!§.§`<§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.§;"I§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.server.EnterAccount;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.RestrictionItemStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class EnterAccountBinarySerializer implements §&"a§
   {
      
      private var log:§&`§ = new §&`§(EnterAccountBinarySerializer);
      
      public function EnterAccountBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10001;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var reagentSize:int;
         var stream:ByteArray = null;
         var i:uint = 0;
         var size:uint = 0;
         var deser:§@#&§ = null;
         var key:String = null;
         var value:String = null;
         var dataInput:IDataInput = param1;
         var header:§9%d§ = param2;
         var cmd:EnterAccount = new EnterAccount();
         stream = new ByteArray();
         dataInput.readBytes(stream,0,dataInput.bytesAvailable);
         try
         {
            stream.readShort();
            cmd.userProfileStructure = UserProfileStructure(§<!h§.§@%$§(UserProfileStructure).deserializeStructure(stream,null));
         }
         catch(e:Error)
         {
         }
         size = stream.readUnsignedShort();
         cmd.userProfileStructures = [];
         deser = §<!h§.§@%$§(UserProfileStructure);
         i = 0;
         while(i < size)
         {
            stream.readShort();
            cmd.userProfileStructures[i] = deser.deserializeStructure(stream,null);
            i++;
         }
         size = stream.readUnsignedShort();
         cmd.loginAwards = [];
         deser = §<!h§.§@%$§(LoginAwardStructure);
         i = 0;
         while(i < size)
         {
            stream.readShort();
            cmd.loginAwards[i] = deser.deserializeStructure(stream,null);
            i++;
         }
         cmd.onlineFriends = stream.readShort();
         cmd.friends = stream.readShort();
         cmd.sessionKey = stream.readUTF();
         cmd.availableSearchKeys = stream.readByte();
         reagentSize = int(stream.readUnsignedShort());
         cmd.reagents = new Vector.<int>();
         i = 0;
         while(i < reagentSize)
         {
            cmd.reagents[i] = stream.readInt();
            i++;
         }
         cmd.curSoloMissionId = stream.readShort();
         cmd.curCooperativeMissionId = stream.readShort();
         size = stream.readUnsignedShort();
         cmd.invites = new Vector.<ClanInviteStructure>(0);
         deser = §<!h§.§@%$§(ClanInviteStructure);
         i = 0;
         while(i < size)
         {
            stream.readShort();
            cmd.invites[i] = ClanInviteStructure(deser.deserializeStructure(stream,null));
            i++;
         }
         cmd.serverTime = stream.readInt();
         size = stream.readUnsignedShort();
         deser = §<!h§.§@%$§(BackpackConfStructure);
         i = 0;
         while(i < size)
         {
            stream.readShort();
            cmd.backpackConfs[i] = BackpackConfStructure(deser.deserializeStructure(stream,null));
            i++;
         }
         cmd.activeBackpackConf = stream.readByte();
         §!!"§.§5t§(stream,cmd.hotkeys);
         cmd.loginSequence = stream.readByte();
         cmd.races = stream.readShort();
         cmd.selectRaceTimeLeft = stream.readInt();
         cmd.skins = [];
         §!!"§.§#$>§(stream,cmd.skins);
         cmd.lastPaymentTime = stream.readInt();
         size = stream.readUnsignedShort();
         cmd.restrictions = new Vector.<RestrictionItemStructure>(0);
         deser = §<!h§.§@%$§(RestrictionItemStructure);
         i = 0;
         while(i < size)
         {
            stream.readShort();
            cmd.restrictions[i] = RestrictionItemStructure(deser.deserializeStructure(stream,null));
            i++;
         }
         cmd.cookies = new Dictionary();
         size = stream.readUnsignedShort();
         if(size)
         {
            size /= 2;
            i = 0;
            while(i < size)
            {
               key = stream.readUTF();
               value = stream.readUTF();
               cmd.cookies[key] = value;
               i++;
            }
         }
         cmd.vipSubscriptionId = stream.readInt();
         if(stream.readShort() == 1)
         {
            deser = §<!h§.§@%$§(ReconnectToSimpleBattleResultStructure);
            cmd.reconnectResult = ReconnectToSimpleBattleResultStructure(deser.deserializeStructure(stream,null));
         }
         cmd.downgradesLeft = stream.readByte();
         cmd.isSecure = §6&A§.isSecure(stream,§["u§.§'&I§);
         return cmd;
      }
   }
}

