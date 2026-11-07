package §&!@§
{
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"%H§.§'%u§;
   import §##y§.§9§;
   import §&!?§.*;
   import §&"c§.§5$n§;
   import §'%[§.§#&B§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-%B§.§-"o§;
   import §0%"§.§[!^§;
   import §0%"§.§`"`§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.WaterLevelChangedEvent;
   import §2"L§.§##l§;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §4u§.*;
   import §5!,§.§-§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$1§.*;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §7$t§.§[!X§;
   import §8#<§.§!#^§;
   import §8$V§.*;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<!W§.§?#L§;
   import §<"?§.§6"d§;
   import §=&!§.§ "^§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?%J§.§%$d§;
   import §@!N§.§&#Z§;
   import §@!i§.§<,§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import config.achievements.BossAchieves;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class DarkKnight extends §6"d§
   {
      
      public static const §;"d§:§&$2§ = new §&$2§(2);
      
      public static const §3$8§:§&$2§ = new §&$2§(3);
      
      public static const §8$+§:uint = 1;
      
      public static const §0!T§:uint = 2;
      
      public static const §`%q§:uint = 3;
      
      public static const §>#g§:uint = 4;
      
      public function DarkKnight()
      {
         super(87);
      }
      
      override public function getId() : int
      {
         return §+#N§.§<$N§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §%$d§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[§#$J§(673,575),§#$J§(1966,438),§#$J§(1521,887),§#$J§(2511,458)],[§#$J§(1078,228)],[§#$J§(2103,248),§#$J§(515,57)]];
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         var _loc3_:§2R§ = null;
         var _loc4_:§2R§ = null;
         var _loc5_:§2R§ = null;
         if(param1.code == §8$+§)
         {
            _loc2_ = §]%!§(BossAchieves.DARK_KNIGHT_UNDERWATER);
            if(_loc2_.available)
            {
               _loc2_.§##?§();
               §=$I§(_loc2_,§;"d§.value);
            }
         }
         else if(param1.code == §0!T§)
         {
            _loc3_ = §]%!§(BossAchieves.DARK_KNIGHT_UNDERWATER);
            if(_loc3_.available)
            {
               §=$I§(_loc3_,§;"d§.value);
            }
         }
         else if(param1.code == §`%q§)
         {
            _loc4_ = §]%!§(BossAchieves.DARK_KNIGHT_RITUAL);
            if(_loc4_.available)
            {
               §=$I§(_loc4_,§3$8§.value);
            }
         }
         else if(param1.code == §>#g§)
         {
            _loc5_ = §]%!§(BossAchieves.DARK_KNIGHT_DOWNWITH);
            if(_loc5_.available)
            {
               _loc5_.§#"!§();
               §5X§(_loc5_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.DARK_KNIGHT_DOWNWITH).§,%,§();
      }
   }
}

