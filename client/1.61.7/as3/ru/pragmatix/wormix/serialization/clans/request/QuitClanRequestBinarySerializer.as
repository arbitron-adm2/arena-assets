package ru.pragmatix.wormix.serialization.clans.request
{
   import §%"1§.§=#?§;
   import §-&5§.*;
   import §6_§.*;
   import §]$&§.§2&2§;
   import com.greensock.TweenLite;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.weapons.*;
   
   public class QuitClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function QuitClanRequestBinarySerializer()
      {
         super();
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.QUIT_CLAN_REQUEST;
      }
   }
}

