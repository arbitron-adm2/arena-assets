package §<%k§
{
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §%"Z§.§2"B§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §2"L§.§^$y§;
   import §3"_§.*;
   import §4&F§.§!$I§;
   import §4&F§.§%$l§;
   import §4&F§.§&$D§;
   import §4&F§.§,#f§;
   import §4&F§.§2#r§;
   import §4&F§.§2%D§;
   import §4&F§.§=&3§;
   import §4&F§.§@$^§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §;#O§.§+%7§;
   import §;$8§.§6"E§;
   import §<%E§.§'$g§;
   import §="z§.*;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[%§.Dragon;
   import §^!]§.MineSetUpEvent;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §^#i§
   {
      
      public static const §>$$§:§`!t§ = new §2%D§();
      
      public static const §]$k§:§`!t§ = new §=&3§();
      
      public static const §]%y§:§`!t§ = new §!$I§();
      
      public static const §["G§:§`!t§ = new §&$D§();
      
      public static const §6%J§:§`!t§ = new §%$l§();
      
      public static const §'!6§:§`!t§ = new §@$^§();
      
      public static const § #j§:§`!t§ = new §2#r§();
      
      public static const §=&"§:§`!t§ = new §,#f§();
      
      private static var §0#y§:Array = [§2"B§.RU,§2"B§.EN,§2"B§.UA,§2"B§.PL];
      
      private static var schemes:Object = {
         "ru":{
            "boxer":§>$$§,
            "demon":§>$$§,
            "rabbit":§>$$§,
            "zombie":§>$$§,
            "cat":§>$$§,
            "dragon":§>$$§,
            "robot":§>$$§,
            "rhino":§>$$§,
            "boar":§>$$§,
            "crab":§>$$§,
            "donut":§>$$§,
            "snail":§>$$§,
            "alien":§>$$§
         },
         "ua":{
            "boxer":§["G§,
            "demon":§["G§,
            "rabbit":§["G§,
            "zombie":§["G§,
            "cat":§["G§,
            "dragon":§["G§,
            "robot":§["G§,
            "rhino":§["G§,
            "boar":§["G§,
            "crab":§["G§,
            "donut":§["G§,
            "snail":§["G§,
            "alien":§["G§
         },
         "en":{
            "boxer":§'!6§,
            "demon":§'!6§,
            "rabbit":§6%J§,
            "zombie":§'!6§,
            "cat":§6%J§,
            "dragon":§6%J§,
            "robot":§6%J§,
            "rhino":§6%J§,
            "boar":§6%J§,
            "crab":§6%J§,
            "donut":§6%J§,
            "snail":§6%J§,
            "alien":§6%J§
         },
         "pl":{
            "boxer":§=&"§,
            "demon":§=&"§,
            "rabbit":§ #j§,
            "zombie":§=&"§,
            "cat":§ #j§,
            "dragon":§ #j§,
            "robot":§ #j§,
            "rhino":§ #j§,
            "boar":§ #j§,
            "crab":§ #j§,
            "donut":§ #j§,
            "snail":§ #j§,
            "alien":§ #j§
         }
      };
      
      public function §^#i§()
      {
         super();
      }
      
      public static function §8!C§(param1:String) : §`!t§
      {
         var _loc2_:Object = schemes[§8"%§.§[f§.§""C§(§0#y§).§%F§()];
         return _loc2_[param1];
      }
      
      public static function § $j§() : Vector.<String>
      {
         var _loc1_:§2"B§ = §8"%§.§[f§.§""C§(§0#y§);
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         if(_loc1_.equals(§2"B§.RU))
         {
            _loc2_.push("sound_worm_ru");
         }
         else if(_loc1_.equals(§2"B§.EN))
         {
            _loc2_.push("sound_worm_en","sound_boxer_en");
         }
         else if(_loc1_.equals(§2"B§.UA))
         {
            _loc2_.push("sound_worm_ua");
         }
         else if(_loc1_.equals(§2"B§.PL))
         {
            _loc2_.push("sound_worm_pl","sound_boxer_pl");
         }
         return _loc2_;
      }
   }
}

