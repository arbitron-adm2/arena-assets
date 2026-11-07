package ru.pragmatix.wormix.serialization.client
{
   import § "L§.§1%b§;
   import § #k§.§3%0§;
   import §%"1§.§@%;§;
   import §&&6§.§7$§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §2"L§.§,'§;
   import §3#T§.*;
   import §4%_§.§3§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§`"d§;
   import §7$1§.§;$n§;
   import §8#o§.§#$s§;
   import §;"9§.§;"c§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §@!N§.§""L§;
   import §@#K§.§3&2§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §[$<§.§"#"§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.LoginByProfileStringId;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class LoginByProfileStringIdBinarySerializer implements §&"a§
   {
      
      public function LoginByProfileStringIdBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 20;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:LoginByProfileStringId = LoginByProfileStringId(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.id);
         _loc5_.writeUTF(_loc3_.referrerId);
         _loc5_.writeUTF(_loc3_.authKey);
         _loc5_.writeInt(this.§<$p§(_loc3_.version));
         var _loc6_:uint = 0;
         var _loc7_:uint = _loc3_.ids.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeUTF(_loc3_.ids[_loc6_]);
            _loc6_++;
         }
         _loc5_.writeByte(_loc3_.socialCode);
         _loc7_ = _loc3_.params.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeUTF(_loc3_.params[_loc6_]);
            _loc6_++;
         }
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      private function §<$p§(param1:String) : int
      {
         var _loc2_:Array = param1.split(".");
         return _loc2_.length == 4 ? int((int(_loc2_[0]) << 24) + (int(_loc2_[1]) << 16) + (int(_loc2_[2]) << 8) + int(_loc2_[3])) : 1;
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}

