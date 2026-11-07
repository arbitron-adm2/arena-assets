package §=#y§
{
   import § !8§.§`!d§;
   import § "L§.*;
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'$Z§.*;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §<!W§.§#&#§;
   import §<!^§.§["l§;
   import §<%J§.§!!`§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import com.adobe.images.JPGEncoder;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.request.edit.IncreaseLevelClanRequest;
   import ru.pragmatix.wormix.messages.client.SetHotkeys;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §?$D§
   {
      
      protected var §]E§:§?%>§;
      
      protected var §8%M§:§?%>§;
      
      protected var §+!§:Array;
      
      protected var index:int;
      
      protected var §?"?§:int;
      
      protected var §=%p§:Function;
      
      public function §?$D§(param1:Function, param2:MovieClip, param3:String, param4:String)
      {
         super();
         this.§=%p§ = param1;
         this.§]E§ = §!&5§.§7#[§(param2.getChildByName("change" + param3 + "Left"));
         this.§8%M§ = §!&5§.§7#[§(param2.getChildByName("change" + param3 + "Right"));
         this.§]E§.setQtip(param4,§;#^§.§[!K§);
         this.§8%M§.setQtip(param4,§;#^§.§[!K§);
         this.§]E§.§[!u§(this.§%"7§);
         this.§8%M§.§[!u§(this.§,!+§);
         this.§"!;§(true);
      }
      
      protected function §%"7§(param1:Event) : void
      {
         --this.index;
         if(this.index <= 0)
         {
            this.§]E§.setDisabled(true);
         }
         if(this.index < this.§+!§.length - 1)
         {
            this.§8%M§.setDisabled(false);
         }
         this.§,$3§();
      }
      
      protected function §,!+§(param1:Event) : void
      {
         ++this.index;
         if(this.index != 0)
         {
            this.§]E§.setDisabled(false);
         }
         if(this.index >= this.§+!§.length - 1)
         {
            this.§8%M§.setDisabled(true);
         }
         this.§,$3§();
      }
      
      protected function §,$3§() : void
      {
      }
      
      public function §"!;§(param1:Boolean) : void
      {
         this.§]E§.setDisabled(param1);
         this.§8%M§.setDisabled(param1);
      }
      
      public function §3%q§() : void
      {
         this.§]E§.setDisabled(this.index <= 0);
         this.§8%M§.setDisabled(this.index >= this.§+!§.length - 1);
      }
      
      public function §`$+§(param1:UserProfile = null) : void
      {
      }
      
      public function §"#D§() : Object
      {
         return this.§+!§[this.index];
      }
      
      public function reset() : void
      {
         this.§+!§ = [];
         this.index = 0;
      }
   }
}

