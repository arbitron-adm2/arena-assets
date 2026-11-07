package §<%k§
{
   import § #9§.§"$t§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §#$e§.*;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"1§.§+#h§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§=t§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-%B§.*;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1A§.§-"`§;
   import §2#H§.§#$A§;
   import §2#H§.§,#V§;
   import §2#i§.§+%z§;
   import §3%?§.§=E§;
   import §4$b§.§6!G§;
   import §4'§.§`"q§;
   import §5#`§.*;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §<%E§.§6$=§;
   import §=!p§.§8#x§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §=&6§.*;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?$7§.§8"e§;
   import §@!N§.*;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §[!`§.§!$^§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import api.com.adobe.json.JSON;
   import avmplus.getQualifiedClassName;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.messages.client.GetProfiles;
   import ru.pragmatix.wormix.messages.client.NeedMoney;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §`!t§
   {
      
      protected var §#&9§:Array = [];
      
      protected var §+n§:Array = [];
      
      protected var §0#S§:Array = [];
      
      protected var §"%!§:Array = [];
      
      protected var §9$G§:Array = [];
      
      protected var §-%3§:Array = [];
      
      protected var §6!§:Array = [];
      
      protected var §>$d§:Array = [];
      
      protected var §<u§:Array = [];
      
      protected var §&#^§:Array = [];
      
      protected var §;"'§:Array = [];
      
      protected var §-!h§:Array = [];
      
      protected var §#$6§:§=#?§;
      
      private const §#Q§:§-"`§ = new §-"`§(300);
      
      public function §`!t§()
      {
         super();
      }
      
      public function §3%3§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§+n§));
      }
      
      public function §"!9§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§#&9§));
      }
      
      public function §3$S§() : void
      {
         if(this.§#Q§.tick())
         {
            §@%;§.play(§`!v§.§=%2§(this.§0#S§));
         }
      }
      
      public function §]#0§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§"%!§));
      }
      
      public function §;0§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§9$G§));
      }
      
      public function §^!6§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§-%3§));
      }
      
      public function §&"C§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§>$d§));
      }
      
      public function §=§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§6!§));
      }
      
      public function §>"j§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§<u§));
      }
      
      public function §=!w§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§&#^§));
      }
      
      public function §&"p§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§;"'§));
      }
      
      public function §'$M§() : void
      {
         §@%;§.play(§`!v§.§=%2§(this.§-!h§));
      }
      
      public function §>!C§() : §=#?§
      {
         return this.§#$6§;
      }
   }
}

