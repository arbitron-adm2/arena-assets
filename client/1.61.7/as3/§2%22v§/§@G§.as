package §2"v§
{
   import § !P§.§9%Z§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§<"4§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%L§.§%%w§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §0&F§.UpgradeEvent;
   import §2!-§.HpChangeEvent;
   import §4'§.§^"p§;
   import §4u§.§#"d§;
   import §7$t§.§&!e§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §;!Z§.§5"d§;
   import §<"L§.*;
   import §=!V§.*;
   import §=#g§.§%!x§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import §`%&§.§,%§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.gui.§>#r§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §@G§ extends §>#r§
   {
      
      public static const §#!,§:int = 0;
      
      public static const §%%8§:int = 1;
      
      public static const §3!+§:int = 2;
      
      public static const §4#q§:int = 3;
      
      private var §;$d§:MovieClip;
      
      private var §##3§:MovieClip;
      
      private var § 4§:MovieClip;
      
      private var §7!'§:MovieClip;
      
      private var §8#T§:§<"4§;
      
      private var downgradeBtn:§?%>§;
      
      private var §,"k§:§#$s§;
      
      private var §#"A§:int;
      
      private var §&#S§:Boolean = true;
      
      private var icon:§3U§;
      
      public var §?!t§:int = -1;
      
      public var §?"p§:int;
      
      public var §^$0§:int;
      
      private var §@!O§:TextField;
      
      private var count:TextField;
      
      private var §2$l§:TextField;
      
      public function §@G§(param1:§#$s§, param2:int = 1)
      {
         var _loc3_:Object = null;
         super(§6#A§.§!&6§(§+"'§.§`&D§));
         this.§;$d§ = container["takenUpgrade"];
         this.§##3§ = container["notAvailableUpgrade"];
         this.§ 4§ = container["availableUpgrade"];
         this.§7!'§ = container["lock"];
         this.icon = new §3U§(container.getChildByName("icon"),true,false);
         this.icon.§1&!§(1);
         this.§8#T§ = §!&5§.§7#[§(container["collectBtn"]) as §<"4§;
         this.§8#T§.setText(§0$N§.COLLECT_FOR_REAGENT_BTN,§"-§.§+$m§);
         this.downgradeBtn = §!&5§.§7#[§(container["downgradeBtn"]);
         this.downgradeBtn.setText(§0$N§.DOWNGRADE_BTN,§"-§.§+$m§);
         this.§?"p§ = this.§8#T§.x;
         this.§^$0§ = this.§8#T§.y;
         this.count = container.getChildByName("count") as TextField;
         this.count.visible = false;
         this.§@!O§ = container.getChildByName("notify") as TextField;
         this.§@!O§.width = this.downgradeBtn.width;
         this.§@!O§.x = this.downgradeBtn.x;
         this.§@!O§.visible = false;
         this.§2$l§ = container.getChildByName("textNew") as TextField;
         if(this.§2$l§)
         {
            this.§2$l§.visible = false;
            this.§2$l§.mouseEnabled = false;
         }
         this.§,"k§ = param1;
         if(param1)
         {
            this.§]$o§(§<$c§.§ !=§(param1.upgradeId));
            _loc3_ = §1@§.§=!u§(param1.upgradeId);
            if(_loc3_.isNew)
            {
               this.§[#"§(true,§^"p§.§9%t§);
            }
            else if(_loc3_.isPowered)
            {
               this.§[#"§(true,§^"p§.POWERED);
            }
            else if(_loc3_.shopState)
            {
               this.§[#"§(true,_loc3_.shopState);
            }
            else
            {
               this.§[#"§(false);
            }
         }
         this.setState(param2);
      }
      
      public function setState(param1:int) : void
      {
         switch(param1)
         {
            case §#!,§:
               this.§6$i§(true,false,false,true,false,false,false);
               this.§8#T§.removeAllWhenDisabled = false;
               break;
            case §%%8§:
               this.§6$i§(false,true,true,false,true,false,false);
               this.§8#T§.setDisabled(true);
               this.§8#T§.removeAllWhenDisabled = true;
               break;
            case §3!+§:
               this.§6$i§(false,true,false,true,false,false,true);
               this.§8#T§.setDisabled(false);
               this.§&#S§ = true;
               break;
            case §4#q§:
               this.§6$i§(true,false,false,true,false,true,true);
               this.§&#S§ = false;
         }
         this.§#"A§ = param1;
      }
      
      private function §6$i§(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean) : void
      {
         this.§;$d§.visible = param1;
         this.§8#T§.setVisible(param2);
         this.§##3§.visible = param3;
         this.§ 4§.visible = param4;
         this.§7!'§.visible = param5;
         this.downgradeBtn.setVisible(param6);
         if(param7 && !(this.§8#T§.hasEventListener(MouseEvent.CLICK) && this.icon.getContainer().hasEventListener(MouseEvent.CLICK)))
         {
            this.§8#T§.addEventListener(MouseEvent.CLICK,this.§'#I§);
            this.downgradeBtn.addEventListener(MouseEvent.CLICK,this.§'#I§);
            this.icon.getContainer().addEventListener(MouseEvent.CLICK,this.§'#I§);
         }
         else if(!param7 && this.§8#T§.hasEventListener(MouseEvent.CLICK) && this.icon.getContainer().hasEventListener(MouseEvent.CLICK))
         {
            this.§8#T§.removeEventListener(MouseEvent.CLICK,this.§'#I§);
            this.downgradeBtn.removeEventListener(MouseEvent.CLICK,this.§'#I§);
            this.icon.getContainer().removeEventListener(MouseEvent.CLICK,this.§'#I§);
         }
      }
      
      public function §;"5§(param1:Boolean) : void
      {
         this.§8#T§.setVisible(param1);
      }
      
      private function §'#I§(param1:MouseEvent) : void
      {
         this.§=%X§();
      }
      
      public function §=%X§() : void
      {
         dispatchEvent(new UpgradeEvent(this.§,"k§,this.§&#S§));
      }
      
      public function §]$o§(param1:§&!e§) : void
      {
         var _loc2_:§#"d§ = new §#"d§();
         _loc2_.initHint(param1);
         this.icon.setItem(param1,_loc2_);
      }
      
      public function §7#t§(param1:String, param2:uint = 9796704) : void
      {
         if(Boolean(param1) && param1.length > 0)
         {
            this.§@!O§.visible = true;
            this.§@!O§.textColor = param2;
            this.§@!O§.width = this.downgradeBtn.width * 2;
            this.§@!O§.x = this.downgradeBtn.x - this.downgradeBtn.width * 0.5;
            §7&5§.§>&<§(this.§@!O§,param1);
            this.§@!O§.y = this.§8#T§.isVisible() ? this.§8#T§.y + this.§8#T§.height + 5 : this.icon.y + this.icon.height + 5;
         }
         else
         {
            this.§@!O§.visible = false;
         }
      }
      
      public function setCount(param1:int) : void
      {
         if(param1)
         {
            this.count.visible = true;
            §7&5§.§?$k§(this.count,param1.toString());
         }
         else
         {
            this.count.visible = false;
         }
      }
      
      public function §;e§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8#T§.x = this.downgradeBtn.x = this.icon.x + this.icon.width + 15;
            this.§8#T§.y = this.downgradeBtn.y = this.icon.y + (this.icon.height - this.§8#T§.height) * 0.5;
         }
         else
         {
            §§push(this.§8#T§);
            §§push(this.downgradeBtn);
            var _temp_3:* = this.§?"p§;
            §§pop().x = §§pop().x = this.§?"p§;
            this.§8#T§.y = this.downgradeBtn.y = this.§^$0§;
         }
      }
      
      public function §[#"§(param1:Boolean, param2:§^"p§ = null) : void
      {
         if(!this.§2$l§)
         {
            return;
         }
         this.§2$l§.visible = param1;
         this.§2$l§.text = param2 ? §^"p§.getText(param2) : "";
      }
      
      public function §'#]§() : §#$s§
      {
         return this.§,"k§;
      }
      
      public function §##m§() : int
      {
         return this.§#"A§;
      }
      
      public function §-$S§() : §3U§
      {
         return this.icon;
      }
      
      public function §7$R§() : §<"4§
      {
         return this.§8#T§;
      }
   }
}

