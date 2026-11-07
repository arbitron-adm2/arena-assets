package §4^§
{
   import § #m§.§2#P§;
   import §"#x§.§'"$§;
   import §#",§.§?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+%S§.§[&;§;
   import §+%S§.§[`§;
   import §-%B§.*;
   import §-8§.*;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4#`§.*;
   import §5!b§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§!"t§;
   import §?$K§.§=z§;
   import §?%J§.*;
   import §@!i§.§5&4§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[" §.§1&@§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.Qtip;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §4!w§
   {
      
      public static const §0%;§:Vector.<§&!E§> = new <§&!E§>[§&!E§.§!?§,§&!E§.AIR];
      
      §§push(§§findproperty(FIRE));
      var _temp_3:* = new <§&!E§>[§&!E§.FIRE];
      
      public static const FIRE:Vector.<§&!E§> = new <§&!E§>[§&!E§.FIRE];
      
      public static const §=$-§:Vector.<§&!E§> = new <§&!E§>[§&!E§.§=$-§,§&!E§.COLD];
      
      public static const POISON:Vector.<§&!E§> = new <§&!E§>[§&!E§.POISON,§&!E§.§0"&§];
      
      public function §4!w§()
      {
         super();
      }
      
      public static function §1#M§(param1:Vector.<§&!E§>) : MovieClip
      {
         switch(param1)
         {
            case FIRE:
               return §6#A§.§!&6§("FireRune");
            case §=$-§:
               return §6#A§.§!&6§("ShockRune");
            case POISON:
               return §6#A§.§!&6§("PoisonRune");
            default:
               return §6#A§.§!&6§("BasicRune");
         }
      }
      
      public static function §53§(param1:Vector.<§&!E§>) : MovieClip
      {
         switch(param1)
         {
            case FIRE:
               return §6#A§.§!&6§("FireLine");
            case §=$-§:
               return §6#A§.§!&6§("ShockLine");
            case POISON:
               return §6#A§.§!&6§("PoisonLine");
            default:
               return §6#A§.§!&6§("BasicLine");
         }
      }
      
      public static function §6!z§(param1:Vector.<§&!E§>) : MovieClip
      {
         switch(param1)
         {
            case FIRE:
               return §6#A§.§!&6§("FireGenerator");
            case §=$-§:
               return §6#A§.§!&6§("ShockGenerator");
            case POISON:
               return §6#A§.§!&6§("PoisonGenerator");
            default:
               return §6#A§.§!&6§("BasicGenerator");
         }
      }
      
      public static function §!"n§(param1:Vector.<§&!E§>) : String
      {
         switch(param1)
         {
            case FIRE:
               return "FireAlarm";
            case §=$-§:
               return "ShockAlarm";
            case POISON:
               return "PoisonAlarm";
            default:
               return "BaseAlarm";
         }
      }
      
      public static function §+"8§(param1:Vector.<§&!E§>) : String
      {
         switch(param1)
         {
            case FIRE:
               return §<"G§.§%! §("FIRE_RUNE_HINT");
            case §=$-§:
               return §<"G§.§%! §("SHOCK_RUNE_HINT");
            case POISON:
               return §<"G§.§%! §("POISON_RUNE_HINT");
            default:
               return §<"G§.§%! §("BASE_RUNE_HINT");
         }
      }
   }
}

