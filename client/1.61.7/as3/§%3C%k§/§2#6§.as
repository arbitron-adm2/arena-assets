package §<%k§
{
   import § %f§.§]%f§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#5§.*;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§@a§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §&"R§.§`&7§;
   import §&"c§.§5$n§;
   import §&#W§.*;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §+%S§.§["4§;
   import §,$J§.§,$O§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §2"L§.§,'§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §2B§.§^%y§;
   import §3"_§.*;
   import §3#T§.§;#Q§;
   import §3#a§.§[&A§;
   import §4!!§.§'$V§;
   import §4!K§.*;
   import §4!x§.§@& §;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5"J§.*;
   import §5#`§.*;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §8#<§.§!#^§;
   import §8#o§.§1@§;
   import §8$V§.§`"c§;
   import §9%W§.§`"y§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%E§.§,$2§;
   import §<K§.RatingTabClan;
   import §=!p§.§8#x§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=#g§.*;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §?o§.§!%I§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §]^§.§-$T§;
   import §^#[§.§?"&§;
   import §`#x§.*;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import com.greensock.TweenLite;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.game.rules.§+&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.AdrenalineInjection;
   import ru.pragmatix.wormix.weapons.AnchorTeleportWeapon;
   import ru.pragmatix.wormix.weapons.AntidoteInjection;
   import ru.pragmatix.wormix.weapons.AntifreezePotion;
   import ru.pragmatix.wormix.weapons.Antitoxin;
   import ru.pragmatix.wormix.weapons.AtomBombWeapon;
   import ru.pragmatix.wormix.weapons.Bandage;
   import ru.pragmatix.wormix.weapons.Bat;
   import ru.pragmatix.wormix.weapons.BlowTorch;
   import ru.pragmatix.wormix.weapons.CallReinforcements;
   import ru.pragmatix.wormix.weapons.DarkElixir;
   import ru.pragmatix.wormix.weapons.DefaultMineWeapon;
   import ru.pragmatix.wormix.weapons.DoctorBag;
   import ru.pragmatix.wormix.weapons.Drill;
   import ru.pragmatix.wormix.weapons.Dynamite;
   import ru.pragmatix.wormix.weapons.ElectricHarpoon;
   import ru.pragmatix.wormix.weapons.EmergencyTeleport;
   import ru.pragmatix.wormix.weapons.FireThrower;
   import ru.pragmatix.wormix.weapons.Firework;
   import ru.pragmatix.wormix.weapons.GasGrenadeWeapon;
   import ru.pragmatix.wormix.weapons.Girder;
   import ru.pragmatix.wormix.weapons.GravityGun;
   import ru.pragmatix.wormix.weapons.Helipad;
   import ru.pragmatix.wormix.weapons.Jetpack;
   import ru.pragmatix.wormix.weapons.LaserBarrier;
   import ru.pragmatix.wormix.weapons.Minigun;
   import ru.pragmatix.wormix.weapons.OpenSpaceDevicePlacer;
   import ru.pragmatix.wormix.weapons.PumpkinWeapon;
   import ru.pragmatix.wormix.weapons.ResurrectionSeal;
   import ru.pragmatix.wormix.weapons.Rifle;
   import ru.pragmatix.wormix.weapons.RopeGun;
   import ru.pragmatix.wormix.weapons.SheepWeapon;
   import ru.pragmatix.wormix.weapons.Shocker;
   import ru.pragmatix.wormix.weapons.Shotgun;
   import ru.pragmatix.wormix.weapons.SniperRifle;
   import ru.pragmatix.wormix.weapons.SpiderWeapon;
   import ru.pragmatix.wormix.weapons.SuperSheepWeapon;
   import ru.pragmatix.wormix.weapons.SwitchTurn;
   import ru.pragmatix.wormix.weapons.TeleThrower;
   import ru.pragmatix.wormix.weapons.Teleport;
   import ru.pragmatix.wormix.weapons.UfoPad;
   import ru.pragmatix.wormix.weapons.UnderwaterBreathPotion;
   import ru.pragmatix.wormix.weapons.Uzi;
   import ru.pragmatix.wormix.weapons.interfaces.§&$+§;
   
   public class §2#6§
   {
      
      private static var §]§:Array = [Shocker,Rifle,Shotgun,§]%f§,Teleport,SheepWeapon,SuperSheepWeapon,SwitchTurn,SniperRifle,Jetpack,Uzi,Minigun,BlowTorch,Drill,FireThrower,Girder,RopeGun,ElectricHarpoon,Bat,AntifreezePotion,Helipad,UfoPad,GravityGun,Bandage,EmergencyTeleport,LaserBarrier,DarkElixir,CallReinforcements,AnchorTeleportWeapon,Antitoxin,DoctorBag,AdrenalineInjection,AntidoteInjection,OpenSpaceDevicePlacer,ResurrectionSeal,UnderwaterBreathPotion];
      
      private static const §5%2§:Array = [RopeGun,Drill,BlowTorch,Girder,Jetpack,Teleport,TeleThrower,SwitchTurn,DefaultMineWeapon,SpiderWeapon,AntifreezePotion,GasGrenadeWeapon,AtomBombWeapon,PumpkinWeapon,CallReinforcements];
      
      public function §2#6§()
      {
         super();
      }
      
      public static function §"!9§(param1:§+%]§) : void
      {
         var _loc3_:§&$+§ = null;
         var _loc4_:Boolean = false;
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(Boolean(_loc2_) && Boolean(_loc2_.activeUnit))
         {
            _loc3_ = _loc2_.activeUnit.weapon;
            if(_loc3_)
            {
               _loc4_ = §""L§.§'!8§(_loc3_,§]§);
               if(!_loc4_)
               {
                  if(_loc3_ is Dynamite || _loc3_ is §;$n§ || _loc3_ is Firework)
                  {
                     §8!C§(param1).§;0§();
                  }
                  else if(_loc3_ is §!%I§)
                  {
                     §8!C§(param1).§&"p§();
                  }
                  else
                  {
                     §8!C§(param1).§"!9§();
                  }
               }
            }
         }
      }
      
      public static function §+$-§(param1:§+%]§, param2:§+&-§) : void
      {
         var _loc3_:Boolean = false;
         if(param2.§@"t§ == 0 && param1.lastWeapon != null)
         {
            _loc3_ = §""L§.§'!8§(param1.lastWeapon,§5%2§);
            if(!_loc3_)
            {
               §2#6§.§]#0§(param1);
            }
         }
         else if(param2.§&$@§ > 0)
         {
            §1%"§.delay(§1%"§.§]$<§(§2#6§.§=§,§2#6§,[param1]),§2#6§,300);
         }
         else if(param2.§^"b§ > 0 && param2.§]$`§ / param2.§^"b§ < 0.2)
         {
            if(param2.§2%1§)
            {
               §2#6§.§'$M§(param1);
            }
            else
            {
               §2#6§.§=!w§(param1);
            }
         }
         else
         {
            §2#6§.§>"j§(param1);
         }
      }
      
      public static function §<z§(param1:§+%]§) : void
      {
         §8!C§(param1).§3$S§();
      }
      
      public static function §0%@§(param1:§+%]§) : void
      {
         if(§8"%§.§&S§.§-#G§())
         {
            §8!C§(param1).§&"C§();
         }
      }
      
      public static function §^!6§(param1:§+%]§) : void
      {
         §8!C§(param1).§^!6§();
      }
      
      public static function §'$M§(param1:§+%]§) : void
      {
         §8!C§(param1).§'$M§();
      }
      
      public static function §>"j§(param1:§+%]§) : void
      {
         §8!C§(param1).§>"j§();
      }
      
      public static function §=!w§(param1:§+%]§) : void
      {
         §8!C§(param1).§=!w§();
      }
      
      public static function §=§(param1:§+%]§) : void
      {
         §8!C§(param1).§=§();
      }
      
      public static function §]#0§(param1:§+%]§) : void
      {
         §8!C§(param1).§]#0§();
      }
      
      public static function §;0§(param1:§+%]§) : void
      {
         §8!C§(param1).§;0§();
      }
      
      public static function §3%3§(param1:§+%]§) : void
      {
         if(§8"%§.§&S§.§-#G§())
         {
            §8!C§(param1).§3%3§();
         }
      }
      
      private static function §8!C§(param1:§+%]§) : §`!t§
      {
         return param1.record.§3#f§ != null ? param1.record.§3#f§ : §^#i§.§8!C§(param1.record.getRace().configName);
      }
   }
}

