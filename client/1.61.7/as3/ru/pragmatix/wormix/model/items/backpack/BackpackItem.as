package ru.pragmatix.wormix.model.items.backpack
{
   import § !8§.§`!d§;
   import § #9§.§"$t§;
   import § #k§.*;
   import § #m§.§;#^§;
   import § $q§.*;
   import §!!!§.§7&%§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!K§.§&#Q§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§ G§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §#%!§.§ §;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §&#h§.§!#x§;
   import §&#h§.§-"F§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §+%S§.§2!x§;
   import §+%S§.§2&>§;
   import §+%S§.§?3§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1&-§.§]%4§;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §2#H§.§;!Y§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §2o§.§]#;§;
   import §2o§.§]#@§;
   import §3"@§.§##L§;
   import §3"_§.*;
   import §4$b§.§2m§;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8$V§.*;
   import §8$Z§.*;
   import §9%W§.§&!P§;
   import §;$8§.§6"E§;
   import §<!W§.§#&#§;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§!"9§;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §="z§.*;
   import §=&!§.§ "^§;
   import §>!_§.§'!&§;
   import §>"l§.§?$O§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §["3§.CraftEquipInfoHint;
   import §[$<§.§;%S§;
   import §[$<§.§>"9§;
   import §[%'§.§<"G§;
   import §]$&§.§2&2§;
   import §]7§.§0!v§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.adobe.serialization.json.JSONDecoder;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import com.hurlant.util.Base64;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import org.gestouch.core.Touch;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.client.StartBattle;
   import ru.pragmatix.wormix.messages.client.SyncInvestedAwardPoints;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BackpackItem
   {
      
      private var record:§&!e§;
      
      private var itemId:§&$2§;
      
      private var count:§&$2§;
      
      private var §#"'§:int;
      
      private var maxShots:§&$2§;
      
      private var shotsLeft:§&$2§ = new §&$2§(-1);
      
      private var delay:int = -1;
      
      private var level:uint = 1;
      
      private var maxLevel:uint = 1;
      
      private var §%,§:Boolean = false;
      
      private var §'"#§:Boolean = false;
      
      public function BackpackItem(param1:§&!e§, param2:int, param3:uint)
      {
         super();
         this.record = param1;
         this.itemId = new §&$2§(param1.getId());
         this.count = new §&$2§(param2);
         this.§#"'§ = param2;
         this.maxShots = new §&$2§(param3);
         if(param3 > 0)
         {
            this.shotsLeft.value = param3;
         }
      }
      
      public function getRecord() : §&!e§
      {
         return this.record;
      }
      
      public function getId() : int
      {
         return this.itemId.value;
      }
      
      public function isInfinite() : Boolean
      {
         return this.count.value == -1;
      }
      
      public function §8"I§() : Boolean
      {
         return this.count.value == -1 && this.maxLevel == this.level;
      }
      
      public function §&"4§() : Boolean
      {
         return this.maxShots.value > 0;
      }
      
      public function §]!C§() : int
      {
         return this.maxShots.value;
      }
      
      public function §>L§() : int
      {
         var _loc1_:int = this.count.value;
         if(this.count.value == -1)
         {
            _loc1_ = this.shotsLeft.value;
         }
         else if(this.count.value > 0 && this.§&"4§())
         {
            _loc1_ = Math.min(this.count.value,this.shotsLeft.value);
         }
         return _loc1_;
      }
      
      public function isEmpty() : Boolean
      {
         return this.shotsLeft.value == 0 || this.count.value == 0;
      }
      
      public function getCount() : int
      {
         if(this.count.value != this.§#"'§)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"item quantity hacked"));
         }
         return this.count.value;
      }
      
      public function setCount(param1:int) : void
      {
         this.count.value = param1;
         this.§#"'§ = param1;
      }
      
      public function §[!e§() : void
      {
         if(this.count.value > 0)
         {
            --this.count.value;
            --this.§#"'§;
         }
         if(this.shotsLeft.value > 0)
         {
            --this.shotsLeft.value;
         }
      }
      
      public function §%"=§() : void
      {
         if(!this.isInfinite())
         {
            ++this.count.value;
            var _temp_2:* = this;
            ++this.§#"'§;
         }
         if(this.shotsLeft.value != -1)
         {
            ++this.shotsLeft.value;
         }
      }
      
      public function §-?§() : void
      {
         if(this.record is §;#_§)
         {
            this.delay = §;#_§(this.record).firstShotDelay;
         }
      }
      
      public function §2#"§() : void
      {
         if(this.record is §;#_§)
         {
            this.delay = §;#_§(this.record).cooldown;
         }
      }
      
      public function §^"B§() : void
      {
         if(this.delay >= 0)
         {
            --this.delay;
         }
      }
      
      public function §&">§() : int
      {
         return this.delay;
      }
      
      public function §=%;§(param1:int) : int
      {
         return this.delay = param1;
      }
      
      public function get shots() : int
      {
         return this.shotsLeft.value;
      }
      
      public function get §1!9§() : Boolean
      {
         return this.delay != -1 && !§ "^§.getValue(§8"%§.§?!W§.§^!U§().options,§ "^§.§?#@§);
      }
      
      public function getMaxLevel() : uint
      {
         return this.maxLevel;
      }
      
      public function getLevel() : uint
      {
         return this.level;
      }
      
      public function §>=§(param1:uint, param2:uint) : void
      {
         this.level = Math.min(param1,param2);
         this.maxLevel = param2;
         if(this.maxShots.value != 0 && this.record is §;#_§ && §;#_§(this.record).isComplex())
         {
            this.maxShots.value = param1;
         }
      }
      
      public function get §-&H§() : Boolean
      {
         return this.§'"#§;
      }
      
      public function set §-&H§(param1:Boolean) : void
      {
         this.§'"#§ = param1;
      }
      
      public function get isBlocked() : Boolean
      {
         return this.§%,§;
      }
      
      public function set isBlocked(param1:Boolean) : void
      {
         this.§%,§ = param1;
      }
   }
}

