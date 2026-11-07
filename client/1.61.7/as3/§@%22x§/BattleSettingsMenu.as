package §@"x§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"$+§.§,!<§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#"V§.§8"@§;
   import §#"V§.§<"4§;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§ §;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.*;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%$n§.*;
   import §%L§.§%%w§;
   import §&!@§.§!6§;
   import §&!@§.§5"`§;
   import §&!@§.Assassin;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Miner;
   import §&!@§.Samurai;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§[&$§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§2&>§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §+5§.§^$[§;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §-%B§.*;
   import §-G§.*;
   import §0!§.§8$Y§;
   import §0!§.§9"u§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%z§.§1&6§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1&-§.§6"`§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2o§.§]#@§;
   import §3#a§.§-!`§;
   import §3%J§.BuyBattleTokensDialog;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §7$t§.§^%%§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §<%E§.§,$2§;
   import §<%c§.*;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §="z§.§9%1§;
   import §=$#§.§`%u§;
   import §>!_§.§'#m§;
   import §?"j§.§]!<§;
   import §?#g§.§&"P§;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§6&'§;
   import §?$7§.§6J§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?>§.§]!V§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§'#E§;
   import §@!i§.§,! §;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §@c§.*;
   import §[!`§.§!$^§;
   import §["3§.§-%q§;
   import §["3§.§?%Q§;
   import §["3§.§@%^§;
   import §]#[§.§2%o§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.adobe.serialization.json.JSONDecoder;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BattleSettingsMenu extends §@%z§
   {
      
      private static var instance:BattleSettingsMenu;
      
      private static const §^r§:String = "controlWASD";
      
      private static const §3!F§:String = "controlLetterJumps";
      
      private static const §0%?§:String = "controlNonLetterJumps";
      
      private static const §2"_§:String = "controlUse";
      
      private static const § o§:String = "controlBagQ";
      
      private static const §5$T§:String = "controlBagI";
      
      private static const §@o§:String = "controlNum0";
      
      private static const §;"w§:String = "controlNumpad";
      
      private static const §"%'§:String = "unitAim";
      
      private static const §'#8§:String = "shellTrace";
      
      private static const §#>§:String = "tips";
      
      private static const §@D§:String = "squadTurnDamage";
      
      private static const §8%i§:String = "alternativeSquadColors";
      
      private static const §<!r§:String = "popupCooldowns";
      
      private static const §;"+§:String = "popupHp";
      
      private static const §>$S§:String = "effects";
      
      private static const §!!'§:String = "clouds";
      
      private static const §05§:String = "legends";
      
      private static const §5%W§:String = "unitTrace";
      
      private static const §@!L§:String = "equipAnim";
      
      private static const §4!L§:String = "screenShake";
      
      private static const §&!q§:String = "taunts";
      
      private static const §>&+§:String = "weather";
      
      private static const §"#b§:String = "water";
      
      private static const §'!_§:String = "ammoTrail";
      
      private static const §0!9§:String = "particles";
      
      private static const §?$9§:String = "unitIdles";
      
      private static const §'"f§:String = "groundSmoothing";
      
      private static const ADRENALINE:String = "adrenalineBuff";
      
      private static const INVERTER:String = "inverterBuff";
      
      private static const SPEED:String = "speedDebuff";
      
      private static const §0=§:String = "arcticFreezeDebuff";
      
      private static const §3[§:String = "immobilityFreezeDebuff";
      
      private static const POISON:String = "poisonDebuff";
      
      private static const BOUNCE_PROTECTION:String = "bounceProtectionBuff";
      
      private static const THEIF_ATTACK:String = "theifAttackDebuff";
      
      private static const §=^§:String = "poisonDefenceReductionDebuff";
      
      private static const §&_§:String = "antiDodgeDebuff";
      
      private static const ANTI_HEAL:String = "antiHealDebuff";
      
      private static const ITEM_DISPLACEMENT:String = "itemDisplacementDebuff";
      
      private static const §&#§:String = "raceSwapDebuff";
      
      private static const CRITICAL_HIT:String = "critBuff";
      
      private static const §9$a§:String = "sharpClawsDebuff";
      
      private static const §>"K§:String = "antiPoisonBuff";
      
      private static const §3&0§:String = "poisoningReducDecDebuff";
      
      private var controlWASD:§6"%§;
      
      private var controlLetterJumps:§6"%§;
      
      private var controlNonLetterJumps:§6"%§;
      
      private var controlUse:§6"%§;
      
      private var controlBagQ:§6"%§;
      
      private var controlBagI:§6"%§;
      
      private var controlNum0:§6"%§;
      
      private var controlNumpad:§6"%§;
      
      private var unitAim:§6"%§;
      
      private var shellTrace:§6"%§;
      
      private var tips:§6"%§;
      
      private var squadTurnDamage:§6"%§;
      
      private var §[!D§:§6"%§;
      
      private var popupCooldowns:§6"%§;
      
      private var popupHp:§6"%§;
      
      private var effects:§6"%§;
      
      private var clouds:§6"%§;
      
      private var legends:§6"%§;
      
      private var unitTrace:§6"%§;
      
      private var equipAnim:§6"%§;
      
      private var screenShake:§6"%§;
      
      private var taunts:§6"%§;
      
      private var weather:§6"%§;
      
      private var water:§6"%§;
      
      private var ammoTrail:§6"%§;
      
      private var particles:§6"%§;
      
      private var unitIdles:§6"%§;
      
      private var groundSmoothing:§6"%§;
      
      private var §;$?§:§6"%§;
      
      private var § =§:§6"%§;
      
      private var speed:§6"%§;
      
      private var §>%f§:§6"%§;
      
      private var §8j§:§6"%§;
      
      private var poison:§6"%§;
      
      private var bounceProtection:§6"%§;
      
      private var §6T§:§6"%§;
      
      private var §>"%§:§6"%§;
      
      private var §;!$§:§6"%§;
      
      private var §;1§:§6"%§;
      
      private var §+$h§:§6"%§;
      
      private var §!"[§:§6"%§;
      
      private var §<%w§:§6"%§;
      
      private var §^#J§:§6"%§;
      
      private var §!$"§:§6"%§;
      
      private var §'$w§:§6"%§;
      
      private var §#$F§:Vector.<§6"%§>;
      
      private var §`"b§:Vector.<§6"%§>;
      
      private var §=$J§:Vector.<§6"%§>;
      
      private var §%&I§:Vector.<§6"%§>;
      
      private var §3$=§:Vector.<§6"%§>;
      
      private var §+!J§:Sprite;
      
      private var §+#W§:Sprite;
      
      private var §9C§:Sprite;
      
      private var §4"-§:Sprite;
      
      private var controlTitle:TextField;
      
      private var battleTitle:TextField;
      
      private var visualTitle:TextField;
      
      private var buffsCounterTitle:TextField;
      
      public function BattleSettingsMenu()
      {
         super(§+"'§.§?&,§);
         §#7§(§0$N§.BATTLE_OPTIONS_TITLE);
         this.controlTitle = §'%s§("controlTitle");
         this.battleTitle = §'%s§("battleTitle");
         this.visualTitle = §'%s§("visualTitle");
         this.buffsCounterTitle = §'%s§("buffsCounterTitle");
         §7&5§.§>&<§(this.controlTitle,§0$N§.UNIT_CONTROL_TITLE);
         §7&5§.§>&<§(this.battleTitle,§0$N§.BATTLE_OPTIONS_TITLE);
         §7&5§.§>&<§(this.visualTitle,§0$N§.VISUAL_OPTIONS_TITLE);
         §7&5§.§>&<§(this.buffsCounterTitle,§0$N§.BUFF_COUNTERS_IN_HINT_TITLE);
         this.§+!J§ = §+$6§(this,"controlTitle",this.§7$I§);
         this.§+#W§ = §+$6§(this,"battleTitle",this.§5#;§);
         this.§9C§ = §+$6§(this,"visualTitle",this.§4%U§);
         this.§4"-§ = §+$6§(this,"buffsCounterTitle",this.§=# §);
         §3#1§("controlWASD.label",§0$N§.SETTING_CONTROL_WASD_TITLE);
         §3#1§("controlLetterJumps.label",§0$N§.SETTING_CONTROL_LETTER_JUMPS_TITLE);
         §3#1§("controlNonLetterJumps.label",§0$N§.SETTING_CONTROL_NONLETTER_JUMPS_TITLE);
         §3#1§("controlUse.label",§0$N§.SETTING_CONTROL_USE_TITLE);
         §3#1§("controlBagQ.label",§0$N§.SETTING_CONTROL_BAG_Q_TITLE);
         §3#1§("controlBagI.label",§0$N§.§9!L§);
         §3#1§("controlNum0.label",§0$N§.SETTING_CONTROL_NUM0_TITLE);
         §3#1§("controlNumpad.label",§0$N§.SETTING_CONTROL_NUMPAD_TITLE);
         §3#1§("unitAim.label",§0$N§.SETTING_UNIT_AIM_TITLE);
         §3#1§("shellTrace.label",§0$N§.SETTING_SHELL_TRACE_TITLE);
         §3#1§("tips.label",§0$N§.TIPS_LABEL);
         §3#1§("squadTurnDamage.label",§0$N§.SETTING_SQUAD_TURN_DAMAGE_TITLE);
         §3#1§("alternativeSquadColors.label",§0$N§.SETTING_ALTERNATIVE_SQUAD_COLORS_TITLE);
         §3#1§("popupCooldowns.label",§0$N§.POPUP_COOLDOWNS_TITLE);
         §3#1§("popupHp.label",§0$N§.POPUP_HP_TITLE);
         §3#1§("effects.label",§0$N§.SETTING_EFFECT_TITLE);
         §3#1§("clouds.label",§0$N§.SETTING_CLOUDS_TITLE);
         §3#1§("legends.label",§0$N§.SETTING_LEGENDS_TITLE);
         §3#1§("unitTrace.label",§0$N§.SETTING_UNIT_TRACE_TITLE);
         §3#1§("equipAnim.label",§0$N§.EQUIP_ANIM_TITLE);
         §3#1§("screenShake.label",§0$N§.SCREEN_SHAKE_TITLE);
         §3#1§("taunts.label",§0$N§.TAUNTS_TITLE);
         §3#1§("weather.label",§0$N§.WEATHER_TITLE);
         §3#1§("water.label",§0$N§.WATER_TITLE);
         §3#1§("ammoTrail.label",§0$N§.AMMO_TRAIL_TITLE);
         §3#1§("particles.label",§0$N§.PARTICLES_TITLE);
         §3#1§("unitIdles.label",§0$N§.UNIT_IDLES_TITLE);
         §3#1§("groundSmoothing.label",§0$N§.GROUND_SMOOTHING_TITLE);
         this.§8$&§(ADRENALINE,§0$N§.ADRENALINE_BUFFED);
         this.§8$&§(INVERTER,§0$N§.§5!X§);
         this.§8$&§(SPEED,§0$N§.SPEED_DEBUFFED);
         this.§8$&§(§0=§,§0$N§.FREEZE_DEBUFFED);
         this.§8$&§(§3[§,§0$N§.IMMOBILITY_DEBUFFED);
         this.§8$&§(POISON,§0$N§.POISON_DEBUFFED);
         this.§8$&§(BOUNCE_PROTECTION,§0$N§.§!"D§);
         this.§8$&§(THEIF_ATTACK,§0$N§.THEIF_ATTACK_DEBUFFED);
         this.§8$&§(§=^§,§0$N§.POISON_DEFENCE_REDUCTION_DEBUFFED);
         this.§8$&§(§&_§,§0$N§.ANTIDODGE_DEBUFFED);
         this.§8$&§(ANTI_HEAL,§0$N§.ANTIHEAL_DEBUFFED);
         this.§8$&§(ITEM_DISPLACEMENT,§0$N§.ITEM_DISPLACEMENT_DEBUFFED);
         this.§8$&§(§&#§,§0$N§.RACE_SWAP_BUFFED);
         this.§8$&§(§9$a§,§0$N§.SHARPCLAWS_DEBUFFED);
         this.§8$&§(§>"K§,§0$N§.ANTIPOISON_BUFFED);
         this.§8$&§(§3&0§,§0$N§.POISONING_REDUC_DEC_DEBUFFED);
         this.§8$&§(CRITICAL_HIT,"");
         this.controlWASD = new §6"%§(getChildByName("controlWASD.checkBox") as SimpleButton);
         this.controlLetterJumps = new §6"%§(getChildByName("controlLetterJumps.checkBox") as SimpleButton);
         this.controlNonLetterJumps = new §6"%§(getChildByName("controlNonLetterJumps.checkBox") as SimpleButton);
         this.controlUse = new §6"%§(getChildByName("controlUse.checkBox") as SimpleButton);
         this.controlBagQ = new §6"%§(getChildByName("controlBagQ.checkBox") as SimpleButton);
         this.controlBagI = new §6"%§(getChildByName("controlBagI.checkBox") as SimpleButton);
         this.controlNum0 = new §6"%§(getChildByName("controlNum0.checkBox") as SimpleButton);
         this.controlNumpad = new §6"%§(getChildByName("controlNumpad.checkBox") as SimpleButton);
         this.unitAim = new §6"%§(getChildByName("unitAim.checkBox") as SimpleButton);
         this.shellTrace = new §6"%§(getChildByName("shellTrace.checkBox") as SimpleButton);
         this.tips = new §6"%§(getChildByName("tips.checkBox") as SimpleButton);
         this.squadTurnDamage = new §6"%§(getChildByName("squadTurnDamage.checkBox") as SimpleButton);
         this.§[!D§ = new §6"%§(getChildByName("alternativeSquadColors.checkBox") as SimpleButton);
         this.popupCooldowns = new §6"%§(getChildByName("popupCooldowns.checkBox") as SimpleButton);
         this.popupHp = new §6"%§(getChildByName("popupHp.checkBox") as SimpleButton);
         this.effects = new §6"%§(getChildByName("effects.checkBox") as SimpleButton);
         this.clouds = new §6"%§(getChildByName("clouds.checkBox") as SimpleButton);
         this.legends = new §6"%§(getChildByName("legends.checkBox") as SimpleButton);
         this.unitTrace = new §6"%§(getChildByName("unitTrace.checkBox") as SimpleButton);
         this.equipAnim = new §6"%§(getChildByName("equipAnim.checkBox") as SimpleButton);
         this.screenShake = new §6"%§(getChildByName("screenShake.checkBox") as SimpleButton);
         this.taunts = new §6"%§(getChildByName("taunts.checkBox") as SimpleButton);
         this.weather = new §6"%§(getChildByName("weather.checkBox") as SimpleButton);
         this.water = new §6"%§(getChildByName("water.checkBox") as SimpleButton);
         this.ammoTrail = new §6"%§(getChildByName("ammoTrail.checkBox") as SimpleButton);
         this.particles = new §6"%§(getChildByName("particles.checkBox") as SimpleButton);
         this.unitIdles = new §6"%§(getChildByName("unitIdles.checkBox") as SimpleButton);
         this.groundSmoothing = new §6"%§(getChildByName("groundSmoothing.checkBox") as SimpleButton);
         this.§;$?§ = this.§1#d§(ADRENALINE);
         this.§ =§ = this.§1#d§(INVERTER);
         this.speed = this.§1#d§(SPEED);
         this.§>%f§ = this.§1#d§(§0=§);
         this.§8j§ = this.§1#d§(§3[§);
         this.poison = this.§1#d§(POISON);
         this.bounceProtection = this.§1#d§(BOUNCE_PROTECTION);
         this.§6T§ = this.§1#d§(THEIF_ATTACK);
         this.§>"%§ = this.§1#d§(§=^§);
         this.§;!$§ = this.§1#d§(§&_§);
         this.§;1§ = this.§1#d§(ANTI_HEAL);
         this.§+$h§ = this.§1#d§(ITEM_DISPLACEMENT);
         this.§!"[§ = this.§1#d§(§&#§);
         this.§^#J§ = this.§1#d§(§9$a§);
         this.§!$"§ = this.§1#d§(§>"K§);
         this.§'$w§ = this.§1#d§(§3&0§);
         this.§<%w§ = this.§1#d§(CRITICAL_HIT);
         this.§<%w§.setVisible(false);
         this.tips.setQtip(§0$N§.TIPS_ON_OFF);
         this.tips.§[!u§(this.§=%t§);
         this.clouds.§[!u§(this.§?"O§);
         this.legends.§[!u§(this.§%"H§);
         this.§`"b§ = new <§6"%§>[this.controlWASD,this.controlLetterJumps,this.controlNonLetterJumps,this.controlUse,this.controlBagQ,this.controlBagI,this.controlNum0,this.controlNumpad];
         this.§=$J§ = new <§6"%§>[this.unitAim,this.shellTrace,this.tips,this.squadTurnDamage,this.§[!D§,this.popupCooldowns,this.popupHp];
         this.§%&I§ = new <§6"%§>[this.effects,this.clouds,this.legends,this.unitTrace,this.equipAnim,this.screenShake,this.taunts,this.weather,this.water,this.ammoTrail,this.particles,this.unitIdles,this.groundSmoothing];
         §§push(this);
         var _temp_44:* = new <§6"%§>[this.§;$?§,this.§ =§,this.speed,this.§>%f§,this.§8j§,this.poison,this.§^#J§,this.bounceProtection,this.§6T§,this.§>"%§,this.§;!$§,this.§;1§,this.§+$h§,this.§!"[§,this.§!$"§,this.§'$w§];
         §§pop().§3$=§ = new <§6"%§>[this.§;$?§,this.§ =§,this.speed,this.§>%f§,this.§8j§,this.poison,this.§^#J§,this.bounceProtection,this.§6T§,this.§>"%§,this.§;!$§,this.§;1§,this.§+$h§,this.§!"[§,this.§!$"§,this.§'$w§];
         this.§#$F§ = this.§`"b§.concat(this.§%&I§.concat(this.§=$J§.concat(this.§3$=§)));
      }
      
      public static function getInstance() : BattleSettingsMenu
      {
         if(!instance)
         {
            instance = new BattleSettingsMenu();
         }
         return instance;
      }
      
      private function §8$&§(param1:String, param2:String, param3:TextFormat = null) : void
      {
         §3#1§(param1 + ".label",param2,param3);
      }
      
      private function §1#d§(param1:String) : §6"%§
      {
         return new §6"%§(getChildByName(param1 + ".checkBox") as SimpleButton);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         var _loc2_:§6"%§ = null;
         this.controlWASD.setPressed(!§8"%§.§&S§.§5#6§());
         this.controlLetterJumps.setPressed(!§8"%§.§&S§.§[!+§());
         this.controlNonLetterJumps.setPressed(!§8"%§.§&S§.§ $_§());
         this.controlUse.setPressed(!§8"%§.§&S§.§ p§());
         this.controlBagQ.setPressed(!§8"%§.§&S§.§[!T§());
         this.controlBagI.setPressed(!§8"%§.§&S§.§!%!§());
         this.controlNum0.setPressed(!§8"%§.§&S§.§1$O§());
         this.controlNumpad.setPressed(!§8"%§.§&S§.§-&!§());
         this.unitAim.setPressed(!§8"%§.§&S§.§!$X§());
         this.shellTrace.setPressed(!§8"%§.§&S§.§?!&§());
         this.tips.setPressed(!§8"%§.§&S§.§'`§());
         this.squadTurnDamage.setPressed(!§8"%§.§&S§.§>!l§());
         this.§[!D§.setPressed(!§8"%§.§&S§.§]&B§());
         this.popupCooldowns.setPressed(!§8"%§.§&S§.§,$r§());
         this.popupHp.setPressed(!§8"%§.§&S§.§=#f§());
         this.effects.setPressed(!§8"%§.§&S§.§41§());
         this.clouds.setPressed(!§8"%§.§&S§.§<%S§());
         this.legends.setPressed(!§8"%§.§&S§.§ #J§());
         this.unitTrace.setPressed(!§8"%§.§&S§.§4%M§());
         this.equipAnim.setPressed(!§8"%§.§&S§.§;#W§());
         this.screenShake.setPressed(!§8"%§.§&S§.§%$P§());
         this.taunts.setPressed(!§8"%§.§&S§.§2%O§());
         this.weather.setPressed(!§8"%§.§&S§.§5#8§());
         this.water.setPressed(!§8"%§.§&S§.§@u§());
         this.ammoTrail.setPressed(!§8"%§.§&S§.§-p§());
         this.particles.setPressed(!§8"%§.§&S§.§1#Q§());
         this.unitIdles.setPressed(!§8"%§.§&S§.§;#G§());
         this.groundSmoothing.setPressed(!§8"%§.§&S§.§ "e§());
         this.§;$?§.setPressed(!§8"%§.§&S§.§1%6§());
         this.§ =§.setPressed(!§8"%§.§&S§.§="J§());
         this.speed.setPressed(!§8"%§.§&S§.§2#t§());
         this.§>%f§.setPressed(!§8"%§.§&S§.§2"K§());
         this.§8j§.setPressed(!§8"%§.§&S§.§1%2§());
         this.poison.setPressed(!§8"%§.§&S§.§4%l§());
         this.bounceProtection.setPressed(!§8"%§.§&S§.§>$<§());
         this.§6T§.setPressed(!§8"%§.§&S§.§,#3§());
         this.§>"%§.setPressed(!§8"%§.§&S§.§!"y§());
         this.§;!$§.setPressed(!§8"%§.§&S§.§^%x§());
         this.§;1§.setPressed(!§8"%§.§&S§.§ Z§());
         this.§+$h§.setPressed(!§8"%§.§&S§.§[$3§());
         this.§!"[§.setPressed(!§8"%§.§&S§.§+!T§());
         this.§^#J§.setPressed(!§8"%§.§&S§.§8%+§());
         this.§!$"§.setPressed(!§8"%§.§&S§.§8!#§());
         this.§'$w§.setPressed(!§8"%§.§&S§.§8!K§());
         for each(_loc2_ in this.§#$F§)
         {
            _loc2_.addEventListener(§8"@§.EVENT_TOGGLE,this.onToggle);
         }
         this.§3%P§();
         super.show(param1);
      }
      
      public function §3%P§() : void
      {
         this.§+!J§.buttonMode = this.§+!J§.mouseEnabled = !this.§'g§;
         this.§+#W§.buttonMode = this.§+#W§.mouseEnabled = !this.§2%4§;
         this.§9C§.buttonMode = this.§9C§.mouseEnabled = !this.§!#2§;
         this.§4"-§.buttonMode = this.§4"-§.mouseEnabled = !this.§2$5§;
         §7&5§.§>&<§(this.controlTitle,§0$N§.UNIT_CONTROL_TITLE + (!this.§'g§ ? "*" : ""));
         §7&5§.§>&<§(this.battleTitle,§0$N§.BATTLE_OPTIONS_TITLE + (!this.§2%4§ ? "*" : ""));
         §7&5§.§>&<§(this.visualTitle,§0$N§.VISUAL_OPTIONS_TITLE + (!this.§!#2§ ? "*" : ""));
         §7&5§.§>&<§(this.buffsCounterTitle,§0$N§.BUFF_COUNTERS_IN_HINT_TITLE + (!this.§2$5§ ? "*" : ""));
      }
      
      private function onToggle(param1:Event = null) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = §6"%§(param1.target).simpleButton.parent.name;
         var _loc3_:§'#E§ = §8"%§.§&S§;
         switch(_loc2_)
         {
            case §^r§:
               store.§&!N§(§!m§.§^r§,!this.controlWASD.isPressed(),_loc3_.§5#6§());
               break;
            case §3!F§:
               store.§&!N§(§!m§.§3!F§,!this.controlLetterJumps.isPressed(),_loc3_.§[!+§());
               if(this.controlLetterJumps.isPressed() && this.controlNonLetterJumps.isPressed())
               {
                  this.controlNonLetterJumps.setPressed(false);
               }
               break;
            case §0%?§:
               store.§&!N§(§!m§.§0%?§,!this.controlNonLetterJumps.isPressed(),_loc3_.§ $_§());
               if(this.controlLetterJumps.isPressed() && this.controlNonLetterJumps.isPressed())
               {
                  this.controlLetterJumps.setPressed(false);
               }
               break;
            case §2"_§:
               store.§&!N§(§!m§.§2"_§,!this.controlUse.isPressed(),_loc3_.§ p§());
               break;
            case § o§:
               store.§&!N§(§!m§.§ o§,!this.controlBagQ.isPressed(),_loc3_.§[!T§());
               break;
            case §5$T§:
               store.§&!N§(§!m§.§5$T§,!this.controlBagI.isPressed(),_loc3_.§!%!§());
               break;
            case §@o§:
               store.§&!N§(§!m§.§@o§,!this.controlNum0.isPressed(),_loc3_.§1$O§());
               break;
            case §;"w§:
               store.§&!N§(§!m§.§;"w§,!this.controlNumpad.isPressed(),_loc3_.§-&!§());
               break;
            case §"%'§:
               store.§&!N§(§!m§.§8%e§,!this.unitAim.isPressed(),_loc3_.§!$X§());
               break;
            case §'#8§:
               store.§&!N§(§!m§.§7W§,!this.shellTrace.isPressed(),_loc3_.§?!&§());
               break;
            case §#>§:
               store.§&!N§(§!m§.§1$6§,!this.tips.isPressed(),_loc3_.§'`§());
               break;
            case §@D§:
               store.§&!N§(§!m§.§>#N§,!this.squadTurnDamage.isPressed(),_loc3_.§>!l§());
               break;
            case §8%i§:
               store.§&!N§(§!m§.§8%i§,!this.§[!D§.isPressed(),_loc3_.§]&B§());
               break;
            case §<!r§:
               store.§&!N§(§!m§.§<!r§,!this.popupCooldowns.isPressed(),_loc3_.§,$r§());
               break;
            case §;"+§:
               store.§&!N§(§!m§.§;"+§,!this.popupHp.isPressed(),_loc3_.§=#f§());
               break;
            case §>$S§:
               store.§&!N§(§!m§.§>$S§,!this.effects.isPressed(),_loc3_.§41§());
               break;
            case §!!'§:
               store.§&!N§(§!m§.§!!'§,!this.clouds.isPressed(),_loc3_.§<%S§());
               break;
            case §05§:
               store.§&!N§(§!m§.§05§,!this.legends.isPressed(),_loc3_.§ #J§());
               break;
            case §5%W§:
               store.§&!N§(§!m§.§5%W§,!this.unitTrace.isPressed(),_loc3_.§4%M§());
               break;
            case §@!L§:
               store.§&!N§(§!m§.§@!L§,!this.equipAnim.isPressed(),_loc3_.§;#W§());
               break;
            case §4!L§:
               store.§&!N§(§!m§.§4!L§,!this.screenShake.isPressed(),_loc3_.§%$P§());
               break;
            case §&!q§:
               store.§&!N§(§!m§.§&!q§,!this.taunts.isPressed(),_loc3_.§2%O§());
               break;
            case §>&+§:
               store.§&!N§(§!m§.§>&+§,!this.weather.isPressed(),_loc3_.§5#8§());
               break;
            case §"#b§:
               store.§&!N§(§!m§.§"#b§,!this.water.isPressed(),_loc3_.§@u§());
               break;
            case §'!_§:
               store.§&!N§(§!m§.§'!_§,!this.ammoTrail.isPressed(),_loc3_.§-p§());
               break;
            case §0!9§:
               store.§&!N§(§!m§.§0!9§,!this.particles.isPressed(),_loc3_.§1#Q§());
               break;
            case §?$9§:
               store.§&!N§(§!m§.§?$9§,!this.unitIdles.isPressed(),_loc3_.§;#G§());
               break;
            case §'"f§:
               store.§&!N§(§!m§.§'"f§,!this.groundSmoothing.isPressed(),_loc3_.§ "e§());
               break;
            case ADRENALINE:
               store.§&!N§(§!m§.ADRENALINE,!this.§;$?§.isPressed(),_loc3_.§1%6§());
               break;
            case INVERTER:
               store.§&!N§(§!m§.INVERTER,!this.§ =§.isPressed(),_loc3_.§="J§());
               break;
            case SPEED:
               store.§&!N§(§!m§.SPEED,!this.speed.isPressed(),_loc3_.§2#t§());
               break;
            case §0=§:
               store.§&!N§(§!m§.§0=§,!this.§>%f§.isPressed(),_loc3_.§2"K§());
               break;
            case §3[§:
               store.§&!N§(§!m§.§3[§,!this.§8j§.isPressed(),_loc3_.§1%2§());
               break;
            case POISON:
               store.§&!N§(§!m§.POISON,!this.poison.isPressed(),_loc3_.§4%l§());
               break;
            case BOUNCE_PROTECTION:
               store.§&!N§(§!m§.BOUNCE_PROTECTION,!this.bounceProtection.isPressed(),_loc3_.§>$<§());
               break;
            case THEIF_ATTACK:
               store.§&!N§(§!m§.THEIF_ATTACK,!this.§6T§.isPressed(),_loc3_.§,#3§());
               break;
            case §=^§:
               store.§&!N§(§!m§.§=^§,!this.§>"%§.isPressed(),_loc3_.§!"y§());
               break;
            case §&_§:
               store.§&!N§(§!m§.§&_§,!this.§;!$§.isPressed(),_loc3_.§^%x§());
               break;
            case ANTI_HEAL:
               store.§&!N§(§!m§.ANTI_HEAL,!this.§;1§.isPressed(),_loc3_.§ Z§());
               break;
            case ITEM_DISPLACEMENT:
               store.§&!N§(§!m§.ITEM_DISPLACEMENT,!this.§+$h§.isPressed(),_loc3_.§[$3§());
               break;
            case §&#§:
               store.§&!N§(§!m§.§&#§,!this.§!"[§.isPressed(),_loc3_.§+!T§());
               break;
            case §9$a§:
               store.§&!N§(§!m§.§9$a§,!this.§^#J§.isPressed(),_loc3_.§8%+§());
               break;
            case §>"K§:
               store.§&!N§(§!m§.§>"K§,!this.§!$"§.isPressed(),_loc3_.§8!#§());
               break;
            case §3&0§:
               store.§&!N§(§!m§.§3&0§,!this.§'$w§.isPressed(),_loc3_.§8!K§());
         }
         this.§3%P§();
         resetBtn.setDisabled(this.isDefault);
         §>!-§.setDisabled(store.isEmpty());
      }
      
      private function §?"O§(param1:MouseEvent) : void
      {
         if(Boolean(Application.scene) && Boolean(Application.scene.§9%M§()))
         {
            Application.scene.§9%M§().visible = !this.clouds.isPressed();
         }
      }
      
      private function §%"H§(param1:MouseEvent) : void
      {
      }
      
      private function §=%t§(param1:Event = null) : void
      {
         §8"%§.§&S§.§<#K§(!this.tips.isPressed(),true);
         if(Application.scene)
         {
            Application.scene.§7#o§.§0#k§().§>#u§(!§8"%§.§&S§.§'`§());
            Application.scene.§7#o§.§7%C§();
         }
         if(Application.§5!>§.§^P§.isShown())
         {
            Application.§5!>§.§^P§.§6X§();
         }
      }
      
      public function §!C§(param1:Event = null) : void
      {
         this.tips.setPressed(!this.tips.isPressed());
         this.§=%t§();
      }
      
      private function §7$I§(param1:MouseEvent) : void
      {
         §@%;§.play(§ "N§.§,M§);
         this.§?#W§();
         resetBtn.setDisabled(this.isDefault);
      }
      
      private function §5#;§(param1:MouseEvent) : void
      {
         §@%;§.play(§ "N§.§,M§);
         this.§+%?§();
         resetBtn.setDisabled(this.isDefault);
      }
      
      private function §4%U§(param1:MouseEvent) : void
      {
         §@%;§.play(§ "N§.§,M§);
         this.§""j§();
         resetBtn.setDisabled(this.isDefault);
      }
      
      private function §=# §(param1:MouseEvent) : void
      {
         §@%;§.play(§ "N§.§,M§);
         this.§#!x§();
         resetBtn.setDisabled(this.isDefault);
      }
      
      override protected function okAction() : void
      {
         var settings:§'#E§;
         var shouldSwitchEffects:Boolean;
         var shouldSwitchEquipAnim:Boolean;
         var shouldSwitchUnitIdles:Boolean;
         var effectsEnabled:Boolean = false;
         var equipAnimEnabled:Boolean = false;
         var unitIdlesEnabled:Boolean = false;
         var faceMaker:§[%z§ = null;
         super.okAction();
         if(store.isEmpty())
         {
            return;
         }
         settings = §8"%§.§&S§;
         if(store.getValue(§!m§.§^r§))
         {
            settings.§]"l§(!this.controlWASD.isPressed());
         }
         if(store.getValue(§!m§.§3!F§))
         {
            settings.§8!r§(!this.controlLetterJumps.isPressed());
         }
         if(store.getValue(§!m§.§0%?§))
         {
            settings.§>%Z§(!this.controlNonLetterJumps.isPressed());
         }
         if(store.getValue(§!m§.§2"_§))
         {
            settings.§+"e§(!this.controlUse.isPressed());
         }
         if(store.getValue(§!m§.§ o§))
         {
            settings.§[$x§(!this.controlBagQ.isPressed());
         }
         if(store.getValue(§!m§.§5$T§))
         {
            settings.§3'§(!this.controlBagI.isPressed());
         }
         if(store.getValue(§!m§.§@o§))
         {
            settings.§;"o§(!this.controlNum0.isPressed());
         }
         if(store.getValue(§!m§.§;"w§))
         {
            settings.§'B§(!this.controlNumpad.isPressed());
         }
         if(store.getValue(§!m§.§8%e§))
         {
            settings.§#!4§(!this.unitAim.isPressed());
         }
         if(store.getValue(§!m§.§7W§))
         {
            settings.§2!A§(!this.shellTrace.isPressed());
         }
         if(store.getValue(§!m§.§1$6§))
         {
            settings.§<#K§(!this.tips.isPressed(),true);
         }
         if(store.getValue(§!m§.§>#N§))
         {
            settings.§0% §(!this.squadTurnDamage.isPressed());
         }
         if(store.getValue(§!m§.§8%i§))
         {
            settings.§"$`§(!this.§[!D§.isPressed());
         }
         if(store.getValue(§!m§.§<!r§))
         {
            settings.§7#l§(!this.popupCooldowns.isPressed());
         }
         if(store.getValue(§!m§.§;"+§))
         {
            settings.§9$z§(!this.popupHp.isPressed());
         }
         effectsEnabled = !this.effects.isPressed();
         shouldSwitchEffects = settings.§41§() != effectsEnabled;
         if(store.getValue(§!m§.§>$S§))
         {
            settings.§"$v§(!this.effects.isPressed());
         }
         if(store.getValue(§!m§.§!!'§))
         {
            settings.§&&3§(!this.clouds.isPressed());
         }
         if(store.getValue(§!m§.§05§))
         {
            settings.§7=§(!this.legends.isPressed());
         }
         if(store.getValue(§!m§.§5%W§))
         {
            settings.§#"E§(!this.unitTrace.isPressed());
         }
         equipAnimEnabled = !this.equipAnim.isPressed();
         shouldSwitchEquipAnim = settings.§;#W§() != equipAnimEnabled;
         if(store.getValue(§!m§.§@!L§))
         {
            settings.§[#g§(!this.equipAnim.isPressed());
         }
         if(store.getValue(§!m§.§4!L§))
         {
            settings.§&!t§(!this.screenShake.isPressed());
         }
         if(store.getValue(§!m§.§&!q§))
         {
            settings.§8&<§(!this.taunts.isPressed());
         }
         if(store.getValue(§!m§.§>&+§))
         {
            settings.§7#'§(!this.weather.isPressed());
         }
         if(store.getValue(§!m§.§"#b§))
         {
            settings.§%"b§(!this.water.isPressed());
         }
         if(store.getValue(§!m§.§'!_§))
         {
            settings.§-#k§(!this.ammoTrail.isPressed());
         }
         if(store.getValue(§!m§.§0!9§))
         {
            settings.§5$E§(!this.particles.isPressed());
         }
         unitIdlesEnabled = !this.unitIdles.isPressed();
         shouldSwitchUnitIdles = settings.§;#G§() != unitIdlesEnabled;
         if(store.getValue(§!m§.§?$9§))
         {
            settings.§3!2§(!this.unitIdles.isPressed());
         }
         if(store.getValue(§!m§.§'"f§))
         {
            settings.§'#U§(!this.groundSmoothing.isPressed());
         }
         if(store.getValue(§!m§.ADRENALINE))
         {
            settings.§^,§(!this.§;$?§.isPressed());
         }
         if(store.getValue(§!m§.INVERTER))
         {
            settings.§-!x§(!this.§ =§.isPressed());
         }
         if(store.getValue(§!m§.SPEED))
         {
            settings.§6#>§(!this.speed.isPressed());
         }
         if(store.getValue(§!m§.§0=§))
         {
            settings.§]%C§(!this.§>%f§.isPressed());
         }
         if(store.getValue(§!m§.§3[§))
         {
            settings.§#$P§(!this.§8j§.isPressed());
         }
         if(store.getValue(§!m§.POISON))
         {
            settings.§-&&§(!this.poison.isPressed());
         }
         if(store.getValue(§!m§.BOUNCE_PROTECTION))
         {
            settings.§9&<§(!this.bounceProtection.isPressed());
         }
         if(store.getValue(§!m§.THEIF_ATTACK))
         {
            settings.§4q§(!this.§6T§.isPressed());
         }
         if(store.getValue(§!m§.§=^§))
         {
            settings.§5%w§(!this.§>"%§.isPressed());
         }
         if(store.getValue(§!m§.§&_§))
         {
            settings.§`%P§(!this.§;!$§.isPressed());
         }
         if(store.getValue(§!m§.ANTI_HEAL))
         {
            settings.§"&5§(!this.§;1§.isPressed());
         }
         if(store.getValue(§!m§.ITEM_DISPLACEMENT))
         {
            settings.§5$j§(!this.§+$h§.isPressed());
         }
         if(store.getValue(§!m§.§&#§))
         {
            settings.§>!8§(!this.§!"[§.isPressed());
         }
         if(store.getValue(§!m§.§9$a§))
         {
            settings.§>"N§(!this.§^#J§.isPressed());
         }
         if(store.getValue(§!m§.§>"K§))
         {
            settings.§ #=§(!this.§!$"§.isPressed());
         }
         if(store.getValue(§!m§.§3&0§))
         {
            settings.§9!o§(!this.§'$w§.isPressed());
         }
         settings.§^"X§();
         if(!Application.scene || §8"%§.§?!W§.§3#r§)
         {
            §8"%§.§&#m§.update();
            return;
         }
         if(store.getValue(§!m§.§>#N§))
         {
            Application.scene.§7#o§.§%!-§();
         }
         if(Boolean(store.getValue(§!m§.§!!'§)) && Boolean(Application.scene.§9%M§()))
         {
            Application.scene.§9%M§().visible = settings.§<%S§();
         }
         if(store.getValue(§!m§.§'"f§))
         {
            Application.scene.§'#U§(§8"%§.§&S§.§ "e§());
         }
         if(shouldSwitchUnitIdles)
         {
            faceMaker = Application.scene.§@$I§.§5# §(§^#%§);
            if(faceMaker)
            {
               if(unitIdlesEnabled)
               {
                  faceMaker.activate();
               }
               else
               {
                  faceMaker.deactivate();
               }
            }
         }
         if(shouldSwitchEffects)
         {
            §8"%§.§?!W§.§4"m§.§5#h§().forEach(function(param1:§+%]§, ... rest):void
            {
               var unit:§+%]§ = param1;
               var unused:Array = rest;
               unit.buffs.forEach(function(param1:§`"C§, ... rest):void
               {
                  if(param1 is §^c§)
                  {
                     if(effectsEnabled)
                     {
                        §^c§(param1).playAnimations();
                     }
                     else
                     {
                        §^c§(param1).stopAnimations();
                     }
                  }
               });
            });
         }
         if(shouldSwitchEquipAnim)
         {
            §8"%§.§?!W§.§4"m§.§5#h§().forEach(function(param1:§+%]§, ... rest):void
            {
               param1.graphics.§6!o§(equipAnimEnabled);
            });
         }
      }
      
      override public function hide() : void
      {
         var _loc1_:§6"%§ = null;
         for each(_loc1_ in this.§#$F§)
         {
            _loc1_.removeEventListener(§8"@§.EVENT_TOGGLE,this.onToggle);
         }
         super.hide();
      }
      
      override protected function §]$§(param1:Event) : void
      {
         this.§?#W§();
         this.§+%?§();
         this.§""j§();
         this.§#!x§();
         resetBtn.setDisabled(true);
      }
      
      private function §?#W§() : void
      {
         var _loc1_:§6"%§ = null;
         for each(_loc1_ in this.§`"b§)
         {
            if(_loc1_ != this.controlNumpad && !_loc1_.isPressed() == false)
            {
               _loc1_.setPressed(!_loc1_.isPressed());
            }
         }
         if(!this.controlNumpad.isPressed() == true)
         {
            this.controlNumpad.setPressed(!this.controlNumpad.isPressed());
         }
         this.§+!J§.buttonMode = this.§+!J§.mouseEnabled = false;
         §7&5§.§>&<§(this.controlTitle,§0$N§.UNIT_CONTROL_TITLE);
      }
      
      private function §+%?§() : void
      {
         var _loc1_:§6"%§ = null;
         for each(_loc1_ in this.§=$J§)
         {
            if(_loc1_ != this.tips && !_loc1_.isPressed() == false)
            {
               _loc1_.setPressed(!_loc1_.isPressed());
            }
         }
         if(!this.tips.isPressed() == Application.userProfile.getLevel() > §,! §.§"#G§)
         {
            this.tips.setPressed(!this.tips.isPressed());
         }
         this.§+#W§.buttonMode = this.§+#W§.mouseEnabled = false;
         §7&5§.§>&<§(this.battleTitle,§0$N§.BATTLE_OPTIONS_TITLE);
      }
      
      private function §""j§() : void
      {
         var _loc1_:§6"%§ = null;
         for each(_loc1_ in this.§%&I§)
         {
            if(!_loc1_.isPressed() == false)
            {
               _loc1_.setPressed(!_loc1_.isPressed());
            }
         }
         this.§9C§.buttonMode = this.§9C§.mouseEnabled = false;
         §7&5§.§>&<§(this.visualTitle,§0$N§.VISUAL_OPTIONS_TITLE);
      }
      
      private function §#!x§() : void
      {
         var _loc1_:§6"%§ = null;
         for each(_loc1_ in this.§3$=§)
         {
            if(!_loc1_.isPressed() == false)
            {
               _loc1_.setPressed(!_loc1_.isPressed());
            }
         }
         this.§4"-§.buttonMode = this.§4"-§.mouseEnabled = false;
         §7&5§.§>&<§(this.buffsCounterTitle,§0$N§.BUFF_COUNTERS_IN_HINT_TITLE);
      }
      
      override protected function get isDefault() : Boolean
      {
         if(this.§'g§ && this.§2%4§ && this.§!#2§ && this.§2$5§)
         {
            return true;
         }
         return false;
      }
      
      private function get §'g§() : Boolean
      {
         var _loc1_:§6"%§ = null;
         for each(_loc1_ in this.§`"b§)
         {
            if(_loc1_ != this.controlNumpad && !_loc1_.isPressed() == false)
            {
               return false;
            }
         }
         if(!this.controlNumpad.isPressed() == true)
         {
            return false;
         }
         return true;
      }
      
      private function get §2%4§() : Boolean
      {
         var _loc1_:§6"%§ = null;
         for each(_loc1_ in this.§=$J§)
         {
            if(_loc1_ != this.tips && !_loc1_.isPressed() == false)
            {
               return false;
            }
         }
         if(!this.tips.isPressed() == Application.userProfile.getLevel() > §,! §.§"#G§)
         {
            return false;
         }
         return true;
      }
      
      private function get §!#2§() : Boolean
      {
         var _loc1_:§6"%§ = null;
         for each(_loc1_ in this.§%&I§)
         {
            if(!_loc1_.isPressed() == false)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §2$5§() : Boolean
      {
         var _loc1_:§6"%§ = null;
         for each(_loc1_ in this.§3$=§)
         {
            if(!_loc1_.isPressed() == false)
            {
               return false;
            }
         }
         return true;
      }
   }
}

