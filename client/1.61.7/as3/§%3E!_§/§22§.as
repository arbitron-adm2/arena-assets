package §>!_§
{
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.§6!?§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2#i§.§+%z§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§^$E§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%J§.RopeRaceGiftMenu;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=&!§.§<$Z§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$L§.§&$9§;
   import §?X§.§36§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@$§.§+%>§;
   import §@$§.§6$[§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.§28§;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   use namespace gestouch_internal;
   
   public class §22§ extends §`&-§
   {
      
      protected var §^"v§:§4$x§;
      
      private var userProfile:UserProfile;
      
      protected var clanMember:ClanMemberTO;
      
      private var §=%q§:Boolean;
      
      protected var menu:§+%>§;
      
      public function §22§(param1:ClanMemberTO, param2:DisplayObject = null, param3:Boolean = false)
      {
         super(param2);
         this.clanMember = param1;
         this.userProfile = §`#p§.§"!6§(param1.socialProfileId);
         this.§^"v§ = new §4$x§(§'$a§("avatar"));
         if(this.userProfile)
         {
            this.§^"v§.§3%,§(this.userProfile);
         }
         this.update(param1);
         this.§=%q§ = param3;
         param2.addEventListener(MouseEvent.CLICK,this.§'$9§);
      }
      
      protected function update(param1:ClanMemberTO) : void
      {
         this.§&#9§(param1);
         this.§>#5§(param1);
      }
      
      private function §'$9§(param1:MouseEvent) : void
      {
         if(!this.menu)
         {
            if(this.§=%q§)
            {
               this.menu = new §36§(this.userProfile,this.clanMember);
            }
            else if(this.userProfile)
            {
               this.menu = new §6$[§(this.userProfile);
            }
         }
         else
         {
            this.menu.update(this.userProfile,this.clanMember);
         }
         this.menu.§<$8§(param1.stageX,param1.stageY);
      }
      
      private function §&#9§(param1:ClanMemberTO) : void
      {
         var _loc3_:String = null;
         var _loc2_:TextField = §'%s§("memberRank");
         _loc2_.mouseEnabled = false;
         if(param1.rank == §`&$§.§+#8§)
         {
            _loc3_ = §0$N§.§%! §("RANK_LEADER");
         }
         else if(param1.rank == §`&$§.OFFICER)
         {
            _loc3_ = §0$N§.§%! §("RANK_OFFICER");
         }
         else
         {
            _loc3_ = §0$N§.§%! §("RANK_SOLDIER");
         }
         §@C§.§&[§(_loc2_,param1.rank);
         §&$9§.§>&F§(_loc2_,§"-§.§+$m§,_loc3_);
      }
      
      private function §>#5§(param1:ClanMemberTO) : void
      {
         var _loc2_:TextField = §'%s§("memberNameTextField");
         _loc2_.mouseEnabled = false;
         if(param1.rank == §`&$§.§+#8§)
         {
            §@C§.§&[§(_loc2_,param1.rank);
         }
         §&$9§.§>&F§(_loc2_,§"-§.§+$m§,§4! §.§^B§(param1.name,§@C§.§]%Z§));
      }
      
      override public function destroy() : void
      {
         if(container.hasEventListener(MouseEvent.CLICK))
         {
            container.removeEventListener(MouseEvent.CLICK,this.§'$9§);
         }
         this.§^"v§.destroy();
         this.userProfile = null;
         this.clanMember = null;
         super.destroy();
      }
      
      public function §<!5§() : ClanMemberTO
      {
         return this.clanMember;
      }
   }
}

