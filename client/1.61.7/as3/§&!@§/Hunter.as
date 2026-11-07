package §&!@§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§2!I§;
   import §+%S§.§=$2§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §-&5§.*;
   import §-@§.*;
   import §0!§.§9"u§;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#i§.§9##§;
   import §2#s§.§7"N§;
   import §4#`§.*;
   import §4'§.§`"q§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8$Z§.*;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§`"y§;
   import §<"?§.§6"d§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §>!_§.§'!&§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?%J§.§]j§;
   import §@!N§.*;
   import §@!i§.*;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.client.RegenerateCandidates;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class Hunter extends §6"d§
   {
      
      public static const §;#E§:§&$2§ = new §&$2§(7);
      
      public function Hunter()
      {
         super(73);
      }
      
      override public function getId() : int
      {
         return §+#N§.§[$]§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §]j§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([§#$J§(2000,1035),§#$J§(2070,580),§#$J§(2345,380),§#$J§(2275,1015)]),[§#$J§(949,464)]];
      }
      
      override protected function §!"V§() : void
      {
         §'#G§();
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.§9!-§);
         if(!_loc2_.closed)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == §]j§.§8F§)
         {
            _loc2_ = §]%!§(BossAchieves.§#%C§);
            if(!_loc2_.closed)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
            _loc2_ = §]%!§(BossAchieves.§3#8§);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§;#E§.value);
            }
         }
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         var _loc2_:§2R§ = §]%!§(BossAchieves.§3#8§);
         if(!_loc2_.closed)
         {
            _loc2_.count = 0;
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.§#%C§).§,%,§();
         §]%!§(BossAchieves.§9!-§).§,%,§();
      }
      
      override public function clear() : void
      {
         §>%A§();
         super.clear();
      }
   }
}

