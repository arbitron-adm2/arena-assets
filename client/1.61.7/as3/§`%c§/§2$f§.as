package §`%c§
{
   import § #m§.§[&H§;
   import §"$+§.§`&$§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&$Y§.§;!]§;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §4'§.§^"p§;
   import §5!9§.§6$,§;
   import §<$q§.*;
   import §?$L§.§ "N§;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!N§.§2"e§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.client.GetMoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §2$f§ extends §;!]§
   {
      
      public function §2$f§()
      {
         super();
         realPriceBtn.§[!u§(this.§@$c§);
         realPriceBtn.setText(§0$N§.AGREE);
      }
      
      public function §@$c§(param1:Event) : void
      {
         hide();
         if(Boolean(Application.userProfile.clanMember) && Application.userProfile.clanMember.rank == §`&$§.§+#8§)
         {
            §,#W§.§6!P§(§0$N§.TITLE_ATTENTION,§0$N§.TRANSFER_PROFILE_LEADER,§,#W§.§6!m§);
         }
         else
         {
            §4##§.show(§0$N§.TRANSFER_PROFILE_TITLE,§0$N§.SURE_QUESTION,§,#W§.§`$x§,this.§0"n§);
         }
      }
      
      public function §0"n§() : void
      {
         §%%w§.§##$§(MoveProfileSecureToken,this.§-!_§);
         var _loc1_:GetMoveProfileSecureToken = new GetMoveProfileSecureToken();
         §%%w§.§,U§(_loc1_);
         §&#F§(true);
      }
      
      protected function §-!_§(param1:§9$v§) : void
      {
         var secureToken:String;
         var transkey:String = null;
         var e:§9$v§ = param1;
         §&#F§(false);
         §%%w§.§-"j§(MoveProfileSecureToken,this.§-!_§);
         secureToken = MoveProfileSecureToken(e.message).secureToken;
         if(secureToken)
         {
            transkey = "trans_" + §8"%§.§[f§.getType().§1#&§ + "_" + Application.userProfile.getId() + "_" + secureToken;
            Application.loginfo("transkey = " + transkey);
            new §,#W§(§0$N§.TITLE_ATTENTION,§0$N§.TRANSFER_PROFILE_MSG2,§,#W§.§6!m§,function():void
            {
               navigateToURL(new URLRequest("https://apps.facebook.com/playwormix/?ad_id=" + transkey),"_blank");
            }).show();
         }
         else
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.TRANSFER_PROFILE_UNAVAILABLE);
         }
      }
   }
}

