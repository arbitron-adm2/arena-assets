package §%#u§
{
   import § #m§.§[&H§;
   import § $q§.§3U§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §&"c§.§5$n§;
   import §'$Z§.§2#f§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §-@§.§0"e§;
   import §0%[§.§1%"§;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§2=§;
   import §2!-§.§-!6§;
   import §2!-§.DamageEvent;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §4f§.§-&§;
   import §4u§.§[%u§;
   import §6",§.§[%w§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$1§.*;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.§9%1§;
   import §?$7§.§6J§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^4§.§@#J§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndBattle;
   import ru.pragmatix.wormix.pvp.messages.server.PvpRetryCommandRequestServer;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §`"_§ extends §`&-§ implements §^c§
   {
      
      private var §^#w§:§`&-§;
      
      private var §?$"§:§`&-§;
      
      private var §7!Z§:§`&-§;
      
      private var §'e§:§`&-§;
      
      private var §=&<§:§`&-§;
      
      private var §7!]§:§3U§;
      
      private var §<&3§:§!"$§;
      
      private var §""e§:MovieClip;
      
      private var callback:Function;
      
      public function §`"_§(param1:DisplayObject, param2:int, param3:Function)
      {
         super(param1);
         this.callback = param3;
         this.§""e§ = §'$a§("gift.item");
         this.§=&<§ = new §`&-§(this.§""e§);
         this.§7!]§ = new §3U§(this.§=&<§.getChildByName("icon"),true);
         this.§'e§ = new §`&-§(this.§=&<§.getChildByName("fuzy"));
         this.§7!Z§ = new §`&-§(this.§=&<§.getChildByName("ruby"));
         this.§?$"§ = new §`&-§(this.§=&<§.getChildByName("reaction"));
         this.§^#w§ = new §`&-§(this.§=&<§.getChildByName("exp"));
         this.§""e§.visible = false;
         this.§=&<§.setVisible(false);
         this.§7!]§.setVisible(false);
         this.§'e§.setVisible(false);
         this.§7!Z§.setVisible(false);
         this.§?$"§.setVisible(false);
         this.§^#w§.setVisible(false);
         var _loc4_:MovieClip = §'$a§("box");
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.numChildren)
         {
            _loc4_.getChildByName("box" + _loc5_).visible = _loc5_ == param2;
            _loc5_++;
         }
         this.§<&3§ = new §!"$§(_loc4_);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.§ $#§);
      }
      
      private function § $#§(param1:Event) : void
      {
         container.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ $#§);
         this.§=&<§.setVisible(true);
         this.callback(this);
      }
      
      public function setCount(param1:uint) : void
      {
         this.§=&<§.setVisible(false);
         §&$9§.§>&F§(§'%s§("gift.item.count"),§"-§.§6"j§,param1.toString());
      }
      
      public function §!!j§(param1:uint) : void
      {
         this.§""e§.visible = true;
         this.setCount(param1);
         setQtip(§0$N§.FUZY_QTIP);
         this.§'e§.setVisible(true);
      }
      
      public function §=%=§(param1:uint) : void
      {
         this.§""e§.visible = true;
         this.setCount(param1);
         setQtip(§0$N§.RUBY_QTIP);
         this.§7!Z§.setVisible(true);
      }
      
      public function §=#6§(param1:uint) : void
      {
         this.§""e§.visible = true;
         this.setCount(param1);
         setQtip(§0$N§.REACTION_QTIP);
         this.§?$"§.setVisible(true);
      }
      
      public function §>%w§(param1:uint) : void
      {
         this.§""e§.visible = true;
         this.setCount(param1);
         setQtip(§0$N§.EXPERIENCE);
         this.§^#w§.setVisible(true);
      }
      
      public function setItem(param1:§&!e§, param2:int = 0) : void
      {
         if(param1)
         {
            this.§""e§.visible = true;
            if(param2 > 0)
            {
               this.setCount(param2);
            }
            this.§7!]§.setItem(param1);
            this.§7!]§.setVisible(true);
            this.§7!]§.x = -this.§7!]§.width * 0.15;
            this.§7!]§.y = -this.§7!]§.height * 0.01;
         }
      }
      
      public function §@#$§(param1:Boolean, param2:uint) : void
      {
         if(param2 == 0)
         {
            this.§7%H§();
         }
         else
         {
            §1%"§.delay(this.§7%H§,this,param2 * 100);
         }
         this.§""e§.visible = param1;
      }
      
      private function §7%H§() : void
      {
         this.§<&3§.stopAnimations();
         §'$a§("gift.explode").play();
         this.§<&3§.setVisible(false);
      }
      
      public function playAnimations() : void
      {
      }
      
      public function stopAnimations() : void
      {
         if(this.§<&3§)
         {
            this.§<&3§.stopAnimations();
         }
      }
      
      override public function destroy() : void
      {
         container.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ $#§);
         this.§<&3§.destroy();
         this.§=&<§.destroy();
         this.§7!]§.destroy();
         this.§'e§.destroy();
         this.§7!Z§.destroy();
         this.§?$"§.destroy();
         this.§^#w§.destroy();
         this.§=&<§ = this.§'e§ = this.§7!Z§ = this.§?$"§ = null;
         this.§<&3§ = null;
         this.§7!]§ = null;
         this.callback = null;
         super.destroy();
      }
   }
}

