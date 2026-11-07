package §=1§
{
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§@%;§;
   import §&&6§.§@h§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §2"L§.§,'§;
   import §3#a§.§-#M§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §<"?§.§@&#§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@#K§.*;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class SolarPriest extends §@&#§
   {
      
      public function SolarPriest()
      {
         super(107);
         resource = new §@#%§("solarpriest.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.SOLAR_PRIEST;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §@h§()];
      }
      
      override protected function §2!9§() : void
      {
         var _loc1_:§,'§ = null;
         super.§2!9§();
         _loc1_ = new §,'§(§8"%§.§?!W§.§^!U§().battleId ^ 0x8F);
         var _loc2_:Array = §""L§.§6$6§([mapRecord.§8$2§[1],mapRecord.§8$2§[6],mapRecord.§?$&§[1]],_loc1_);
         var _loc3_:Array = §""L§.§6$6§([mapRecord.§8$2§[0],mapRecord.§8$2§[2],mapRecord.§8$2§[3],mapRecord.§8$2§[4],mapRecord.§?$&§[2]],_loc1_);
         §5"N§ = [[_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3]],[mapRecord.§8$2§[7]],[_loc2_[0],_loc2_[1],_loc2_[2]]];
      }
   }
}

