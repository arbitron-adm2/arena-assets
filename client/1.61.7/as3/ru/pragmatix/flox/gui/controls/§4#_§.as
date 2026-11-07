package ru.pragmatix.flox.gui.controls
{
   import § #m§.§2#P§;
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import § %f§.§6&4§;
   import §!!i§.§@&&§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§ G§;
   import §"%H§.§'%u§;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.*;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"R§.*;
   import §&"c§.§5$n§;
   import §&#h§.§,#;§;
   import §&&6§.*;
   import §&x§.§8$5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.QuestGiftItem;
   import §+$=§.*;
   import §+%S§.§+m§;
   import §+%S§.§-$s§;
   import §+%S§.§2$#§;
   import §+%S§.§="_§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!§.§[k§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §2!-§.DamageEvent;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §2B§.§^%y§;
   import §3"_§.*;
   import §3#T§.§5!M§;
   import §4#2§.*;
   import §4$b§.§2m§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §8#a§.*;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §;$%§.§'%W§;
   import §;&2§.§!#W§;
   import §<!W§.§7!L§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§'$g§;
   import §<%E§.§,$2§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §<K§.RatingTabClan;
   import §=!p§.§!"9§;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §="z§.§9%1§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?"j§.§]!<§;
   import §?$7§.§+l§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§2!c§;
   import §?>§.§]!V§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.§+%n§;
   import §^!]§.MineSetUpEvent;
   import §^!]§.WeaponShootEvent;
   import §^"<§.§?"h§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§,%§;
   import §`%&§.§5$1§;
   import §`%&§.§8U§;
   import §`%&§.§@&,§;
   import config.§=%A§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.StatusEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.extensions.native.*;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.UnluckyCraftCount;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §4#_§ extends §"&H§ implements §;"L§
   {
      
      protected var §9$b§:Boolean;
      
      public var §<"b§:Boolean = false;
      
      protected var container:DisplayObject;
      
      public var disabled:Boolean;
      
      private var §1#6§:§[&H§;
      
      protected var §@$j§:§=#?§;
      
      protected var §-%m§:§=#?§;
      
      private var §9!4§:String;
      
      private var §+#t§:§%%v§;
      
      private var §%!i§:Boolean = § "N§.§]p§;
      
      private var §'!F§:§""t§;
      
      public function §4#_§(param1:DisplayObject = null)
      {
         super();
         this.§%&9§();
         if(param1)
         {
            this.id = param1.name;
            this.§@"o§(param1);
         }
         if(!this.id)
         {
            this.id = §2!c§.§'%E§();
         }
      }
      
      public function §@"o§(param1:DisplayObject) : void
      {
         this.container = param1;
         this.§+#t§ = new §%%v§();
         this.§0A§(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.§0A§(Event.REMOVED_FROM_STAGE,this.§2-§);
         if(this.§@$j§)
         {
            this.§0A§(MouseEvent.CLICK,this.§%>§);
         }
         if(this.§-%m§)
         {
            this.§0A§(MouseEvent.ROLL_OVER,this.§6$X§);
         }
      }
      
      public function getContainer() : DisplayObject
      {
         return this.container;
      }
      
      public function setDisabled(param1:Boolean) : void
      {
         this.disabled = param1;
      }
      
      public function §8,§() : Boolean
      {
         return this.disabled;
      }
      
      public function isVisible() : Boolean
      {
         return this.container.visible;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         this.container.visible = param1;
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         if(!this.§9$b§)
         {
            this.§^^§();
            this.§9$b§ = true;
         }
      }
      
      protected function §2-§(param1:Event) : void
      {
         if(this.§<"b§)
         {
            this.destroy();
         }
      }
      
      public function setQtip(param1:String, param2:§;#^§ = null, param3:String = null, param4:TextFormat = null) : void
      {
         this.§&!i§(param1,§2#P§.§<%T§(param2),param3,param4);
      }
      
      public function §&!i§(param1:String, param2:§2#P§ = null, param3:String = null, param4:TextFormat = null) : void
      {
         var _loc5_:Qtip = null;
         if(param1)
         {
            _loc5_ = new Qtip(param1,param3,param4);
         }
         this.§;!^§(_loc5_,param2);
      }
      
      public function setQtipPanel(param1:§?A§, param2:§;#^§ = null) : void
      {
         this.§;!^§(param1,§2#P§.§<%T§(param2));
      }
      
      public function §"#I§() : §?A§
      {
         if(this.§1#6§)
         {
            return this.§1#6§.§`&?§();
         }
         return null;
      }
      
      public function §;!^§(param1:§?A§, param2:§2#P§ = null) : void
      {
         if(!this.§1#6§)
         {
            this.§1#6§ = new §[&H§(this.container,param2);
         }
         else
         {
            this.§1#6§.§`Z§();
         }
         if(param1)
         {
            this.§1#6§.§@!y§(param1,param2);
         }
      }
      
      protected function §%>§(param1:Event) : void
      {
         if(this.§@$j§)
         {
            §@%;§.play(this.§@$j§);
         }
      }
      
      protected function §<$=§() : void
      {
         if(this.§1#6§)
         {
            this.§1#6§.removeHintImmediately();
         }
      }
      
      protected function §^^§() : void
      {
      }
      
      protected function §%&9§() : void
      {
      }
      
      protected function §6$X§(param1:MouseEvent) : void
      {
         if(this.§-%m§)
         {
            §@%;§.play(this.§-%m§);
         }
      }
      
      public function get x() : Number
      {
         return this.container.x;
      }
      
      public function set x(param1:Number) : void
      {
         this.container.x = param1;
      }
      
      public function get y() : Number
      {
         return this.container.y;
      }
      
      public function set y(param1:Number) : void
      {
         this.container.y = param1;
      }
      
      public function get width() : Number
      {
         return this.container.width;
      }
      
      public function set width(param1:Number) : void
      {
         this.container.width = param1;
      }
      
      public function get height() : Number
      {
         return this.container.height;
      }
      
      public function set height(param1:Number) : void
      {
         this.container.height = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.container.scaleX;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.container.scaleX = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.container.scaleY;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.container.scaleY = param1;
      }
      
      public function get parent() : §""t§
      {
         return this.§'!F§;
      }
      
      public function set parent(param1:§""t§) : void
      {
         this.§'!F§ = param1;
      }
      
      public function §-$m§(param1:DisplayObjectContainer) : void
      {
         param1.addChild(this.container);
      }
      
      public function §-&G§(param1:DisplayObjectContainer) : void
      {
         param1.removeChild(this.container);
      }
      
      public function §00§(param1:§=#?§) : void
      {
         this.§@$j§ = param1;
      }
      
      public function §[&§() : §=#?§
      {
         return this.§@$j§;
      }
      
      public function §]%$§(param1:§=#?§) : void
      {
         this.§-%m§ = param1;
      }
      
      public function get id() : String
      {
         return this.§9!4§;
      }
      
      public function set id(param1:String) : void
      {
         this.§9!4§ = param1;
      }
      
      protected function §!%P§(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§+#t§.removeEventListener(this.container,param1,param2,param3);
      }
      
      protected function §0A§(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§+#t§.addEventListener(this.container,param1,param2,param3,param4,param5);
      }
      
      protected function §0$0§(param1:IEventDispatcher, param2:String, param3:Function, param4:Boolean = false) : void
      {
         this.§+#t§.removeEventListener(param1,param2,param3,param4);
      }
      
      protected function §^"P§(param1:IEventDispatcher, param2:String, param3:Function, param4:Boolean = false, param5:int = 0, param6:Boolean = false) : void
      {
         this.§+#t§.addEventListener(param1,param2,param3,param4,param5,param6);
      }
      
      override public function destroy() : void
      {
         if(this.§1#6§)
         {
            this.§1#6§.§`Z§();
            this.§1#6§ = null;
         }
         this.§+#t§.destroy();
         this.§9$b§ = false;
         super.destroy();
      }
      
      public function isShown() : Boolean
      {
         return Boolean(this.container.stage) && this.isVisible();
      }
      
      public function get removeAllWhenDisabled() : Boolean
      {
         return this.§%!i§;
      }
      
      public function set removeAllWhenDisabled(param1:Boolean) : void
      {
         this.§%!i§ = param1;
      }
   }
}

