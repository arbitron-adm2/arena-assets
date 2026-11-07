package §&!@§
{
   import § %f§.§6&4§;
   import § &5§.§0&$§;
   import §!!!§.BuySkinDialog;
   import §!#g§.MD5;
   import §!$d§.§<$c§;
   import §!K§.§&#Q§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §&#E§.MsgBoxSocialSelect;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§="_§;
   import §+u§.§'n§;
   import §-%B§.§-"o§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#H§.§#$A§;
   import §2#x§.§[#Z§;
   import §2o§.§]#@§;
   import §3#a§.§-#M§;
   import §3%J§.§;&<§;
   import §4!K§.*;
   import §4!x§.§@& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<"?§.§6"d§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<K§.*;
   import §=!p§.§1%?§;
   import §=#g§.*;
   import §=$#§.§ "V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?%J§.§="b§;
   import §?>§.§]!V§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@"s§.§]!>§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.core.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BurningZombies extends §6"d§
   {
      
      public static const §7#z§:§&$2§ = new §&$2§(8);
      
      public function BurningZombies()
      {
         super(40);
      }
      
      override public function getId() : int
      {
         return §+#N§.§9&0§;
      }
      
      override protected function §4#d§() : void
      {
         var _loc1_:§="b§ = new §="b§();
         _loc1_.setMap(mapRecord);
         §6%D§ = new <§-"o§>[_loc1_];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[2],mapRecord.§8$2§[5],mapRecord.§8$2§[1],mapRecord.§8$2§[0]],[mapRecord.§?$&§[0],mapRecord.§8$2§[3],mapRecord.§8$2§[9]]];
      }
      
      override public function §8%r§() : void
      {
         super.§8%r§();
         Application.scene.§6%Z§(new ColorTransform(1,1,1,1,111,0,0));
         Application.scene.§21§(new ColorTransform(1,1,1,1,100,-100,0));
      }
      
      override protected function §!"V§() : void
      {
         §'#G§();
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == BossAchieves.§`$%§)
         {
            _loc2_ = §]%!§(BossAchieves.§`$%§);
            if(!_loc2_.closed)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
         else if(param1.code == BossAchieves.§7$b§)
         {
            _loc2_ = §]%!§(BossAchieves.§7$b§);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§7#z§.value);
            }
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = null;
         if(!param1.source.owner)
         {
            _loc2_ = §]%!§(BossAchieves.§9"r§);
            if(!_loc2_.closed)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      override public function clear() : void
      {
         §>%A§();
         super.clear();
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.§9"r§).§,%,§();
         §]%!§(BossAchieves.§`$%§).§,%,§();
      }
   }
}

