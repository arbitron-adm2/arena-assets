package ru.pragmatix.wormix.serialization.client
{
   import § "%§.§0$[§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §%E§.§5%C§;
   import §&#h§.*;
   import §&$Y§.§&!R§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §1#p§.*;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §9![§.§^§;
   import §<$q§.§,%3§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?>§.§!q§;
   import §?>§.§^&<§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class GetReagentsForProfileBinarySerializer implements §&"a§
   {
      
      public function GetReagentsForProfileBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetReagentsForProfile = GetReagentsForProfile(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.profileId);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:GetReagentsForProfile = new GetReagentsForProfile();
         _loc3_.profileId = param1.readUnsignedInt();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return 85;
      }
   }
}

