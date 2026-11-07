package ru.pragmatix.flox.gui.controls
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §"$+§.§@C§;
   import §#!5§.§]#w§;
   import §#"V§.§<"4§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §0!§.§9"u§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2#i§.§9##§;
   import §2B§.§#&E§;
   import §3#T§.*;
   import §4!!§.§%$$§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!b§.*;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#o§.§1@§;
   import §<$q§.§?!d§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>%I§.§`!g§;
   import §?#g§.Race;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §["3§.§-%q§;
   import §["3§.§?%Q§;
   import §["3§.§@%^§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §`,§ extends §4#_§
   {
      
      public var pageSize:int = 10;
      
      private var §!$§:§]#w§;
      
      public var textField:TextField;
      
      private var §9!_§:Boolean = true;
      
      public function §`,§(param1:TextField, param2:DisplayObjectContainer)
      {
         super(param1);
         this.textField = param1;
         this.§!$§ = new §]#w§(param2);
         this.§!$§.addEventListener(Event.CHANGE,this.§"#B§);
         this.§!$§.§]"M§(this.textField.numLines);
         this.update();
         this.textField.addEventListener(Event.SCROLL,this.§+#i§);
      }
      
      public function getText() : String
      {
         return this.textField.text;
      }
      
      public function setText(param1:String) : void
      {
         this.textField.text = param1;
         this.update();
      }
      
      public function §6"2§() : String
      {
         return this.textField.htmlText;
      }
      
      public function §,!x§(param1:String) : void
      {
         this.textField.htmlText = param1;
         this.update();
      }
      
      public function §8%q§(param1:String) : void
      {
         this.textField.htmlText += param1;
         this.update();
      }
      
      public function update() : void
      {
         this.§!$§.§]"M§(this.textField.maxScrollV);
         if(this.§!$§.getValue() > this.§!$§.§"D§())
         {
            this.§!$§.setValue(this.§!$§.§"D§());
         }
         this.§,$M§(this.§9!_§);
         this.textField.scrollV = this.§!$§.getValue();
      }
      
      private function §+#i§(param1:Event) : void
      {
         this.§!$§.setValue(this.textField.scrollV);
      }
      
      private function §"#B§(param1:Event) : void
      {
         this.textField.scrollV = this.§!$§.getValue();
      }
      
      public function §,$M§(param1:Boolean) : void
      {
         this.§9!_§ = param1;
         this.§!$§.setVisible(param1 && this.textField.numLines > this.pageSize);
      }
      
      override public function destroy() : void
      {
         this.§!$§.removeEventListener(Event.CHANGE,this.§"#B§);
         this.textField.removeEventListener(Event.SCROLL,this.§+#i§);
         this.§!$§.destroy();
         super.destroy();
      }
      
      public function get scrollV() : int
      {
         return this.textField.scrollV;
      }
      
      public function set scrollV(param1:int) : void
      {
         this.textField.scrollV = param1;
         this.§!$§.setValue(this.textField.scrollV);
      }
      
      public function get maxScrollV() : int
      {
         return this.textField.maxScrollV;
      }
      
      public function §4" §(param1:TextFormat, param2:Boolean = true) : void
      {
         this.textField.defaultTextFormat = param1;
         if(this.textField.text)
         {
            this.textField.setTextFormat(param1);
         }
         if(param2)
         {
            this.textField.embedFonts = true;
         }
      }
   }
}

