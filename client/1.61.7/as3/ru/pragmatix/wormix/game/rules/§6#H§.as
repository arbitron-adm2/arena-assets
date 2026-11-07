package ru.pragmatix.wormix.game.rules
{
   import § !8§.§`!d§;
   import § $q§.§3U§;
   import § K§.§@$b§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §-&5§.*;
   import §-@§.§8"k§;
   import §0%z§.§+y§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4#`§.*;
   import §6"'§.§9$Z§;
   import §7"Q§.§0$L§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9![§.§^§;
   import §;#O§.§+%7§;
   import §<%E§.§,$2§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §=#g§.*;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §=&6§.§7$C§;
   import §?"[§.§>"T§;
   import §?"j§.*;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[#q§.§="5§;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§3+§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.facebook.controller.§8#@§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   
   public class §6#H§
   {
      
      private static const §?%F§:int = 700;
      
      private static const §4&#§:int = 120;
      
      private static const §`"8§:Array = [§+%]§.LEFT,§+%]§.RIGHT];
      
      public function §6#H§()
      {
         super();
         throw new Error("GameRulesUtil can\'t be instantiated");
      }
      
      public static function §>#S§(param1:UserProfile, param2:uint) : Vector.<UserProfile>
      {
         var _loc5_:UserProfile = null;
         var _loc6_:uint = 0;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc3_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         var _loc4_:Vector.<UserProfile> = param1.§7$F§();
         if(_loc4_.length <= param2)
         {
            for each(_loc5_ in _loc4_)
            {
               _loc3_.push(_loc5_);
            }
         }
         else
         {
            _loc6_ = 0;
            _loc7_ = false;
            _loc8_ = 0;
            _loc9_ = int(_loc4_.length);
            while(_loc8_ < _loc9_)
            {
               if(UserProfile(_loc4_[_loc8_]).equals(param1))
               {
                  _loc7_ = true;
               }
               if(!(!_loc7_ && _loc6_ == param2 - 1))
               {
                  var _loc10_:uint;
                  _loc3_[_loc10_ = _loc6_++] = _loc4_[_loc8_];
                  if(_loc6_ == param2)
                  {
                     break;
                  }
               }
               _loc8_++;
            }
         }
         return _loc3_;
      }
      
      public static function §0%M§(param1:UserProfile, param2:String, param3:uint, param4:§=$G§, param5:uint, param6:Vector.<UserProfile>) : §"Z§
      {
         var _loc8_:§+%]§ = null;
         var _loc9_:UserProfile = null;
         var _loc10_:§+%]§ = null;
         var _loc7_:§"Z§ = new §"Z§(param2,param3,param4,param5);
         _loc7_.§1!Y§ = param6.length;
         for each(_loc9_ in param6)
         {
            _loc10_ = Race.create(_loc9_,0,0);
            _loc10_.lastWeapon = §'%_§.§5a§(param1);
            if(param1.getId() == _loc9_.getId() && !_loc8_)
            {
               _loc8_ = _loc10_;
            }
            _loc7_.addUnit(_loc10_);
            _loc7_.§2!E§(param1);
         }
         _loc8_.§1%f§();
         return _loc7_;
      }
      
      public static function §0&§(param1:Vector.<§"Z§>, param2:§9$Z§, param3:uint) : void
      {
         var _loc4_:Array = null;
         var _loc7_:Vector.<Vector.<§+%]§>> = null;
         var _loc8_:§"Z§ = null;
         _loc4_ = §8"k§.§;"&§(param2,param3);
         var _loc5_:Array = _loc4_[0];
         var _loc6_:Array = _loc4_[1];
         if(param1.length == 2)
         {
            §@!<§(param1[0],param1[1],_loc5_,_loc6_,param3);
         }
         else
         {
            _loc7_ = new Vector.<Vector.<§+%]§>>();
            for each(_loc8_ in param1)
            {
               _loc7_.push(_loc8_.§1!n§());
            }
            §7#2§(_loc7_,_loc5_,_loc6_,param3);
         }
      }
      
      public static function §,$g§(param1:§<$Z§, param2:§3$z§) : §4$z§
      {
         var _loc3_:§4$z§ = new §4$z§();
         _loc3_.result = param1;
         _loc3_.status = param2;
         _loc3_.§-!K§ = §<$!§.MEDIUM;
         return _loc3_;
      }
      
      private static function §@!<§(param1:§"Z§, param2:§"Z§, param3:Array, param4:Array, param5:uint) : void
      {
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc16_:int = 0;
         var _loc6_:§,'§ = new §,'§(param5);
         var _loc7_:Vector.<§+%]§> = param1.§1!n§();
         var _loc8_:Vector.<§+%]§> = param2.§1!n§();
         setPosition(_loc7_[0],param3[0],_loc6_);
         var _loc9_:int = int.MAX_VALUE;
         var _loc10_:int = 0;
         _loc11_ = 1;
         while(_loc11_ < param3.length)
         {
            _loc16_ = Math.abs(§^$y§.distance(param3[0].x - param3[_loc11_].x,param3[0].y - param3[_loc11_].y) - §?%F§);
            if(_loc9_ > _loc16_)
            {
               _loc9_ = _loc16_;
               _loc10_ = _loc11_;
            }
            _loc11_++;
         }
         setPosition(_loc8_[0],param3[_loc10_],_loc6_);
         param3.splice(_loc10_,1);
         param3.shift();
         _loc12_ = int(param1.§&!G§().§##,§());
         _loc13_ = int(param2.§&!G§().§##,§());
         var _loc14_:Boolean = _loc12_ - _loc13_ > §4&#§;
         var _loc15_:Boolean = _loc13_ - _loc12_ > §4&#§;
         _loc11_ = 1;
         while(_loc11_ < Math.max(_loc7_.length,_loc8_.length))
         {
            if(_loc7_.length > _loc11_ || _loc8_.length > _loc11_)
            {
               if(_loc7_.length > _loc11_ && _loc8_.length > _loc11_)
               {
                  setPosition(_loc7_[_loc11_],param3.shift(),_loc6_);
                  setPosition(_loc8_[_loc11_],param3.shift(),_loc6_);
               }
               else if(_loc7_.length > _loc11_)
               {
                  setPosition(_loc7_[_loc11_],_loc14_ ? param4.shift() : param3.shift(),_loc6_);
               }
               else
               {
                  setPosition(_loc8_[_loc11_],_loc15_ ? param4.shift() : param3.shift(),_loc6_);
               }
            }
            _loc11_++;
         }
      }
      
      private static function §7#2§(param1:Vector.<Vector.<§+%]§>>, param2:Array, param3:Array, param4:uint) : void
      {
         var _loc7_:Vector.<§+%]§> = null;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc5_:§,'§ = new §,'§(param4);
         var _loc6_:uint = param1[0].length;
         for each(_loc7_ in param1)
         {
            if(_loc7_.length > _loc6_)
            {
               _loc6_ = _loc7_.length;
            }
         }
         _loc8_ = param2.concat(param3);
         _loc9_ = 0;
         while(_loc9_ < _loc6_)
         {
            _loc10_ = 0;
            while(_loc10_ < param1.length)
            {
               if(_loc9_ < param1[_loc10_].length)
               {
                  setPosition(param1[_loc10_][_loc9_],_loc8_.shift(),_loc5_);
               }
               _loc10_++;
            }
            _loc9_++;
         }
      }
      
      private static function setPosition(param1:§+%]§, param2:Point, param3:§,'§ = null) : void
      {
         var findPos:Function;
         var checkDistance:int = 0;
         var distance:int = 0;
         var direction:int = 0;
         var unit:§+%]§ = param1;
         var pos:Point = param2;
         var randomSeed:§,'§ = param3;
         if(randomSeed)
         {
            findPos = function():Boolean
            {
               var _loc1_:Vector.<Point> = new <Point>[pos];
               var _loc2_:int = 100;
               var _loc3_:Point = pos;
               var _loc4_:* = 0;
               do
               {
                  _loc3_ = §3+§.§8"Q§(_loc3_,direction,_loc2_);
                  if(_loc3_)
                  {
                     _loc1_.push(_loc3_);
                  }
               }
               while(Boolean(_loc3_) && _loc4_++ < checkDistance);
               var _loc5_:Point = _loc1_[_loc1_.length - 1];
               if(§>#9§.unit(_loc5_.x + direction,_loc5_.y) || _loc4_ == checkDistance)
               {
                  pos = _loc1_.length > distance ? _loc1_[distance - 1] : _loc5_;
                  return true;
               }
               return false;
            };
            checkDistance = 100;
            distance = randomSeed.§,!q§(1,50);
            direction = int(§`"8§[randomSeed.§,!q§(0,1)]);
            while(!§>#9§.unit(pos.x,pos.y))
            {
               pos.y += 1;
            }
            --pos.y;
            if(!findPos())
            {
               direction = direction == §+%]§.LEFT ? §+%]§.RIGHT : §+%]§.LEFT;
               findPos();
            }
         }
         unit.x = pos.x;
         unit.y = pos.y;
         §-#M§.§0"g§(unit);
      }
   }
}

