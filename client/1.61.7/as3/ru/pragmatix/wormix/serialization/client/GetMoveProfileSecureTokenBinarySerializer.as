package ru.pragmatix.wormix.serialization.client
{
   import § &5§.§0&$§;
   import § L§.§`T§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§-$s§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%[§.§6!?§;
   import §4%_§.§3§;
   import §6#Z§.§&!Z§;
   import §65§.§`"C§;
   import §7"Q§.*;
   import §7$1§.§3&G§;
   import §;!J§.*;
   import §<!W§.§3"R§;
   import §<!W§.§;!`§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.TweenMax;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.net.LocalConnection;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.GetMoveProfileSecureToken;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import vk.*;
   import vk.api.§;&G§;
   
   public class GetMoveProfileSecureTokenBinarySerializer implements §&"a§
   {
      
      public function GetMoveProfileSecureTokenBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 139;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetMoveProfileSecureToken = GetMoveProfileSecureToken(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.sessionKey);
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

