package §&!@§
{
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§!%&§;
   import §##j§.§0%=§;
   import §##j§.§7%R§;
   import §##j§.§<!P§;
   import §##j§.§>"M§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §&%7§.*;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§?3§;
   import §+&<§.*;
   import §-!U§.*;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §4$b§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §7!B§.§6#I§;
   import §7!B§.§`s§;
   import §7$t§.§^$E§;
   import §8$V§.TeamController;
   import §8$Z§.§9!&§;
   import §;#O§.§+%7§;
   import §<!W§.§#&#§;
   import §<"?§.§6"d§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!C§.§0"l§;
   import §="z§.§7%-§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$7§.§8"e§;
   import §?$L§.§ "N§;
   import §?%J§.*;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§'#E§;
   import §@!i§.§;#L§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiServerEvent;
   import com.greensock.TweenMax;
   import config.§^"2§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §>"B§ extends §6"d§
   {
      
      public static const §8#h§:uint = 1;
      
      public static const §,!v§:uint = 2;
      
      public static const §-<§:uint = 3;
      
      public function §>"B§()
      {
         super(99);
      }
      
      override public function getId() : int
      {
         return §+#N§.§@"f§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §'!7§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([mapRecord.§8$2§[7],mapRecord.§8$2§[5],mapRecord.§8$2§[3],mapRecord.§8$2§[1]]),[mapRecord.§8$2§[8]],[mapRecord.§8$2§[4],mapRecord.§8$2§[6],mapRecord.§8$2§[0],mapRecord.§?$&§[2]]];
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:int = -1;
         switch(param1.code)
         {
            case §8#h§:
               _loc2_ = int(BossAchieves.ARCHBOT_LAST);
               break;
            case §,!v§:
               _loc2_ = int(BossAchieves.ARCHBOT_DROID);
               break;
            case §-<§:
               _loc2_ = int(BossAchieves.ARCHBOT_MAGIC);
         }
         var _loc3_:§2R§ = §]%!§(_loc2_);
         if(Boolean(_loc3_) && _loc3_.available)
         {
            _loc3_.§#"!§();
            §5X§(_loc3_);
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.ARCHBOT_LAST).§,%,§();
         §]%!§(BossAchieves.ARCHBOT_DROID).§,%,§();
         §]%!§(BossAchieves.ARCHBOT_MAGIC).§,%,§();
      }
   }
}

