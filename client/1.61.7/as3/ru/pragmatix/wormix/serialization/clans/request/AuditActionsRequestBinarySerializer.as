package ru.pragmatix.wormix.serialization.clans.request
{
   import § %f§.*;
   import §!$Z§.§6=§;
   import §!L§.§`#p§;
   import §"$+§.§@C§;
   import §#P§.§`o§;
   import §'!Z§.§1"-§;
   import §'%!§.§>%k§;
   import §'%!§.§@!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#x§.*;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §=!p§.§1e§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.social.Social;
   
   public class AuditActionsRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function AuditActionsRequestBinarySerializer()
      {
         super();
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.AUDIT_ACTIONS_REQUEST;
      }
   }
}

