package ru.pragmatix.wormix.messages.server
{
   import §"$+§.§`&$§;
   import §&x§.*;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §9"^§.UserParamsMenu;
   import §<$q§.*;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class GetFriendsForMissionResult
   {
      
      public static const STATE_SUCCESS:uint = 0;
      
      public static const STATE_EXCEED_BATTLES:uint = 1;
      
      public static const STATE_MISSION_LOCKED:uint = 2;
      
      public var profiles:Array;
      
      public var states:Vector.<int>;
      
      public function GetFriendsForMissionResult()
      {
         super();
      }
   }
}

