package §#",§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.*;
   import §-"N§.*;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §1#p§.§2=§;
   import §2#i§.§+%z§;
   import §4u§.§9!]§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §=&!§.§<$Z§;
   import §>$q§.*;
   import §?>§.§0!7§;
   import §@!N§.§&#Z§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^4§.§@#J§;
   import §`"p§.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.Point;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class § ^§ extends §`&-§
   {
      
      protected var friendsShow:§?%>§;
      
      protected var friendsHide:§?%>§;
      
      private var §4%L§:Boolean;
      
      private var list:§+7§;
      
      public function § ^§(param1:DisplayObjectContainer, param2:§+7§)
      {
         super(param1);
         MovieClip(param1).buttonMode = true;
         this.list = param2;
         this.friendsShow = §!&5§.§7#[§(getChildByName("friendsShow"));
         this.friendsHide = §!&5§.§7#[§(getChildByName("friendsHide"));
         this.friendsShow.§[!u§(this.§'$9§);
         this.friendsHide.§[!u§(this.§'$9§);
         this.friendsShow.setQtip(§0$N§.§%! §("FRIENDS_LIST_SHOW"),§;#^§.LEFT,§+"'§.§3%y§);
         this.friendsHide.setQtip(§0$N§.§%! §("FRIENDS_LIST_HIDE"),§;#^§.LEFT,§+"'§.§3%y§);
         var _loc3_:Boolean = Application.userProfile.getLevel() < §+7§.§!&3§;
         this.§4%L§ = Cookie.getValue(§+7§.COOKIE_FRIENDSLIST_VISIBLE,_loc3_);
         this.update(this.§4%L§);
      }
      
      public function §'$9§(param1:Event = null) : void
      {
         this.list.§!#9§();
         this.update(!this.§4%L§);
      }
      
      public function update(param1:Boolean) : void
      {
         this.§4%L§ = param1;
         this.friendsShow.setVisible(param1);
         this.friendsHide.setVisible(!param1);
      }
   }
}

