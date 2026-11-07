package §0%"§
{
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#T§.§;#Q§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4'§.§`"q§;
   import §5#`§.*;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import config.§5%T§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §[!^§
   {
      
      public static const §6%6§:Vector.<int> = new <int>[ROBINHOOD];
      
      public static const FIRE_FIGHTER:uint = 4000;
      
      public static const PIRATE:uint = 4001;
      
      public static const EMINENCE:uint = 4002;
      
      public static const VOLT:uint = 4003;
      
      public static const HARDENED_TANKER:uint = 4004;
      
      public static const GRAVES_DIGGER:uint = 4005;
      
      public static const LIGHT_MESSENGER:uint = 4006;
      
      public static const SHINTO:uint = 4007;
      
      public static const DARTH_VADER:uint = 4008;
      
      public static const TOXIC_CREATURE:uint = 4009;
      
      public static const §7?§:uint = 4010;
      
      public static const §1%-§:uint = 4011;
      
      public static const TRIPLE_GILLS:uint = 4012;
      
      public static const SERVANT_OF_ODIN:uint = 4013;
      
      public static const ELM_STREET:uint = 4014;
      
      public static const SEEKER_RESOURCES:uint = 4015;
      
      public static const VLAD_THE_IMPALER:uint = 4016;
      
      public static const PATRON_OF_NATURE:uint = 4017;
      
      public static const KILLER_WAYNE:uint = 4018;
      
      public static const FIRE_ATRONACH:uint = 4019;
      
      public static const ERIK_THE_RED:uint = 4020;
      
      public static const NEIL_ARMSTRONG:uint = 4021;
      
      public static const FUTURE_SOLDIER:uint = 4022;
      
      public static const PAPUANS_LEADER:uint = 4023;
      
      public static const RESIDENTS:uint = 4024;
      
      public static const THIS_IS_WORMIX:uint = 4025;
      
      public static const SCYTHIAN:uint = 4026;
      
      public static const MAGNETO:uint = 4027;
      
      public static const SCROOGE:uint = 4028;
      
      public static const SANTA:uint = 4029;
      
      public static const BOSS_SMITH:uint = 4030;
      
      public static const IVAN_KOZHEDUB:uint = 4031;
      
      public static const DON_VITO_CORLEONE:uint = 4032;
      
      public static const SLY:uint = 4033;
      
      public static const HABSBURG:uint = 4034;
      
      public static const ANCIENT_WIZARD:uint = 4035;
      
      public static const KVIBERN:uint = 4036;
      
      public static const ALSO_WORMIX:uint = 4037;
      
      public static const SEA_STORM:uint = 4038;
      
      public static const POWER_AZTECS:uint = 4039;
      
      public static const SHERIFF_FUTURE:uint = 4040;
      
      public static const HOT_REVENGE:uint = 4041;
      
      public static const ILLUSION:uint = 4042;
      
      public static const EASTERN_CUISINE:uint = 4043;
      
      public static const SOVIET_TECHNOLOGIES:uint = 4044;
      
      public static const MAGIC_VOODOO:uint = 4045;
      
      public static const FUTURE_TECHNOLOGIES:uint = 4046;
      
      public static const CURSE_ZOMBIES:uint = 4047;
      
      public static const PREDATOR:uint = 4048;
      
      public static const NECROMANCER:uint = 4049;
      
      public static const THAI_DRAGON:uint = 4050;
      
      public static const FELT_TIP_PLASTER:uint = 4051;
      
      public static const POWER_NORTH:uint = 4052;
      
      public static const MASTER_HELL:uint = 4053;
      
      public static const LIGHTNING_FORCE:uint = 4054;
      
      public static const ARCTIC_EARTHQUAKE:uint = 4055;
      
      public static const MAGIC_COLD:uint = 4056;
      
      public static const MUTATION:uint = 4057;
      
      public static const §#&&§:uint = 4058;
      
      public static const §=!Q§:uint = 4059;
      
      public static const ROBINHOOD:uint = 4060;
      
      public static const ARCHIVIST_GARB:uint = 4061;
      
      public static const §]"=§:uint = 4062;
      
      public static const §4"M§:uint = 4063;
      
      public static const §9%=§:uint = 4064;
      
      public static const CHRISTMAS_MAGIC:uint = 4065;
      
      public function §[!^§()
      {
         super();
      }
      
      public static function §]$G§(param1:int) : Boolean
      {
         return §6%6§.indexOf(param1) > -1;
      }
      
      public static function §-$+§(param1:int) : Boolean
      {
         return int(param1 / 1000) == int(§`"`§.§;9§ / 1000);
      }
   }
}

