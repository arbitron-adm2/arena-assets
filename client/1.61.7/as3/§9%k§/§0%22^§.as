package §9%k§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §&#h§.§,#;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §8$V§.*;
   import §<!^§.§9"§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §0"^§
   {
      
      public static const §]%,§:int = 4;
      
      public static const §+%l§:uint = 15;
      
      private static const §'!@§:uint = 70;
      
      private static const §=&#§:Array = [0.2,0.4,0.6,1];
      
      public static const §4"f§:uint = 2;
      
      public static const §#$]§:uint = 3;
      
      public static const §%#b§:uint = 4;
      
      §§push(§§findproperty(§]!A§));
      var _temp_14:* = new <§#"h§>[new §#"h§(0,-1,2,§#"h§.§-%X§(10,4000,300,300,8,0,0)),new §#"h§(1,700,1.8,§#"h§.§-%X§(0,3000,250,250,8,0,0)),new §#"h§(2,650,1.6,§#"h§.§-%X§(0,3000,200,200,6,2,0)),new §#"h§(3,600,1.4,§#"h§.§-%X§(0,3000,150,150,4,4,0)),new §#"h§(4,550,1.2,§#"h§.§-%X§(0,3000,130,130,2,6,0)),new §#"h§(5,500,1,§#"h§.§-%X§(0,3000,110,110,6,0,0)),new §#"h§(6,450,0.5,§#"h§.§-%X§(0,2000,90,90,6,0,0)),new §#"h§(7,400,0.5,§#"h§.§-%X§(0,2000,70,70,4,2,0)),new §#"h§(8,350,0.5,§#"h§.§-%X§(0,2000,60,60,2,4,0)),new §#"h§(9,300,0.5,§#"h§.§-%X§(0,2000,50,50,0,6,0)),new §#"h§(10,250,0.5,§#"h§.§-%X§(0,2000,40,40,0,4,2)),new §#"h§(11,200,0.25,§#"h§.§-%X§(0,1000,30,30,0,4,2)),new §#"h§(12,150,0.25,§#"h§.§-%X§(0,1000,25,25,0,2,4)),new §#"h§(13,100,0.25,§#"h§.§-%X§(0,1000,20,20,0,4,0)),new §#"h§(14,70,0.25,§#"h§.§-%X§(0,1000,15,15,0,2,2)),new §#"h§(15,50,0.25,§#"h§.§-%X§(0,1000,10,10,0,0,4)),new §#"h§(16,40,0,[]),new §#"h§(17,30,0,[]),new §#"h§(18,20,0,[]),new §#"h§(19,15,0,[]),new §#"h§(20,10,0,[])];
      
      private static const §]!A§:Vector.<§#"h§> = new <§#"h§>[new §#"h§(0,-1,2,§#"h§.§-%X§(10,4000,300,300,8,0,0)),new §#"h§(1,700,1.8,§#"h§.§-%X§(0,3000,250,250,8,0,0)),new §#"h§(2,650,1.6,§#"h§.§-%X§(0,3000,200,200,6,2,0)),new §#"h§(3,600,1.4,§#"h§.§-%X§(0,3000,150,150,4,4,0)),new §#"h§(4,550,1.2,§#"h§.§-%X§(0,3000,130,130,2,6,0)),new §#"h§(5,500,1,§#"h§.§-%X§(0,3000,110,110,6,0,0)),new §#"h§(6,450,0.5,§#"h§.§-%X§(0,2000,90,90,6,0,0)),new §#"h§(7,400,0.5,§#"h§.§-%X§(0,2000,70,70,4,2,0)),new §#"h§(8,350,0.5,§#"h§.§-%X§(0,2000,60,60,2,4,0)),new §#"h§(9,300,0.5,§#"h§.§-%X§(0,2000,50,50,0,6,0)),new §#"h§(10,250,0.5,§#"h§.§-%X§(0,2000,40,40,0,4,2)),new §#"h§(11,200,0.25,§#"h§.§-%X§(0,1000,30,30,0,4,2)),new §#"h§(12,150,0.25,§#"h§.§-%X§(0,1000,25,25,0,2,4)),new §#"h§(13,100,0.25,§#"h§.§-%X§(0,1000,20,20,0,4,0)),new §#"h§(14,70,0.25,§#"h§.§-%X§(0,1000,15,15,0,2,2)),new §#"h§(15,50,0.25,§#"h§.§-%X§(0,1000,10,10,0,0,4)),new §#"h§(16,40,0,[]),new §#"h§(17,30,0,[]),new §#"h§(18,20,0,[]),new §#"h§(19,15
      ,0,[]),new §#"h§(20,10,0,[])];
      
      private static const §%$h§:Vector.<§`#Q§> = new <§`#Q§>[new §`#Q§(§!#^§.WOLF_PELT + 6,1),new §`#Q§(§!#^§.WOLF_PELT + 4,2,10),new §`#Q§(§!#^§.WOLF_PELT + 2,11,100)];
      
      private static const §7%l§:Vector.<§`#Q§> = new <§`#Q§>[new §`#Q§(§!#^§.SPORTS_CAP + 6,1),new §`#Q§(§!#^§.SPORTS_CAP + 4,2,10),new §`#Q§(§!#^§.SPORTS_CAP + 2,11,100)];
      
      private static const §;%8§:Vector.<§`#Q§> = new <§`#Q§>[new §`#Q§(§!#^§.HOCKEY_HELM + 6,1),new §`#Q§(§!#^§.HOCKEY_HELM + 4,2,10),new §`#Q§(§!#^§.HOCKEY_HELM + 2,11,100)];
      
      private static const §#&?§:Array = [{
         "month":0,
         "hats":§7%l§
      },{
         "month":1,
         "hats":§;%8§
      },{
         "month":2,
         "hats":§%$h§
      },{
         "month":3,
         "hats":§7%l§
      },{
         "month":4,
         "hats":§;%8§
      },{
         "month":5,
         "hats":§%$h§
      },{
         "month":6,
         "hats":§7%l§
      },{
         "month":7,
         "hats":§;%8§
      },{
         "month":8,
         "hats":§%$h§
      },{
         "month":9,
         "hats":§7%l§
      },{
         "month":10,
         "hats":§;%8§
      },{
         "month":11,
         "hats":§%$h§
      }];
      
      public function §0"^§()
      {
         super();
      }
      
      public static function §@$0§(param1:uint) : Array
      {
         return param1 <= §+%l§ ? §]!A§[param1].rewards : [];
      }
      
      public static function §&$,§(param1:uint) : int
      {
         return param1 < §]!A§.length ? §]!A§[param1].pointsToNext : -1;
      }
      
      public static function §5>§(param1:int) : §=k§
      {
         var _loc3_:§#"h§ = null;
         var _loc2_:* = int(§]!A§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = §]!A§[_loc2_];
            if(param1 <= _loc3_.pointsToNext)
            {
               break;
            }
            param1 -= _loc3_.pointsToNext;
            _loc2_--;
         }
         if(_loc2_ > 0)
         {
            return §=k§.create(_loc2_,param1);
         }
         return new §=k§();
      }
      
      public static function §]"Q§(param1:uint) : int
      {
         var _loc4_:§#"h§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(§]!A§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = §]!A§[_loc3_];
            if(param1 == _loc4_.rank)
            {
               break;
            }
            if(_loc4_.rank > 0)
            {
               _loc2_ += _loc4_.pointsToNext;
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public static function §3$m§() : Number
      {
         return §]!A§[0].bonusRating;
      }
      
      public static function §8$M§(param1:int) : Number
      {
         var _loc2_:uint = 0;
         if(param1 >= 0)
         {
            _loc2_ = uint(§5>§(param1).rank);
            return §]!A§[_loc2_].bonusRating;
         }
         return -1;
      }
      
      public static function §9!c§(param1:uint, param2:uint, param3:uint) : Boolean
      {
         var _loc4_:Number = NaN;
         if(param2 > 4 || param2 < 1)
         {
            param2 = 1;
         }
         _loc4_ = Number(§=&#§[param2 - 1]);
         var _loc5_:uint = uint(Math.round(§'!@§ * _loc4_ * Math.pow(0.03 * param1 + 0.1,1.44)));
         var _loc6_:uint = uint(Math.ceil(14 - 2.6 * Math.log(param3 + 2)));
         return _loc5_ < _loc6_;
      }
      
      public static function §2$B§() : Vector.<§`#Q§>
      {
         var _loc1_:int = §0#2§.§'#`§(§0#2§.§@&6§()).getMonth();
         return §#&?§[_loc1_].hats;
      }
      
      public static function §`W§(param1:int) : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:Vector.<§`#Q§> = null;
         var _loc4_:§`#Q§ = null;
         loop0:
         for each(_loc2_ in §#&?§)
         {
            _loc3_ = _loc2_.hats;
            var _loc7_:int = 0;
            var _loc8_:* = _loc3_;
            do
            {
               for each(_loc4_ in _loc8_)
               {
               }
               continue loop0;
            }
            while(_loc4_.itemId != param1);
            return true;
         }
         return false;
      }
      
      public static function §`%7§(param1:int) : String
      {
         if(param1 == 0)
         {
            return §+"'§.§4"U§;
         }
         if(param1 >= 1 && param1 <= 5)
         {
            return §+"'§.§>$Z§;
         }
         if(param1 >= 6 && param1 <= 10)
         {
            return §+"'§.§6%S§;
         }
         if(param1 >= 11 && param1 <= 15)
         {
            return §+"'§.§+$b§;
         }
         return "";
      }
      
      public static function §,&;§() : void
      {
         var _loc3_:§#"h§ = null;
         var _loc1_:int = 0;
         var _loc2_:* = int(§]!A§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = §]!A§[_loc2_];
            if(_loc3_.rank > 0)
            {
               _loc1_ += _loc3_.pointsToNext;
            }
            _loc2_--;
         }
      }
      
      public static function §6"G§() : void
      {
         var _loc2_:§=k§ = null;
         var _loc3_:int = 0;
         §,&;§();
         var _loc1_:Array = [5436,5435,5434,4735,25,11,10,9];
         for each(_loc3_ in _loc1_)
         {
            _loc2_ = §5>§(_loc3_);
         }
      }
   }
}

