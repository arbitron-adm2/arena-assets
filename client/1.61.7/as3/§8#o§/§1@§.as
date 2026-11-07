package §8#o§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&!@§.§!6§;
   import §&!@§.§5"`§;
   import §&!@§.Assassin;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Miner;
   import §&!@§.Samurai;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0%z§.§1&6§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §3#T§.§]!6§;
   import §5#`§.§7%g§;
   import §6"'§.§&"3§;
   import §6%2§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8$V§.*;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §=#g§.*;
   import §?$7§.§+#N§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^"y§.§[";§;
   import §`%&§.§5$1§;
   import config.achievements.BossAchieves;
   import config.achievements.§`&<§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §1@§ implements §[";§
   {
      
      private static var recipes:Object = {};
      
      private static var reagents:Object = {};
      
      private static var upgrades:Object = {};
      
      private static var §@&F§:Vector.<§&"3§> = new Vector.<§&"3§>();
      
      public function §1@§()
      {
         super();
      }
      
      public static function §""!§() : Object
      {
         return recipes;
      }
      
      public static function §]#x§() : Object
      {
         return reagents;
      }
      
      public static function §^$U§() : Object
      {
         return upgrades;
      }
      
      public static function §=!u§(param1:int) : Object
      {
         return upgrades[param1];
      }
      
      public static function §`$M§(param1:int) : §&!e§
      {
         return reagents[param1];
      }
      
      public static function §2"C§(param1:int) : §#$s§
      {
         return recipes[param1];
      }
      
      public static function §=#<§(param1:Object) : void
      {
         §+#=§();
         §,&G§(param1);
      }
      
      private static function §+#=§() : void
      {
         var _loc1_:§#$s§ = null;
         var _loc2_:§&"3§ = null;
         for each(_loc1_ in recipes)
         {
            _loc2_ = §&%u§(_loc1_.prevUpgradeId);
            if(_loc2_ == null)
            {
               _loc2_ = new §&"3§(_loc1_.prevUpgradeId);
               §@&F§.push(_loc2_);
            }
            _loc2_.§!"_§.push(_loc1_.upgradeId);
         }
      }
      
      public static function §&%u§(param1:int) : §&"3§
      {
         var _loc2_:§&"3§ = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in §@&F§)
         {
            var _loc6_:int = 0;
            var _loc7_:* = _loc2_.§!"_§;
            do
            {
               for each(_loc3_ in _loc7_)
               {
               }
               continue loop0;
            }
            while(_loc3_ != param1);
            return _loc2_;
         }
         return null;
      }
      
      private static function §,&G§(param1:Object) : void
      {
         var _loc2_:§#$s§ = null;
         for each(_loc2_ in recipes)
         {
            param1[_loc2_.upgradeId] = §1"U§(_loc2_.prevUpgradeId,_loc2_.upgradeId);
         }
      }
      
      private static function §1"U§(param1:int, param2:int) : §;#_§
      {
         var _loc3_:§;#_§ = null;
         _loc3_ = §<$c§.§ !=§(param1);
         var _loc4_:Object = §=!u§(param2);
         var _loc5_:§;#_§ = _loc3_.clone();
         _loc5_.initFromConfig(_loc4_);
         return _loc5_;
      }
      
      public static function §^"K§(param1:uint) : uint
      {
         var _loc3_:int = 0;
         var _loc2_:§&"3§ = §&%u§(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§!"_§.length - 1;
            return _loc2_.§!"_§[_loc3_];
         }
         return param1;
      }
      
      public static function §]%@§() : int
      {
         var _loc2_:§&!e§ = null;
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         for each(_loc2_ in reagents)
         {
            _loc1_++;
         }
         _loc3_ = Math.random() * _loc1_;
         _loc1_ = 0;
         for each(_loc2_ in reagents)
         {
            if(_loc1_ == _loc3_)
            {
               return _loc2_.getId();
            }
            _loc1_++;
         }
         return 0;
      }
   }
}

