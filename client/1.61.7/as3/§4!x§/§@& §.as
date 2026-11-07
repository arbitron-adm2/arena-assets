package §4!x§
{
   import § !8§.§`!d§;
   import § !P§.§]z§;
   import § #m§.§;#^§;
   import §!$D§.§2$^§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&#E§.*;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+&<§.§@$L§;
   import §+&<§.§^@§;
   import §+5§.§8$W§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!§.§6#z§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1&-§.§6"`§;
   import §2!-§.HpChangeEvent;
   import §2#x§.*;
   import §3#T§.Meteor;
   import §3#a§.§-#M§;
   import §3#a§.§<#_§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8#<§.§!#^§;
   import §8#a§.§>!o§;
   import §9%W§.§!"G§;
   import §9%k§.*;
   import §9&+§.§6&=§;
   import §<!^§.§9"§;
   import §<"?§.§7!@§;
   import §<"?§.§@&#§;
   import §<%k§.§`!v§;
   import §=!p§.§9#n§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §=&!§.§<$!§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§8%6§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.*;
   import §`%&§.§5$1§;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import com.inreflected.ui.touchScroll.VelocityCalculator;
   import config.§#!"§;
   import config.§;"I§;
   import config.achievements.§"!&§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §@& § extends §1#g§ implements §7!2§
   {
      
      private var bgPanel:Sprite;
      
      protected var §?"b§:String = "close";
      
      protected var §#0§:String = "title";
      
      protected var §]"a§:TextField;
      
      protected var title:String;
      
      private var closeBtn:§?%>§;
      
      protected var §[6§:String = "cancel";
      
      protected var §-!^§:String;
      
      protected var §!S§:§?%>§;
      
      public var §=%1§:§5!r§ = §5!r§.§7!$§;
      
      private var §>!<§:Function;
      
      private var §'%l§:Function;
      
      protected var §%%R§:§=#?§;
      
      protected var §1v§:§=#?§;
      
      protected var §6%e§:Boolean = false;
      
      protected var §0#P§:Boolean = true;
      
      private var §="Y§:Boolean;
      
      public function §@& §(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.closeBtn = §!&5§.§7#[§(getChildByName(this.§?"b§));
         this.§]"a§ = §'%s§(this.§#0§);
         if(Boolean(panel) && panel is DisplayObjectContainer)
         {
            if(!this.closeBtn)
            {
               this.closeBtn = §!&5§.§7#[§(DisplayObjectContainer(panel).getChildByName(this.§?"b§));
            }
            if(!this.§]"a§)
            {
               this.§]"a§ = DisplayObjectContainer(panel).getChildByName(this.§#0§) as TextField;
            }
         }
         if(this.closeBtn)
         {
            this.closeBtn.§[!u§(this.§0!j§);
            this.closeBtn.§00§(null);
         }
         if(this.§[6§)
         {
            this.§!S§ = §!&5§.§7#[§(getChildByName(this.§[6§));
            if(this.§!S§)
            {
               this.§!S§.§[!u§(this.§0!j§);
               this.§!S§.§00§(null);
               if(this.§-!^§)
               {
                  this.§!S§.setText(this.§-!^§);
               }
            }
         }
      }
      
      public function §!s§() : void
      {
         if(this.isShown())
         {
            TweenMax.killTweensOf(container);
            if(this.bgPanel)
            {
               this.bgPanel.width = § "N§.stageWidth;
               this.bgPanel.height = § "N§.stageHeight;
            }
            if(this.§0#P§)
            {
               this.§6!<§();
            }
         }
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         this.§%%R§ = § "N§.§^"Q§;
         this.§1v§ = § "N§.§3$x§;
      }
      
      override protected function §^^§() : void
      {
         if(Boolean(this.title) && Boolean(this.§]"a§))
         {
            this.§]"a§.text = this.title;
         }
         super.§^^§();
      }
      
      public function show(param1:Boolean = true) : void
      {
         if(this.isShown())
         {
            return;
         }
         this.§="Y§ = true;
         if(param1)
         {
            this.bgPanel = new Sprite();
            this.bgPanel.graphics.beginFill(§ "N§.§9!l§,§ "N§.§ %j§);
            this.bgPanel.graphics.drawRect(0,0,§ "N§.stageWidth,§ "N§.stageHeight);
            § "N§.scene.addChild(this.bgPanel);
            if(this.§6%e§)
            {
               this.bgPanel.addEventListener(MouseEvent.CLICK,this.§0!j§);
            }
         }
         container.alpha = 0;
         if(this.§0#P§)
         {
            this.§6!<§();
         }
         § "N§.scene.addChild(container);
         if(§ "N§.§"%R§ || !this.§=%1§ || this.§=%1§ == §5!r§.§7!$§)
         {
            this.§@%n§();
         }
         else if(this.§=%1§ == §5!r§.§<![§)
         {
            TweenMax.to(this.getContainer(),0.3,{
               "startAt":{
                  "alpha":0,
                  "y":-container.height / 2
               },
               "alpha":1,
               "y":y,
               "ease":Circ.easeIn,
               "onComplete":this.§@%n§
            });
         }
         else if(this.§=%1§ == §5!r§.§+&H§ && this.§>!<§ != null)
         {
            this.§>!<§(this,this.§@%n§);
         }
         if(this.§%%R§)
         {
            §@%;§.play(this.§%%R§);
         }
      }
      
      public function hide() : void
      {
         if(!this.isShown())
         {
            return;
         }
         this.§="Y§ = false;
         §8#u§.§6"_§(this);
         if(this.bgPanel != null && § "N§.scene.contains(this.bgPanel))
         {
            if(this.§6%e§)
            {
               this.bgPanel.removeEventListener(MouseEvent.CLICK,this.§0!j§);
            }
            § "N§.scene.removeChild(this.bgPanel);
            this.bgPanel = null;
         }
         if(§ "N§.§"%R§ || !this.§=%1§ || this.§=%1§ == §5!r§.§7!$§)
         {
            this.§>"a§();
         }
         else if(this.§=%1§ == §5!r§.§<![§)
         {
            TweenMax.to(this.getContainer(),0.3,{
               "alpha":0,
               "y":this.y + 150,
               "onComplete":this.§>"a§,
               "ease":Circ.easeIn
            });
         }
         else if(this.§=%1§ == §5!r§.§+&H§ && this.§'%l§ != null)
         {
            this.§'%l§(this,this.§>"a§);
         }
         if(this.§1v§)
         {
            §@%;§.play(this.§1v§);
         }
      }
      
      public function §8%&§() : void
      {
         if(this.isShown())
         {
            this.hide();
         }
         else
         {
            this.show();
         }
      }
      
      private function §@%n§() : void
      {
         container.alpha = 1;
         §8#u§.§!D§(this);
         dispatchEvent(new Event(§[%w§.WINDOW_SHOW));
      }
      
      private function §>"a§() : void
      {
         if(§ "N§.scene.contains(getContainer()))
         {
            § "N§.scene.removeChild(getContainer());
         }
         dispatchEvent(new Event(§[%w§.WINDOW_CLOSE));
      }
      
      override protected function okAction() : void
      {
         super.okAction();
         this.hide();
      }
      
      protected function §0!j§(param1:MouseEvent) : void
      {
         this.hide();
         dispatchEvent(new Event(§[%w§.WINDOW_CANCEL));
      }
      
      public function §+"0§() : §5!r§
      {
         return this.§=%1§;
      }
      
      public function §]&>§(param1:§5!r§) : void
      {
         this.§=%1§ = param1;
      }
      
      override public function isShown() : Boolean
      {
         return this.§="Y§;
      }
      
      override public function destroy() : void
      {
         if(this.closeBtn)
         {
            this.closeBtn.destroy();
         }
         super.destroy();
      }
      
      public function §="Q§(param1:§=#?§) : void
      {
         this.§%%R§ = param1;
      }
      
      public function §^!S§(param1:§=#?§) : void
      {
         this.§1v§ = param1;
      }
      
      public function §#$T§(param1:Function) : void
      {
         this.§=%1§ = §5!r§.§+&H§;
         this.§>!<§ = param1;
      }
      
      public function §># §(param1:Function) : void
      {
         this.§=%1§ = §5!r§.§+&H§;
         this.§'%l§ = param1;
      }
      
      public function §6!<§() : void
      {
         if(panel)
         {
            container.x = (§ "N§.stageWidth - panel.width) / 2;
            container.y = (§ "N§.stageHeight - panel.height) / 2;
         }
         else
         {
            §`o§.§<_§(this);
         }
      }
      
      public function §#7§(param1:String) : void
      {
         this.title = param1;
         if(this.§]"a§)
         {
            this.§]"a§.text = param1;
         }
      }
      
      public function §'"w§(param1:String) : void
      {
         this.§-!^§ = param1;
         if(this.§!S§)
         {
            this.§!S§.setText(param1);
         }
      }
      
      public function § #P§() : Boolean
      {
         return this.bgPanel != null && § "N§.scene.contains(this.bgPanel);
      }
   }
}

