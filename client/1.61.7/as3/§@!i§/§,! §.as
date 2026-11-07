package §@!i§
{
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§`%g§;
   import §#%!§.§^%c§;
   import §&"c§.§!!q§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-8§.§3!x§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §4!K§.§^%A§;
   import §4&F§.*;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §<%k§.*;
   import §?$7§.§6%k§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^-§.§ %s§;
   import §^-§.Rope;
   import §`"p§.*;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §,! §
   {
      
      public static const §8"Y§:int = 1000;
      
      public static const §8![§:int = 10;
      
      public static const §'">§:uint = 4;
      
      public static const §3!j§:uint = 3;
      
      public static const DAILY_TASKS_ACCESS:uint = 5;
      
      public static const §7#$§:uint = 10;
      
      public static const §?8§:uint = 5;
      
      public static const §"#G§:uint = 7;
      
      public static const §##T§:uint = 4;
      
      public static const §'6§:uint = 9;
      
      public static const §,!b§:uint = 4;
      
      public static const §2%r§:uint = 10000;
      
      public static const §[b§:int = 4;
      
      public static const §<[§:int = 4;
      
      public static const §3"r§:uint = 4;
      
      public static const §5!`§:int = 4;
      
      public function §,! §()
      {
         super();
      }
      
      public static function §9$!§() : Boolean
      {
         return Application.userProfile.getLevel() >= §'">§;
      }
      
      public static function §7$f§() : Boolean
      {
         return Application.userProfile.getLevel() >= §7#$§ || Application.instance.§#&7§();
      }
      
      public static function §1%q§(param1:§??§) : Boolean
      {
         var _loc2_:Boolean = §&$F§(param1) && §`n§(param1) && §2&;§(param1);
         if(param1 is §=?§)
         {
            _loc2_ &&= §1#C§(param1 as §=?§);
         }
         return _loc2_;
      }
      
      public static function §&$F§(param1:§??§) : Boolean
      {
         return param1.§,X§() <= Application.userProfile.getLevel();
      }
      
      public static function §9",§() : Boolean
      {
         return Application.userProfile.getLevel() >= §##T§;
      }
      
      public static function §%%X§() : Boolean
      {
         return Application.userProfile.getLevel() >= §'6§;
      }
      
      public static function §1#C§(param1:§=?§) : Boolean
      {
         return param1.getRequiredRating() <= Application.userProfile.getRating();
      }
      
      public static function §`n§(param1:§??§) : Boolean
      {
         return param1.§ %D§() <= §`"c§.§-&A§();
      }
      
      public static function §2&;§(param1:§??§) : Boolean
      {
         var _loc2_:uint = param1.§`%n§();
         if(_loc2_ != 0)
         {
            return §6%k§.§>!+§(_loc2_).§^&§ >= _loc2_;
         }
         return true;
      }
      
      public static function §+!?§(param1:uint, param2:§9$Z§, param3:Boolean = false) : Boolean
      {
         return (!param2.minLevel || param1 >= param2.minLevel) && (param3 || !param2.maxLevel || param1 <= param2.maxLevel);
      }
      
      public static function §4&B§() : Boolean
      {
         return Application.userProfile.getLevel() >= §,!b§ && Application.userProfile.getLevel() < §<!9§.getMaxLevel() && Application.userProfile.getRating() < §2%r§;
      }
      
      public static function §]"X§() : Boolean
      {
         return Application.userProfile.getLevel() >= §3!j§;
      }
      
      public static function §4"!§() : Boolean
      {
         return Application.userProfile.getLevel() >= DAILY_TASKS_ACCESS - 1;
      }
      
      public static function §+!I§() : Boolean
      {
         return Application.userProfile.getLevel() >= DAILY_TASKS_ACCESS;
      }
   }
}

