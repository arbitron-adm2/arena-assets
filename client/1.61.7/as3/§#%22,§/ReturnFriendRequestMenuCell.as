package §#",§
{
   import § !8§.§`!d§;
   import § #9§.§3L§;
   import § L§.§`T§;
   import §"!C§.§3#n§;
   import §%"1§.§@%;§;
   import §'!Z§.*;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §4%_§.§3§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$1§.§3&G§;
   import §9%W§.§&!P§;
   import §;!J§.*;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.*;
   import flash.net.LocalConnection;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetColiseumState;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import vk.*;
   import vk.api.§;&G§;
   
   public class ReturnFriendRequestMenuCell extends §"&=§
   {
      
      private var avatar:§3L§;
      
      public function ReturnFriendRequestMenuCell(param1:MovieClip)
      {
         super(param1);
         this.avatar = new §3L§(param1["avatar"],false);
      }
      
      override public function setItem(param1:Object) : void
      {
         super.setItem(param1);
         var _loc2_:UserProfile = UserProfile(param1);
         this.avatar.§3%,§(_loc2_);
         container["nameLabel"].text = §4! §.§<&-§(_loc2_);
         container["descrption"].text = §0$N§.RETURN_FRIEND_REQUEST_CELL_DESCR;
         §&$9§.§>&F§(container["selected"]["label"],§"-§.§+$m§,§0$N§.RETURN_FRIEND_REQUEST_CELL_BTN);
         §&$9§.§>&F§(container["selection"]["label"],§"-§.§+$m§,§0$N§.RETURN_FRIEND_REQUEST_CELL_BTN);
         §&$9§.§>&F§(container["nonselected"]["label"],§"-§.§+$m§,§0$N§.RETURN_FRIEND_REQUEST_CELL_BTN);
      }
   }
}

