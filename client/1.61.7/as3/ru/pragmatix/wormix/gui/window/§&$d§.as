package ru.pragmatix.wormix.gui.window
{
   import § "L§.FirearmTurret;
   import § "L§.MortarTurret;
   import § "L§.§`#r§;
   import § %"§.§"%5§;
   import § %f§.§ "r§;
   import § %f§.§;$y§;
   import § %f§.FieryPumpkin;
   import § %f§.GasGrenade;
   import § %f§.MechPuppet;
   import § %f§.Parasite;
   import § %f§.Puppet;
   import § %f§.VacuumGrenade;
   import §!L§.§+"'§;
   import §%$n§.§<%<§;
   import §%$n§.§?,§;
   import §%&3§.§'C§;
   import §%&3§.§[$z§;
   import §%&6§.§2$v§;
   import §%&6§.§=!l§;
   import §&"c§.§!!q§;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §+%S§.§="_§;
   import §+5§.§7!U§;
   import §+5§.Boulder;
   import §+5§.§^$[§;
   import §,"`§.§9#s§;
   import §-8§.§`%[§;
   import §-@§.*;
   import §0&F§.§0%v§;
   import §2!-§.SupplyPickedUpEvent;
   import §2#i§.§+%z§;
   import §3#T§.§!%J§;
   import §3#T§.§;'§;
   import §3#T§.§^!P§;
   import §4!x§.§@& §;
   import §4$"§.FoulWatermelon;
   import §4$"§.Watermelon;
   import §4'§.§^"p§;
   import §6"'§.§9$Z§;
   import §7$1§.§+%5§;
   import §7$1§.§8&D§;
   import §7$1§.§;!%§;
   import §7$1§.§;$n§;
   import §7$1§.§=!?§;
   import §7$1§.PushingMine;
   import §7$1§.StickyMine;
   import §9%4§.§'!T§;
   import §9%4§.§2&7§;
   import §<!W§.§4!I§;
   import §<!W§.§;!`§;
   import §<!^§.§["l§;
   import §<!f§.§!"<§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §>">§.§<!p§;
   import §?"q§.§""?§;
   import §?"q§.§>$`§;
   import §?"q§.LullabyElixir;
   import §?o§.§!%I§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[#I§.NailGrenade;
   import §[#I§.§`"O§;
   import §]#b§.§8!d§;
   import §]$v§.§&"I§;
   import §]$v§.§+x§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§]"8§;
   import §`%&§.§`§;
   import config.§=%A§;
   import config.§`!a§;
   import config.achievements.BossAchieves;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §&$d§ extends §@& §
   {
      
      private var §=$_§:Function;
      
      public function §&$d§(param1:Function)
      {
         super(§6#A§.§!&6§(§+"'§.§!#f§));
         this.§=$_§ = param1;
         §#7§(§0$N§.VIDEO_TITLE);
         TextField(getChildByName("limit_title")).htmlText = §0$N§.VIDEO_LIMIT_MSG;
         TextField(getChildByName("limit_desc")).text = §0$N§.VIDEO_LIMIT_DESC;
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=#h§ = §0$N§.BUTTON_OK;
         §-!^§ = §0$N§.BUTTON_CANCEL;
         §<"b§ = true;
      }
      
      override protected function okAction() : void
      {
         super.okAction();
         this.§=$_§();
      }
   }
}

