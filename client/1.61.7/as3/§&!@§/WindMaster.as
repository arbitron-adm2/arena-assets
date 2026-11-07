package §&!@§
{
   import § %f§.§6&4§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§!%&§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%&3§.§[$z§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&#h§.*;
   import §&$N§.§7!e§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$j§.*;
   import §'%[§.§#&B§;
   import §+$=§.*;
   import §+%S§.§="_§;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2"L§.§##l§;
   import §2"L§.§^$y§;
   import §2#H§.§^!J§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4'§.§`"q§;
   import §4u§.ReagentHint;
   import §5!,§.§+"_§;
   import §5#`§.*;
   import §6%2§.§,x§;
   import §7!B§.*;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7$1§.§=!?§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §;!Z§.*;
   import §<"?§.§6"d§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%J§.RopeRaceGiftMenu;
   import §<%c§.§-! §;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@#K§.§3&2§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[!`§.§;!q§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §^#o§.§[&7§;
   import §^4§.§9!K§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.StatusEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class WindMaster extends §6"d§
   {
      
      private static const §6!3§:int = 9;
      
      private static const §["R§:int = 7;
      
      private var boss:§+%]§;
      
      private var §+%@§:int = 0;
      
      public function WindMaster()
      {
         super(26);
      }
      
      override public function getId() : int
      {
         return §+#N§.§@#5§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new § 2§()];
         § 2§(script).setMap(mapRecord);
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[0],mapRecord.§8$2§[1],mapRecord.§8$2§[2],mapRecord.§8$2§[3]],[mapRecord.§8$2§[4],mapRecord.§8$2§[5]],[mapRecord.§8$2§[6],mapRecord.§8$2§[7],mapRecord.§?$&§[0]]];
      }
      
      override protected function §!"V§() : void
      {
         var _loc1_:§2R§ = §]%!§(BossAchieves.WIND_MASTER_DONT_DROWN_ENEMIES);
         if(Boolean(_loc1_) && _loc1_.available)
         {
            §'#G§();
         }
      }
      
      override public function §8%r§() : void
      {
         super.§8%r§();
         this.boss = enemySquads[0].§1!n§()[0];
         this.boss.addEventListener(§0%v§.DISPOSED,this.§#y§);
      }
      
      override protected function §6&§(param1:uint) : void
      {
         var _loc2_:§2R§ = null;
         super.§6&§(param1);
         if(!currentUnit.squad.isAi())
         {
            ++this.§+%@§;
            _loc2_ = §]%!§(BossAchieves.WIND_MASTER_DROWN_GUARDIANS);
            if(Boolean(this.§+%@§ == §["R§) && Boolean(_loc2_) && _loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      private function §#y§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.WIND_MASTER_KILL_LAST);
         if(Boolean(_loc2_) && Boolean(_loc2_.available) && §8"%§.§?!W§.§4"m§.§="T§(this.boss).length == 0)
         {
            _loc2_.completed = true;
            §`#t§(_loc2_);
         }
         else if(Boolean(_loc2_) && _loc2_.available)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == BossAchieves.WIND_MASTER_DONT_DROWN_ENEMIES)
         {
            _loc2_ = §]%!§(BossAchieves.WIND_MASTER_DONT_DROWN_ENEMIES);
            if(Boolean(_loc2_) && _loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
         else if(param1.code == BossAchieves.WIND_MASTER_DROWN_GUARDIANS)
         {
            _loc2_ = §]%!§(BossAchieves.WIND_MASTER_DROWN_GUARDIANS);
            if(Boolean(_loc2_) && _loc2_.available)
            {
               §=$I§(_loc2_,§6!3§);
            }
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§2R§ = null;
         if(param1.source is §9!K§)
         {
            _loc2_ = §9!K§(param1.source).getSource() is §=!?§;
            _loc3_ = §]%!§(BossAchieves.WIND_MASTER_DROWN_GUARDIANS);
            if(Boolean(_loc2_) && Boolean(_loc3_) && _loc3_.available)
            {
               _loc3_.§#"!§();
               §5X§(_loc3_);
               §>%A§();
            }
         }
      }
      
      override protected function §'G§() : void
      {
         var _loc1_:§2R§ = §]%!§(BossAchieves.WIND_MASTER_DONT_DROWN_ENEMIES);
         if(_loc1_)
         {
            §]%!§(BossAchieves.WIND_MASTER_DONT_DROWN_ENEMIES).§,%,§();
         }
      }
   }
}

