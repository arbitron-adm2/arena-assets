package §@!i§
{
   import §"%H§.§'%u§;
   import §&"c§.§!!q§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §>%S§.§^!V§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.*;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.BuyRenameCharResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §1""§
   {
      
      §§push(§§findproperty(§1#V§));
      var _temp_73:* = new <int>[0,3,7,12,18,26,36,48,62,80,100,130,160,200,250,300,350,450,550,700,850,1050,1250,1500,1800,2200,2600,3100,3700,4400,5300,6300,7500,8900,10500,12400,14600,17100,20000,23500,27500,32000,37000,42500,49000,56000,64000,73000,83000,95000,108000,123000,139000,157000,177000,199000,224000,251000,281000,314000,350000,390000,430000,475000,525000,580000,640000,700000,765000,835000,910000,990000,1075000,1165000,1260000,1360000,1465000,1580000,1700000,1825000,1955000,2090000,2230000,2370000,2520000,2680000,2840000,3000000,3160000,3320000,3500000,3680000,3860000,4040000,4220000,4400000,4600000,4800000,5000000,5200000,5400000,5600000,5800000,6000000,6200000,6400000,6600000,6800000,7000000,7200000,7400000,7600000,7800000,8000000,8200000,8400000,8600000,8800000,9000000,9200000];
      
      private static const §1#V§:Vector.<int> = new <int>[0,3,7,12,18,26,36,48,62,80,100,130,160,200,250,300,350,450,550,700,850,1050,1250,1500,1800,2200,2600,3100,3700,4400,5300,6300,7500,8900,10500,12400,14600,17100,20000,23500,27500,32000,37000,42500,49000,56000,64000,73000,83000,95000,108000,123000,139000,157000,177000,199000,224000,251000,281000,314000,350000,390000,430000,475000,525000,580000,640000,700000,765000,835000,910000,990000,1075000,1165000,1260000,1360000,1465000,1580000,1700000,1825000,1955000,2090000,2230000,2370000,2520000,2680000,2840000,3000000,3160000,3320000,3500000,3680000,3860000,4040000,4220000,4400000,4600000,4800000,5000000,5200000,5400000,5600000,5800000,6000000,6200000,6400000,6600000,6800000,7000000,7200000,7400000,7600000,7800000,8000000,8200000,8400000,8600000,8800000,9000000,9200000];
      
      public static const §'$d§:Boolean = false;
      
      public static const §8# §:Boolean = true;
      
      public static const §%%`§:int = 500;
      
      public static const §-"l§:uint = 29;
      
      private static const §[r§:Vector.<§`#Q§> = new <§`#Q§>[new §`#Q§(§!#^§.KNIGHT_HELM + 4,1),new §`#Q§(§!#^§.KNIGHT_HELM + 3,2,10),new §`#Q§(§!#^§.KNIGHT_HELM + 2,11,50)];
      
      private static const §,%y§:Vector.<§`#Q§> = new <§`#Q§>[new §`#Q§(§!#^§.STRATEGIST_HAT + 4,1),new §`#Q§(§!#^§.STRATEGIST_HAT + 3,2,10),new §`#Q§(§!#^§.STRATEGIST_HAT + 2,11,50)];
      
      private static const §#&?§:Array = [{
         "wager":§-"P§.§&",§,
         "hats":§[r§
      },{
         "wager":§-"P§.§"#p§,
         "hats":§[r§
      },{
         "wager":§-"P§.§'$L§,
         "hats":§,%y§
      }];
      
      private static var § #?§:Array = [];
      
      public var §9#V§:int;
      
      public var nextLevel:int;
      
      public var §##'§:int = 0;
      
      public var §`$e§:int = 0;
      
      public var §-!$§:int = 0;
      
      public var §=!2§:int = 0;
      
      public var §;$G§:int = 0;
      
      public var §1#K§:int = 0;
      
      public function §1""§()
      {
         super();
      }
      
      public static function §0$>§(param1:int) : Vector.<§`#Q§>
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §#&?§)
         {
            if(_loc2_.wager == param1)
            {
               return _loc2_.hats;
            }
         }
         return null;
      }
      
      public static function §3F§() : Array
      {
         if(!§ #?§.length)
         {
            § #?§[§-"P§.§&",§] = new <§`#Q§>[new §`#Q§(§,$O§.KNIGHT_ELITE,1),new §`#Q§(§,$O§.KNIGHT_ACE,2,10),new §`#Q§(§,$O§.KNIGHT_MASTER,11,100)];
            § #?§[§-"P§.§"#p§] = new <§`#Q§>[new §`#Q§(§,$O§.WOLF_ELITE,1),new §`#Q§(§,$O§.WOLF_ACE,2,10),new §`#Q§(§,$O§.WOLF_MASTER,11,50)];
            §§push(§ #?§);
            §§push(§-"P§.§>!x§);
            var _temp_9:* = new <§`#Q§>[new §`#Q§(§,$O§.ASSASSIN_ELITE,1),new §`#Q§(§,$O§.ASSASSIN_ACE,2,10),new §`#Q§(§,$O§.ASSASSIN_MASTER,11,50)];
            §§pop()[§§pop()] = new <§`#Q§>[new §`#Q§(§,$O§.ASSASSIN_ELITE,1),new §`#Q§(§,$O§.ASSASSIN_ACE,2,10),new §`#Q§(§,$O§.ASSASSIN_MASTER,11,50)];
            § #?§[§-"P§.§"!0§] = new <§`#Q§>[new §`#Q§(§,$O§.HOCKEY_PLAYER_ELITE,1),new §`#Q§(§,$O§.HOCKEY_PLAYER_ACE,2,10),new §`#Q§(§,$O§.HOCKEY_PLAYER_MASTER,11,50)];
            § #?§[§-"P§.§'$L§] = new <§`#Q§>[new §`#Q§(§,$O§.MONK_ELITE,1),new §`#Q§(§,$O§.MONK_ACE,2,10),new §`#Q§(§,$O§.MONK_MASTER,11,50)];
            §§push(§ #?§);
            §§push(§-"P§.§,$^§);
            var _temp_17:* = new <§`#Q§>[new §`#Q§(§,$O§.BLACK_YETI,1),new §`#Q§(§,$O§.WHITE_YETI,2,10),new §`#Q§(§,$O§.BLUE_YETI,11,50)];
            §§pop()[§§pop()] = new <§`#Q§>[new §`#Q§(§,$O§.BLACK_YETI,1),new §`#Q§(§,$O§.WHITE_YETI,2,10),new §`#Q§(§,$O§.BLUE_YETI,11,50)];
         }
         return § #?§;
      }
      
      public static function §;$_§(param1:int) : Vector.<§`#Q§>
      {
         return §3F§()[param1];
      }
      
      public static function §@#f§(param1:int) : Boolean
      {
         var _loc2_:Vector.<§`#Q§> = null;
         var _loc5_:§`#Q§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = int(§3F§().length);
         while(_loc3_ < _loc4_)
         {
            _loc2_ = § #?§[_loc3_];
            if(_loc2_)
            {
               for each(_loc5_ in _loc2_)
               {
                  if(_loc5_.itemId == param1)
                  {
                     return true;
                  }
               }
            }
            _loc3_++;
         }
         return false;
      }
      
      public static function §=$S§(param1:int) : §1""§
      {
         var _loc2_:§1""§ = new §1""§();
         var _loc3_:int = §#!F§(param1);
         var _loc4_:int = §6#'§(param1);
         _loc2_.§=!2§ = param1;
         _loc2_.§;$G§ = §1#V§[_loc3_];
         _loc2_.§1#K§ = §1#V§[_loc4_];
         _loc2_.nextLevel = _loc4_;
         if(_loc4_ > 1 && _loc4_ < §1#V§.length)
         {
            _loc2_.§9#V§ = §#!F§(param1);
            _loc2_.§##'§ = param1 - §1#V§[_loc3_];
            _loc2_.§`$e§ = §1#V§[_loc4_] - param1;
            _loc2_.§-!$§ = §1#V§[_loc4_] - §1#V§[_loc3_];
         }
         else
         {
            _loc2_.§9#V§ = §#!F§(param1);
         }
         return _loc2_;
      }
      
      public static function getMaxLevel() : int
      {
         return §1#V§.length - 1;
      }
      
      public static function §#!F§(param1:int) : int
      {
         var _loc2_:int = 1;
         var _loc3_:int = int(§1#V§.length);
         while(_loc2_ < _loc3_)
         {
            if(§1#V§[_loc2_] > param1)
            {
               return _loc2_ - 1;
            }
            _loc2_++;
         }
         return getMaxLevel();
      }
      
      public static function §6#'§(param1:int) : int
      {
         var _loc2_:int = §#!F§(param1);
         var _loc3_:int = getMaxLevel();
         return _loc2_ < _loc3_ ? int(_loc2_ + 1) : _loc3_;
      }
   }
}

