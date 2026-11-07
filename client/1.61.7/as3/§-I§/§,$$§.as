package §-I§
{
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §%"1§.§=#?§;
   import §%$[§.§1$J§;
   import §&"c§.§5$n§;
   import §'!Z§.§2!H§;
   import §-%B§.§-"o§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §4!K§.*;
   import §4%_§.§3§;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §6"'§.§&"3§;
   import §6%2§.§'"Y§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §<"?§.*;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$7§.§`%2§;
   import §?%J§.§ 2§;
   import §?%J§.§="b§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §,$$§
   {
      
      public function §,$$§()
      {
         super();
      }
      
      public static function §5#s§(param1:§+%]§) : §;#_§
      {
         var _loc2_:UserProfile = null;
         var _loc6_:§;#_§ = null;
         var _loc7_:Array = null;
         var _loc8_:uint = 0;
         var _loc9_:int = 0;
         var _loc10_:§;#_§ = null;
         var _loc11_:Object = null;
         var _loc12_:int = 0;
         var _loc13_:Object = null;
         var _loc14_:BackpackItem = null;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:BackpackItem = null;
         var _loc20_:BackpackItem = null;
         var _loc21_:§&"3§ = null;
         var _loc22_:Vector.<§;#_§> = null;
         var _loc23_:§#$s§ = null;
         var _loc24_:int = 0;
         _loc2_ = param1.squad.§?"#§();
         var _loc3_:§;#X§ = _loc2_.getBattleBackpack();
         var _loc4_:Boolean = param1.squad.§'"H§() < 2;
         var _loc5_:Array = [];
         if(_loc3_.§8$r§())
         {
            _loc12_ = _loc2_.getLevel();
            _loc13_ = §<$c§.§2$F§();
            for each(_loc6_ in _loc13_)
            {
               if(_loc6_.§[#F§())
               {
                  _loc14_ = §1!S§.§@!&§(_loc6_.getRefId(),_loc2_.getBattleBackpack());
               }
               _loc15_ = _loc3_.§3"3§(_loc6_.getId()) == 0;
               _loc16_ = _loc12_ >= _loc6_.§ n§() && _loc12_ <= _loc6_.§1"K§();
               _loc17_ = _loc14_ ? _loc14_.getCount() == 0 : _loc3_.§3"3§(_loc6_.getRefId()) == 0;
               _loc18_ = !_loc4_ || !_loc6_.property["dropNotForSingleUnit"];
               if(_loc15_ && _loc16_ && _loc17_ && _loc18_)
               {
                  _loc5_.push(_loc6_);
               }
            }
         }
         else
         {
            for each(_loc19_ in _loc3_.§^%Z§())
            {
               if(!_loc19_.isEmpty())
               {
                  _loc5_.push(_loc19_.getRecord());
               }
            }
         }
         _loc7_ = [];
         _loc8_ = 0;
         for each(_loc6_ in _loc5_)
         {
            _loc8_ += _loc6_.§!$R§();
            _loc7_.push({
               "weightThreshold":_loc8_,
               "rec":_loc6_
            });
         }
         _loc9_ = §8"%§.randomSeed.§,!q§(1,_loc8_);
         for each(_loc11_ in _loc7_)
         {
            _loc10_ = _loc11_.rec;
            if(_loc9_ <= _loc11_.weightThreshold)
            {
               _loc20_ = §1!S§.§@!&§(_loc10_.getId(),_loc2_.§3%^§());
               if(_loc20_)
               {
                  _loc21_ = §1@§.§&%u§(_loc10_.getId());
                  if(_loc20_.getId() != _loc21_.§?!t§)
                  {
                     _loc22_ = new Vector.<§;#_§>();
                     _loc23_ = §1!S§.§?!4§(_loc20_.getId());
                     for each(_loc24_ in _loc21_.§!"_§)
                     {
                        if(_loc24_ > §'"Y§.§;9§ && _loc23_.level < §1!S§.§?!4§(_loc24_).level)
                        {
                           _loc22_[_loc22_.length] = §<$c§.§ !=§(_loc24_);
                        }
                     }
                     if(_loc22_.length > 0)
                     {
                        _loc10_ = _loc22_[§8"%§.randomSeed.§,!q§(0,_loc22_.length - 1)];
                     }
                     else
                     {
                        _loc10_ = §<$c§.§ !=§(_loc20_.getId());
                     }
                  }
               }
               break;
            }
         }
         return _loc10_;
      }
   }
}

