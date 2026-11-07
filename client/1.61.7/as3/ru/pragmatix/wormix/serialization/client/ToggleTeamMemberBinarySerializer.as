package ru.pragmatix.wormix.serialization.client
{
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#",§.§+!h§;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"Z§.§+$A§;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%j§.*;
   import §0%z§.*;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §<%E§.§0#G§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§?"&§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import config.achievements.§^t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.ToggleTeamMember;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ToggleTeamMemberBinarySerializer implements §&"a§
   {
      
      public function ToggleTeamMemberBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ToggleTeamMember = ToggleTeamMember(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.teamMemberId);
         _loc5_.writeBoolean(_loc3_.active);
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
         return 106;
      }
   }
}

