package ru.pragmatix.flox.social
{
   import § #9§.§"$t§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§9"z§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§%"'§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.Team;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#T§.AtomBomb;
   import §4!!§.§#Z§;
   import §4!!§.§[%@§;
   import §4#`§.§+!l§;
   import §4$b§.§6!G§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7!B§.§6#I§;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §=&!§.§<$Z§;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.adobe.images.JPGEncoder;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §>C§ extends §%"'§
   {
      
      private var §?%I§:§7"n§;
      
      private var §[%1§:String;
      
      private var resConfigVersion:String;
      
      private var langFilesVersion:String;
      
      private var privateKey:String;
      
      public function §>C§()
      {
         super();
      }
      
      public function §]%X§() : String
      {
         return this.§[%1§;
      }
      
      public function §=4§(param1:String) : void
      {
         this.§[%1§ = param1;
      }
      
      public function §54§() : §7"n§
      {
         return this.§?%I§;
      }
      
      public function setSocialType(param1:§7"n§) : void
      {
         this.§?%I§ = param1;
      }
      
      public function §3%C§(param1:String) : void
      {
         this.resConfigVersion = param1;
      }
      
      public function § $'§() : String
      {
         return this.resConfigVersion;
      }
      
      public function §"#%§(param1:String) : void
      {
         this.langFilesVersion = param1;
      }
      
      public function §=#V§() : String
      {
         return this.langFilesVersion;
      }
      
      public function §-$y§(param1:String) : void
      {
         this.privateKey = param1;
      }
      
      public function §^%n§() : String
      {
         return this.privateKey;
      }
   }
}

