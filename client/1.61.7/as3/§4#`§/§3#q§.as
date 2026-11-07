package §4#`§
{
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"$+§.*;
   import §#%!§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&&6§.§8"O§;
   import §'"N§.§4&5§;
   import §-%B§.§-"o§;
   import §-@§.*;
   import §-I§.§'&,§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §4#2§.§,$8§;
   import §4$b§.§2m§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<$q§.§?!d§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §=&!§.§<$!§;
   import §=1§.*;
   import §>"l§.§#!Y§;
   import §?>§.§'!=§;
   import §@!N§.§""L§;
   import §@$v§.§%!w§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §]^§.§4&+§;
   import §^!"§.§"$k§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§-$]§;
   import ru.pragmatix.wormix.game.§1W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.request.InviteToClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.treasury.CashMedalsClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.server.ExecuteSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §3#q§ extends §`&-§ implements §^c§
   {
      
      private static var §]!S§:Number = 0.5;
      
      private var §[7§:§%!w§;
      
      private var §]&+§:§%!w§;
      
      private var §9&-§:MovieClip;
      
      private var §?#K§:MovieClip;
      
      public function §3#q§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.§?#K§ = §'$a§("left");
         this.§9&-§ = §'$a§("right");
         this.§]&+§ = new §%!w§(this.§?#K§,true,§]!S§);
         this.§[7§ = new §%!w§(this.§9&-§,true,§]!S§);
         this.§!%7§(§]%G§.§-4§.ax);
         setQtip(§0$N§.WIND_QTIP,§;#^§.§[!K§);
         §]%G§.§-4§.addEventListener(§0%v§.FORCE_CHANGED,this.§1o§);
      }
      
      override public function destroy() : void
      {
         §]%G§.§-4§.removeEventListener(§0%v§.FORCE_CHANGED,this.§1o§);
         this.stopAnimations();
         super.destroy();
      }
      
      public function §1o§(param1:Event) : void
      {
         this.§!%7§(§]%G§.§-4§.ax);
      }
      
      public function §!%7§(param1:Number) : void
      {
         this.§0%Z§(param1);
         this.§&#]§(param1);
      }
      
      public function §&#]§(param1:Number) : void
      {
         if(param1 <= 0)
         {
            param1 = 0;
         }
         else if(param1 > §]!S§)
         {
            param1 = §]!S§;
         }
         this.§[7§.setValue(param1);
      }
      
      public function §0%Z§(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 = 0;
         }
         param1 *= -1;
         if(param1 > §]!S§)
         {
            param1 = §]!S§;
         }
         this.§]&+§.setValue(param1);
      }
      
      public function playAnimations() : void
      {
         if(isVisible())
         {
            if(this.§?#K§)
            {
               this.§?#K§.play();
            }
            if(this.§9&-§)
            {
               this.§9&-§.play();
            }
         }
      }
      
      public function stopAnimations() : void
      {
         if(this.§?#K§)
         {
            this.§?#K§.stop();
         }
         if(this.§9&-§)
         {
            this.§9&-§.stop();
         }
      }
   }
}

