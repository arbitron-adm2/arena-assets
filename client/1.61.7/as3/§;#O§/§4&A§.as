package §;#O§
{
   import § !P§.*;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0$_§;
   import §5!,§.§9$h§;
   import §65§.§5#A§;
   import §9%k§.*;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^!]§.§-$w§;
   import §^"y§.§[";§;
   import §`%&§.§5$1§;
   import §`%&§.§`§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §4&A§ implements §[";§
   {
      
      private static var instance:§4&A§;
      
      private static const §9"&§:uint = 3;
      
      private var §"%e§:Vector.<§+%7§>;
      
      public function §4&A§(param1:Vector.<§+%7§>)
      {
         super();
         this.§"%e§ = param1;
      }
      
      public static function init(param1:Vector.<§+%7§>) : void
      {
         if(!instance)
         {
            instance = new §4&A§(param1);
         }
      }
      
      private static function getInstance() : §4&A§
      {
         if(!instance)
         {
            throw new Error("MercStore hasn\'t been initialized properly!");
         }
         return instance;
      }
      
      public static function §'![§(param1:int) : §+%7§
      {
         var _loc2_:§+%7§ = null;
         for each(_loc2_ in getInstance().§"%e§)
         {
            if(_loc2_.getId() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §1!O§() : Vector.<§+%7§>
      {
         var _loc1_:Vector.<§+%7§> = new Vector.<§+%7§>(0);
         var _loc2_:Vector.<§+%7§> = getInstance().§"%e§;
         var _loc3_:int = Application.userProfile.getLevel();
         var _loc4_:* = int(_loc2_.length - 1);
         while(_loc4_ >= 0)
         {
            if(_loc2_[_loc4_].§,X§() <= _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_]);
            }
            _loc4_--;
         }
         return _loc1_.sort(§1$k§).sort(§1$k§).sort(§1$k§).sort(§;$V§);
      }
      
      public static function §1$k§(param1:§+%7§, param2:§+%7§) : int
      {
         if(param1.getLevel() < param2.getLevel())
         {
            return 1;
         }
         if(param1.getLevel() > param2.getLevel())
         {
            return -1;
         }
         return 0;
      }
      
      public static function §%%V§(param1:§+%7§, param2:§+%7§) : int
      {
         if(param1.isNew && !param2.isNew)
         {
            return -1;
         }
         if(!param1.isNew && param2.isNew)
         {
            return 1;
         }
         return 0;
      }
      
      public static function §;$V§(param1:§+%7§, param2:§+%7§) : int
      {
         if(param1.isNew && !param2.isNew)
         {
            return -1;
         }
         if(!param1.isNew && param2.isNew)
         {
            return 1;
         }
         return §1$k§(param1,param2);
      }
      
      public static function §9&7§(param1:UserProfile) : void
      {
         var _loc2_:§+%7§ = §'![§(param1.getId());
         if(_loc2_)
         {
            if(!param1.§2u§() && _loc2_.§"!?§() != 0)
            {
               param1.§7"i§(§<$c§.§^&1§(_loc2_.§"!?§(),param1.getRace()));
            }
            if(!param1.§+!b§() && _loc2_.§8!u§() != 0)
            {
               param1.§;"U§(§<$c§.§"$h§(_loc2_.§8!u§()));
            }
         }
      }
   }
}

