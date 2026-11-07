package § $q§
{
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §'!Z§.*;
   import §+$=§.§+&§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2!x§;
   import §0"L§.§+# §;
   import §0%j§.*;
   import §1#p§.Team;
   import §3"_§.*;
   import §4!x§.§@& §;
   import §4'§.§`"q§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<!W§.§9%,§;
   import §<"L§.*;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §=!p§.§9#n§;
   import §="z§.§9%1§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §@!i§.§8%6§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%'§.§<"G§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import §`%&§.§2z§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.SWFLoader;
   import config.achievements.§!$L§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import org.gestouch.core.Touch;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.BuyUnlockMission;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.messages.client.SyncInvestedAwardPoints;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §-!f§ extends §@& § implements §^c§
   {
      
      private var §!#R§:Vector.<MovieClip>;
      
      public function §-!f§()
      {
         super(§6#A§.§!&6§(§+"'§.§&!y§));
         §#7§(§0$N§.CONTROL_TITLE);
         var _loc1_:int = 1;
         while(_loc1_ < 7)
         {
            §3#1§("t" + _loc1_,§<"G§.§%! §("HELP_CONTROL_TITLE" + _loc1_));
            §`"R§("d" + _loc1_,§<"G§.§%! §("HELP_CONTROL_DESCR" + _loc1_));
            §`"R§("buff" + _loc1_,§<"G§.§%! §("HELP_CONTROL_BUFF" + _loc1_));
            _loc1_++;
         }
         this.§!#R§ = new <MovieClip>[§'$a§("anim2.anim"),§'$a§("anim1.fire")];
         _loc1_ = 0;
         while(_loc1_ < 5)
         {
            this.§!#R§[this.§!#R§.length] = §'$a§("anim" + _loc1_);
            _loc1_++;
         }
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§<![§;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.playAnimations();
      }
      
      override public function destroy() : void
      {
         this.hide();
         super.destroy();
      }
      
      override public function hide() : void
      {
         this.stopAnimations();
         super.hide();
      }
      
      public function playAnimations() : void
      {
         var _loc1_:MovieClip = null;
         if(isShown() && Boolean(this.§!#R§))
         {
            for each(_loc1_ in this.§!#R§)
            {
               _loc1_.play();
            }
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§!#R§)
         {
            for each(_loc1_ in this.§!#R§)
            {
               _loc1_.stop();
            }
         }
      }
   }
}

