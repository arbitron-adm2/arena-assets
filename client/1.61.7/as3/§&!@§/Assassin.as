package §&!@§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §#$e§.§!a§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §'!Z§.§2!H§;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+%S§.§ #R§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §4!!§.§!%n§;
   import §4'§.§4$&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#o§.§1@§;
   import §;$8§.§6"E§;
   import §<!W§.*;
   import §<"?§.§6"d§;
   import §<%k§.§`!v§;
   import §<K§.RatingTabAllTime;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$K§.§!"t§;
   import §?$K§.§##§;
   import §?$K§.§3#j§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[!`§.§!$^§;
   import §^#[§.§&$2§;
   import config.§;"I§;
   import config.§`!a§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class Assassin extends §6"d§
   {
      
      public static const §+$S§:§&$2§ = new §&$2§(10);
      
      public static const §9$L§:§&$2§ = new §&$2§(5);
      
      public static const §=#@§:§&$2§ = new §&$2§(20);
      
      public static const §4!9§:uint = 1;
      
      public static const §7^§:uint = 2;
      
      public static const §7c§:uint = 3;
      
      public function Assassin()
      {
         super(96);
      }
      
      override public function getId() : int
      {
         return §+#N§.§[#J§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new § $=§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([mapRecord.§8$2§[0],mapRecord.§8$2§[1],mapRecord.§8$2§[2],mapRecord.§8$2§[4],mapRecord.§8$2§[5],mapRecord.§8$2§[6],mapRecord.§8$2§[7]]),[mapRecord.§8$2§[3]]];
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         var _loc3_:§2R§ = null;
         var _loc4_:§2R§ = null;
         if(param1.code == §4!9§)
         {
            _loc2_ = §]%!§(BossAchieves.ASSASSIN_SHREDDER);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§+$S§.value);
            }
         }
         else if(param1.code == §7^§)
         {
            _loc3_ = §]%!§(BossAchieves.ASSASSIN_JUMPS);
            if(_loc3_.available)
            {
               §=$I§(_loc3_,§9$L§.value);
            }
         }
         else if(param1.code == §7c§)
         {
            _loc4_ = §]%!§(BossAchieves.ASSASSIN_DANCER);
            if(_loc4_.available)
            {
               §=$I§(_loc4_,§=#@§.value);
            }
         }
      }
      
      override protected function §'G§() : void
      {
      }
   }
}

