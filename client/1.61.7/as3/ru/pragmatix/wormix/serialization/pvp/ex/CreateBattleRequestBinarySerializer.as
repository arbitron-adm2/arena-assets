package ru.pragmatix.wormix.serialization.pvp.ex
{
   import §#$e§.*;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&"R§.§3B§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §4'§.§^"p§;
   import §5!9§.§6$,§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<$q§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?>§.§0!7§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.GetMoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class CreateBattleRequestBinarySerializer implements §&"a§
   {
      
      public function CreateBattleRequestBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return CreateBattleRequest.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:CreateBattleRequest = null;
         _loc3_ = CreateBattleRequest(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.profileId);
         _loc5_.writeUTF(_loc3_.profileSocialId);
         _loc5_.writeByte(_loc3_.socialNetworkId);
         _loc5_.writeUTF(_loc3_.authKey);
         _loc5_.writeUTF(_loc3_.playerNames);
         _loc5_.writeShort(_loc3_.mainServerId);
         _loc5_.writeUnsignedInt(_loc3_.mapId);
         _loc5_.writeShort(_loc3_.wager.id);
         §!!"§.§]!o§(_loc5_,_loc3_.missionIds);
         §!!"§.§?"^§(_loc5_,_loc3_.playerIds);
         §!!"§.§2!e§(_loc5_,_loc3_.teamIds);
         var _loc6_:String = JSON.stringify(_loc3_.params);
         _loc5_.writeUTF(_loc6_);
         _loc5_.writeByte(_loc3_.friendSocialNetId);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
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

