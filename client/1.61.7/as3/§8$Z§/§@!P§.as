package §8$Z§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'"N§.*;
   import §+#P§.§8"j§;
   import §,$J§.§0%G§;
   import §0"L§.§+# §;
   import §0%[§.§^"5§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §3"@§.§""m§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.§@#c§;
   import §;!Z§.§0!?§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §@!P§
   {
      
      protected var clanLogo:DisplayObjectContainer;
      
      private var §4&-§:DisplayObjectContainer;
      
      protected var §9%S§:§?%>§;
      
      protected var §&"5§:§?%>§;
      
      protected var §^!y§:§?%>§;
      
      protected var §,%L§:§?%>§;
      
      protected var §6"N§:§?%>§;
      
      protected var §?"A§:§?%>§;
      
      protected var §&%,§:§?%>§;
      
      protected var §]!W§:§?%>§;
      
      private const §[#^§:uint = §^$`§.§@"?§.length;
      
      protected var §7#a§:uint = 0;
      
      protected var §4#k§:uint = 0;
      
      protected var §4!i§:uint = 0;
      
      protected var § %e§:uint = 0;
      
      private var §^!;§:uint = 0;
      
      public function §@!P§(param1:DisplayObjectContainer, param2:DisplayObjectContainer)
      {
         super();
         this.clanLogo = param1.getChildByName("clanEditLogo") as DisplayObjectContainer;
         this.§4&-§ = DisplayObjectContainer(this.clanLogo.getChildByName("logo"));
         this.§9%S§ = §!&5§.§7#[§(param2.getChildByName("iconLeft"));
         this.§&"5§ = §!&5§.§7#[§(param2.getChildByName("iconRight"));
         this.§9%S§.§[!u§(this.§;$D§);
         this.§&"5§.§[!u§(this.§>#y§);
         this.§^!y§ = §!&5§.§7#[§(param2.getChildByName("iconColorLeft"));
         this.§,%L§ = §!&5§.§7#[§(param2.getChildByName("iconColorRight"));
         this.§^!y§.§[!u§(this.§0&-§);
         this.§,%L§.§[!u§(this.§<"+§);
         this.§6"N§ = §!&5§.§7#[§(param2.getChildByName("patternLeft"));
         this.§?"A§ = §!&5§.§7#[§(param2.getChildByName("patternRight"));
         this.§6"N§.§[!u§(this.§5!Y§);
         this.§?"A§.§[!u§(this.§?[§);
         this.§&%,§ = §!&5§.§7#[§(param2.getChildByName("patternColorLeft"));
         this.§]!W§ = §!&5§.§7#[§(param2.getChildByName("patternColorRight"));
         this.§&%,§.§[!u§(this.§0&,§);
         this.§]!W§.§[!u§(this.§7N§);
      }
      
      public function init() : void
      {
         this.§-"5§();
         this.§%%I§();
      }
      
      private function §;$D§(param1:Event) : void
      {
         if(this.§7#a§ == 0)
         {
            this.§7#a§ = §^$`§.§#[§ - 1;
         }
         else
         {
            --this.§7#a§;
         }
         this.§-"5§();
      }
      
      private function §>#y§(param1:Event) : void
      {
         if(this.§7#a§ == §^$`§.§#[§ - 1)
         {
            this.§7#a§ = 0;
         }
         else
         {
            ++this.§7#a§;
         }
         this.§-"5§();
      }
      
      private function §0&-§(param1:Event) : void
      {
         if(this.§4#k§ == 0)
         {
            this.§4#k§ = §^$`§.§1&7§.length - 1;
         }
         else
         {
            --this.§4#k§;
         }
         this.§-"5§();
      }
      
      private function §<"+§(param1:Event) : void
      {
         if(this.§4#k§ == §^$`§.§1&7§.length - 1)
         {
            this.§4#k§ = 0;
         }
         else
         {
            ++this.§4#k§;
         }
         this.§-"5§();
      }
      
      private function §5!Y§(param1:Event) : void
      {
         if(this.§4!i§ == 0)
         {
            this.§4!i§ = this.§[#^§ - 1;
         }
         else
         {
            --this.§4!i§;
         }
         this.§%%I§();
      }
      
      private function §?[§(param1:Event) : void
      {
         if(this.§4!i§ == this.§[#^§ - 1)
         {
            this.§4!i§ = 0;
         }
         else
         {
            ++this.§4!i§;
         }
         this.§%%I§();
      }
      
      private function §0&,§(param1:Event) : void
      {
         if(this.§^!;§ == 0)
         {
            return;
         }
         if(this.§ %e§ == 0)
         {
            this.§ %e§ = this.§^!;§ - 1;
         }
         else
         {
            --this.§ %e§;
         }
         this.§%%I§();
      }
      
      private function §7N§(param1:Event) : void
      {
         if(this.§^!;§ == 0)
         {
            return;
         }
         if(this.§ %e§ == this.§^!;§ - 1)
         {
            this.§ %e§ = 0;
         }
         else
         {
            ++this.§ %e§;
         }
         this.§%%I§();
      }
      
      protected function §-"5§() : void
      {
         §=%_§.§-"5§(this.§4&-§,this.§7#a§,this.§4#k§);
      }
      
      protected function §%%I§() : void
      {
         this.§^!;§ = §^$`§.§@"?§[this.§ %e§].length;
         §=%_§.§%%I§(this.§4&-§,this.§4!i§,this.§ %e§);
      }
      
      public function §%%&§() : Vector.<uint>
      {
         var _temp_1:* = new <uint>[this.§7#a§,this.§4#k§,this.§4!i§,this.§ %e§];
         return new <uint>[this.§7#a§,this.§4#k§,this.§4!i§,this.§ %e§];
      }
      
      public function §3#p§() : void
      {
         this.§7#a§ = §-q§.random(0,§^$`§.§#[§ - 1);
         this.§4#k§ = §-q§.random(0,§^$`§.§1&7§.length - 1);
         this.§4!i§ = §-q§.random(0,this.§[#^§ - 1);
         this.§^!;§ = §^$`§.§@"?§[this.§ %e§].length;
         if(this.§^!;§ == 0)
         {
            this.§ %e§ = 0;
         }
         else
         {
            this.§ %e§ = §-q§.random(0,this.§^!;§ - 1);
         }
      }
      
      public function §=@§(param1:Vector.<uint>) : void
      {
         this.§7#a§ = param1[0];
         this.§4#k§ = param1[1];
         this.§4!i§ = param1[2];
         this.§ %e§ = param1[3];
      }
      
      public function destroy() : void
      {
         this.§9%S§.removeHandler(this.§;$D§);
         this.§&"5§.removeHandler(this.§>#y§);
         this.§^!y§.removeHandler(this.§0&-§);
         this.§,%L§.removeHandler(this.§<"+§);
         this.§6"N§.removeHandler(this.§5!Y§);
         this.§?"A§.removeHandler(this.§?[§);
         this.§&%,§.removeHandler(this.§0&,§);
         this.§]!W§.removeHandler(this.§7N§);
      }
   }
}

