package §>!_§
{
   import §!L§.§+"'§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §5#`§.§%&5§;
   import §7$t§.§;#_§;
   import §8$Z§.§9"t§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?>§.§!q§;
   import §?>§.§^&<§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §9@§ extends §`&-§
   {
      
      private var invite:ClanInviteStructure;
      
      private var bgButton:§?%>§;
      
      public function §9@§()
      {
         super(§6#A§.§!&6§(§+"'§.§%"X§));
         this.bgButton = §!&5§.§7#[§(getChildByName("button"));
         this.bgButton.§[!u§(this.§[!w§);
      }
      
      public function update(param1:ClanInviteStructure) : void
      {
         var _loc2_:MovieClip = null;
         this.invite = param1;
         _loc2_ = §'$a§("logo");
         _loc2_.mouseEnabled = false;
         _loc2_.mouseChildren = false;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("logo") as DisplayObjectContainer;
         §=%_§.§!-§(_loc3_,param1.clanEmblem);
         var _loc4_:TextField = §'%s§("clanMember");
         _loc4_.mouseEnabled = false;
         _loc4_.textColor = 16771235;
         §&$9§.§>&F§(_loc4_,§"-§.§+$m§,param1.name);
         var _loc5_:TextField = §'%s§("text");
         _loc5_.mouseEnabled = false;
         _loc5_.htmlText = §2"e§.§#"I§("<b>" + §0$N§.INVITE_TEXT + "</b>","#FFFFFF");
         var _loc6_:TextField = §'%s§("clanName");
         _loc6_.mouseEnabled = false;
         _loc6_.htmlText = §2"e§.§#"I§("<b><u>" + param1.clanName + "</u></b>","#2EB4FF");
      }
      
      private function §[!w§(param1:Event) : void
      {
         §9"t§.§]"N§(this.invite.clanId,this.invite);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.bgButton.removeHandler(this.§[!w§);
      }
   }
}

