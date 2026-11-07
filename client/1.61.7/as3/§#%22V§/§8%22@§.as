package §#"V§
{
   import § #k§.*;
   import § #m§.§2#P§;
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import § &5§.§=#P§;
   import §!K§.§"%$§;
   import §!L§.§ 6§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#%!§.§ §;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&!?§.§"_§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,$J§.§,$O§;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0%[§.§^"5§;
   import §0%z§.BossAchieveHint;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §1#p§.Team;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §3#T§.*;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<$q§.*;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§]$d§;
   import §?$7§.§6%k§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%'§.§<"G§;
   import §[%§.Boar;
   import §]$v§.§]%_§;
   import §]^§.§-$T§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.*;
   import com.greensock.loading.LoaderStatus;
   import com.inreflected.ui.touchScroll.*;
   import config.§#!"§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.client.GetPromocodeBonus;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.server.GetPromocodeBonusResult;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.SyncInvestedAwardPointsResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §8"@§ extends §4#_§ implements §?%>§
   {
      
      private static const log:§&`§ = new §&`§(§8"@§);
      
      public static const EVENT_PRESSED:String = "EVENT_PRESSED";
      
      public static const EVENT_TOGGLE:String = "EVENT_TOGGLE";
      
      protected var §-o§:Boolean;
      
      private var §0#T§:String;
      
      public var § "b§:Boolean;
      
      private var §-"C§:Boolean;
      
      private var btn:§?%>§;
      
      private var §["c§:DisplayObject;
      
      private var §!&D§:DisplayObject;
      
      private var §=%^§:DisplayObject;
      
      public function §8"@§(param1:DisplayObject, param2:String = null)
      {
         super(param1);
         this.btn = §!&5§.§7#[§(param1);
         this.§["c§ = this.btn.simpleButton.downState;
         this.§!&D§ = this.btn.simpleButton.upState;
         this.§=%^§ = this.btn.simpleButton.overState;
         §0A§(MouseEvent.MOUSE_UP,this.§ !;§);
         §0A§(MouseEvent.MOUSE_DOWN,this.§^&=§);
         this.btn.§[!u§(this.§'$9§);
         x = param1.x;
         y = param1.y;
         this.§-%]§(param2);
      }
      
      override protected function §^^§() : void
      {
         super.§^^§();
         this.update();
      }
      
      private function §^&=§(param1:MouseEvent) : void
      {
         this.§-"C§ = true;
         if(this.§-o§ && (Boolean(!this.§ "b§) || Boolean(this.§0#T§)))
         {
            return;
         }
         this.simpleButton.overState = this.§-o§ ? this.§=%^§ : this.§["c§;
      }
      
      private function § !;§(param1:Event) : void
      {
         if(!this.§-"C§)
         {
            return;
         }
         this.§-"C§ = false;
         if(this.§-o§ && (Boolean(!this.§ "b§) || Boolean(this.§0#T§)))
         {
            return;
         }
         this.setPressed(!this.§-o§);
      }
      
      protected function update() : void
      {
         this.simpleButton.overState = this.§-o§ ? this.§["c§ : this.§=%^§;
         this.simpleButton.downState = this.§-o§ ? this.§!&D§ : this.§["c§;
         this.simpleButton.upState = this.§-o§ ? this.§["c§ : this.§!&D§;
      }
      
      public function isPressed() : Boolean
      {
         return this.§-o§;
      }
      
      public function setPressed(param1:Boolean) : void
      {
         if(this.§-o§ != param1)
         {
            this.§-o§ = param1;
            if(!this.§ "b§ || Boolean(this.§0#T§))
            {
               this.simpleButton.mouseEnabled = !this.§-o§;
            }
            this.update();
            dispatchEvent(new Event(EVENT_TOGGLE));
            if(this.§-o§)
            {
               dispatchEvent(new Event(EVENT_PRESSED));
            }
         }
      }
      
      public function § #v§() : §8"@§
      {
         return §'$h§.§9&D§(this.§ #t§());
      }
      
      override public function destroy() : void
      {
         §'$h§.§6#K§(this);
         super.destroy();
      }
      
      public function § #t§() : String
      {
         return this.§0#T§;
      }
      
      public function §-%]§(param1:String) : void
      {
         this.§0#T§ = param1;
         this.§ "b§ = !param1;
         §'$h§.§>!O§(this);
      }
      
      public function get simpleButton() : SimpleButton
      {
         return this.btn.simpleButton;
      }
      
      public function §[!u§(param1:Function, param2:int = 0) : void
      {
         addEventListener(MouseEvent.CLICK,param1,false,param2);
      }
      
      public function removeHandler(param1:Function) : void
      {
         removeEventListener(MouseEvent.CLICK,param1);
      }
      
      private function §'$9§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         this.btn.setDisabled(param1);
      }
      
      public function setText(param1:String, param2:TextFormat = null, param3:String = "text") : void
      {
         this.btn.setText(param1,param2,param3);
      }
      
      override public function §8,§() : Boolean
      {
         return this.btn.§8,§();
      }
      
      override public function setQtip(param1:String, param2:§;#^§ = null, param3:String = null, param4:TextFormat = null) : void
      {
         this.btn.setQtip(param1,param2,param3,param4);
      }
      
      override public function §"#I§() : §?A§
      {
         return this.btn.§"#I§();
      }
      
      override public function §&!i§(param1:String, param2:§2#P§ = null, param3:String = null, param4:TextFormat = null) : void
      {
         this.btn.§&!i§(param1,param2,param3,param4);
      }
      
      override public function §00§(param1:§=#?§) : void
      {
         this.btn.§00§(param1);
      }
      
      override public function §[&§() : §=#?§
      {
         return this.btn.§[&§();
      }
      
      override public function §]%$§(param1:§=#?§) : void
      {
         this.btn.§]%$§(param1);
      }
      
      override public function get removeAllWhenDisabled() : Boolean
      {
         return this.btn.removeAllWhenDisabled;
      }
      
      override public function set removeAllWhenDisabled(param1:Boolean) : void
      {
         this.btn.removeAllWhenDisabled = param1;
      }
   }
}

