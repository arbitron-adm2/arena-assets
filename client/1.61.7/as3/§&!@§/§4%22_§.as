package §&!@§
{
   import § !8§.§`!d§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#%!§.§[N§;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §,&8§.*;
   import §-%B§.§-"o§;
   import §0!§.§9"u§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.*;
   import §4f§.§-&§;
   import §4u§.§9!]§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §;!J§.§8!a§;
   import §<"?§.§6"d§;
   import §<$2§.§+$9§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§?!d§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?%J§.§-$n§;
   import §?>§.§0!7§;
   import §@!N§.§&#Z§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §^#[§.§&$2§;
   import §^4§.§@#J§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§;$]§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.game.rules.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.SetHotkeys;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §4"_§ extends §6"d§
   {
      
      private static const §+=§:§&$2§ = new §&$2§(3);
      
      private var §2"l§:int;
      
      public function §4"_§()
      {
         super(63);
      }
      
      override public function getId() : int
      {
         return §+#N§.§1"m§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §-$n§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[§#$J§(370,329),§#$J§(1059,989),§#$J§(1932,498),§#$J§(1428,309)],[§#$J§(1964,977),§#$J§(574,589),§#$J§(1483,318)]];
      }
      
      override public function §8%r§() : void
      {
         super.§8%r§();
         this.§2"l§ = playerSquads[0].§%#V§() >> 1;
      }
      
      override protected function §!"V§() : void
      {
         §'#G§();
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == §-$n§.§5!t§)
         {
            _loc2_ = §]%!§(BossAchieves.§=$U§);
            if(!_loc2_.closed)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
         else if(param1.code == §-$n§.§3$[§)
         {
            _loc2_ = §]%!§(BossAchieves.§<?§);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§+=§.value);
            }
         }
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         var _loc2_:§2R§ = §]%!§(BossAchieves.§<?§);
         if(_loc2_.available && _loc2_.count > 0)
         {
            _loc2_.count = 0;
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = null;
         if(playerSquads.length > 0 && this.§2"l§ > playerSquads[0].§%#V§())
         {
            _loc2_ = §]%!§(BossAchieves.§[#U§);
            if(!_loc2_.closed)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.§[#U§).§,%,§();
         §]%!§(BossAchieves.§=$U§).§,%,§();
      }
   }
}

