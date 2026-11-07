package §5#`§
{
   import § !P§.§<#q§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§@#s§;
   import §+%S§.§[&;§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §1&-§.§'$y§;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §2o§.§]#@§;
   import §4!!§.§!%n§;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §=;§.§@§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §?o§.StuffedBouncingGrenade;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import §`%&§.§5$1§;
   import avmplus.getQualifiedClassName;
   import config.§;"I§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.SearchTheHouseResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7%g§
   {
      
      private static const § %5§:Vector.<int> = new <int>[§+%z§.BAZOOKA,§+%z§.GRENADE,§+%z§.RIFLE];
      
      private static const §#"f§:Vector.<int> = new <int>[§+%z§.§0!m§];
      
      private static const §-_§:ColorTransform = new ColorTransform(1,1,1,1,-50,-50,-50);
      
      private static const §]!e§:ColorTransform = new ColorTransform(1,1,1,1,50,50,50);
      
      public function §7%g§()
      {
         super();
      }
      
      public static function §3%E§(param1:int) : Boolean
      {
         return §#"f§.indexOf(param1) == -1;
      }
      
      public static function §3"b§(param1:§+%]§, param2:Vector.<Point>, param3:Boolean, param4:uint = 0) : Boolean
      {
         var _loc5_:Point = null;
         var _loc6_:MovieClip = null;
         var _loc10_:Boolean = false;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:Vector.<§&"T§> = null;
         var _loc16_:Vector.<§&"T§> = null;
         _loc6_ = §6#A§.§!&6§("GirderH");
         _loc6_.width = 40;
         var _loc7_:int = _loc6_.width * 0.5;
         var _loc8_:int = _loc6_.height * 0.5;
         _loc6_.rotation = param3 ? 0 : 90;
         var _loc9_:uint = param2.length - 1;
         while(_loc9_ > 0)
         {
            _loc10_ = §<H§.§5"]§(param2[_loc9_].x,param2[_loc9_].y,§<H§.§-#C§ + _loc8_).length > 0;
            if(!_loc10_)
            {
               _loc11_ = param3 ? int(param2[_loc9_].x + _loc7_ + 2) : int(param2[_loc9_].x);
               _loc12_ = param3 ? int(param2[_loc9_].x - _loc7_ - 2) : int(param2[_loc9_].x);
               _loc13_ = param3 ? int(param2[_loc9_].y) : int(param2[_loc9_].y + _loc7_ + 2);
               _loc14_ = param3 ? int(param2[_loc9_].y) : int(param2[_loc9_].y - _loc7_ - 2);
               if(§>#9§.point(_loc11_,_loc13_) && §>#9§.point(_loc12_,_loc14_))
               {
                  _loc5_ = new Point(param2[_loc9_].x,param2[_loc9_].y);
                  break;
               }
            }
            _loc9_--;
         }
         if(_loc5_)
         {
            Application.scene.§+!K§(_loc6_,_loc5_.x,_loc5_.y);
            §@%;§.play(§`!v§.§=%N§);
            new §9!1§(param1,_loc5_.x,_loc5_.y,§5$n§.§<#=§(null,param4,_loc7_ + 10,_loc7_),param3);
            _loc15_ = Application.scene.§@$I§.§;%a§.§"L§([§;$n§]);
            _loc16_ = §<H§.§3%'§(_loc5_.x,_loc5_.y,_loc7_ + 5,_loc15_);
            §!#"§(_loc16_);
            return true;
         }
         return false;
      }
      
      public static function §!#"§(param1:Vector.<§&"T§>) : void
      {
         var pos:Dictionary = null;
         var go:§&"T§ = null;
         var objs:Vector.<§&"T§> = param1;
         pos = new Dictionary();
         for each(go in objs)
         {
            pos[go] = new Point(go.x,go.y);
         }
         §8$a§.§%!E§(150,function():void
         {
            var _loc1_:§&"T§ = null;
            for each(_loc1_ in objs)
            {
               if(Boolean(_loc1_ && !_loc1_.disposed && !_loc1_.stable) && Boolean(_loc1_.x == pos[_loc1_].x) && _loc1_.y == pos[_loc1_].y)
               {
                  _loc1_.setSpeedXY(0,0);
                  _loc1_.stable = true;
               }
            }
         });
      }
      
      public static function §,O§(param1:int, param2:int, param3:int, param4:uint = 2) : void
      {
         var _loc6_:§+%]§ = null;
         var _loc5_:Vector.<§+%]§> = §<H§.§5"]§(param1,param2,param3);
         for each(_loc6_ in _loc5_)
         {
            if(!_loc6_.disposed)
            {
               _loc6_.buffs.place(new §[&;§(param4));
            }
         }
      }
      
      public static function §>!%§(param1:§+%]§, param2:§+%]§, param3:uint = 0, param4:Boolean = true) : void
      {
         if(param1.disposed)
         {
            return;
         }
         if(param3 == 0)
         {
            param3 = § !!§.§%!y§ + (param2 ? param2.bonuses.getStatValue(Bonus.POISONING_ADDITION) : 0);
         }
         var _loc5_:§ !!§ = param1.buffs.getBuff(§ !!§.NAME) as § !!§;
         if(_loc5_)
         {
            param3 = Math.max(_loc5_.§8#z§(),param3);
            param1.buffs.§6C§(§ !!§.NAME);
         }
         var _loc6_:int = param1.bonuses.getStatValue(Bonus.POISONING_REDUCTION);
         param3 = Math.max(1,param3 + _loc6_);
         param1.buffs.place(new § !!§(param2,param3));
         if(Boolean(param4 && param2 && param2.squad.isLocal() && !param2.§+&,§(param1)) && Boolean(param2.record.getRace().getId() == §;"I§.§+&8§) && (!_loc5_ || _loc5_.§8#z§() != param3))
         {
            §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§@$?§);
         }
      }
      
      public static function §,J§(param1:§+%]§) : void
      {
         var _loc2_:§'$y§ = §'$y§(param1.buffs.getBuff(§'$y§.NAME));
         if(_loc2_)
         {
            _loc2_.§[$L§();
         }
      }
      
      public static function §8!f§(param1:Vector.<§+%]§>, param2:int, param3:int, param4:Boolean = false, param5:Vector.<int> = null) : Dictionary
      {
         var _loc8_:§+%]§ = null;
         var _loc9_:UserProfile = null;
         var _loc10_:Vector.<BackpackItem> = null;
         var _loc11_:Vector.<int> = null;
         var _loc12_:Vector.<int> = null;
         var _loc13_:Vector.<BackpackItem> = null;
         var _loc14_:BackpackItem = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         if(!param5)
         {
            param5 = § %5§;
         }
         var _loc6_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         var _loc7_:Dictionary = new Dictionary();
         for each(_loc8_ in param1)
         {
            _loc7_[_loc8_] = {
               "unit":_loc8_,
               "weapons":new Vector.<int>(0),
               "delays":new Vector.<int>(0)
            };
            _loc9_ = _loc8_.squad.§?"#§();
            if(!_loc8_.squad.isAi() && _loc6_.indexOf(_loc9_) == -1)
            {
               _loc10_ = new Vector.<BackpackItem>(0);
               _loc11_ = new Vector.<int>(0);
               _loc12_ = new Vector.<int>(0);
               _loc13_ = _loc9_.getBattleBackpack().getOrderedWeapons();
               for each(_loc14_ in _loc13_)
               {
                  if(Boolean(_loc14_) && Boolean(!_loc14_.isEmpty()) && (!param5 || param5.indexOf(§1!S§.§[!r§(_loc14_.getId())) == -1))
                  {
                     _loc10_.push(_loc14_);
                     if(param4 && _loc14_.§1!9§)
                     {
                        _loc11_.push(_loc14_.getId());
                     }
                  }
               }
               _loc15_ = 0;
               while(_loc15_ < param2)
               {
                  if(_loc11_.length < _loc10_.length)
                  {
                     do
                     {
                        _loc16_ = §8"%§.randomSeed.§,!q§(0,_loc10_.length - 1);
                     }
                     while(_loc11_.indexOf(_loc10_[_loc16_].getId()) != -1);
                     _loc17_ = Math.max(0,_loc10_[_loc16_].§&">§());
                     _loc10_[_loc16_].§=%;§(param3 + _loc17_);
                     _loc11_.push(_loc10_[_loc16_].getId());
                     _loc12_.push(param3);
                  }
                  _loc15_++;
               }
               _loc6_.push(_loc9_);
               _loc7_[_loc8_].weapons = _loc11_;
               _loc7_[_loc8_].cooldowns = _loc12_;
            }
         }
         return _loc7_;
      }
      
      public static function §`%i§(param1:§+%]§, param2:Vector.<int>, param3:Vector.<int>, param4:Boolean = true) : void
      {
         var _loc6_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:§;#_§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:MovieClip = null;
         var _loc16_:String = null;
         var _loc17_:MovieClip = null;
         if(!§8"%§.§&S§.§,$r§())
         {
            return;
         }
         var _loc5_:int = §@#3§.§;%5§;
         _loc6_ = param2.length;
         var _loc7_:Number = _loc6_ * 0.5;
         var _loc8_:int = param1.height * (param4 ? -3 : 0.5);
         var _loc9_:Number = 0.5 * (param4 ? -0.5 : 1);
         var _loc10_:String = param4 ? "+" : "-";
         var _loc11_:int = 0;
         while(_loc11_ < _loc6_)
         {
            _loc12_ = _loc5_ * (_loc11_ - _loc7_) + 5 * _loc11_;
            _loc13_ = §<$c§.§ !=§(param2[_loc11_]);
            _loc14_ = §6#A§.§!&6§(_loc13_.getMenuIcon());
            §`o§.§7!S§(_loc14_,_loc5_,_loc5_);
            _loc14_.transform.colorTransform = param4 ? §-_§ : §]!e§;
            _loc15_ = §6#A§.§!&6§(§+"'§.§3!G§);
            _loc16_ = _loc10_ + param3[_loc11_].toString();
            §7&5§.§?$k§(TextField(_loc15_.getChildByName("delayText")),_loc16_);
            _loc17_ = new MovieClip();
            _loc17_.addChild(_loc14_);
            _loc17_.addChild(_loc15_);
            §1"-§.§[%4§(_loc17_,param1.x + _loc12_,param1.y + _loc8_,_loc5_ + 20,80,_loc9_);
            _loc11_++;
         }
      }
      
      public static function §6!b§(param1:§+%]§, param2:Vector.<int>, param3:Vector.<int>) : void
      {
         var _loc6_:BackpackItem = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc4_:UserProfile = param1.squad.§?"#§();
         if(param1.squad.isAi() || !_loc4_)
         {
            return;
         }
         var _loc5_:Vector.<BackpackItem> = _loc4_.getBattleBackpack().getOrderedWeapons();
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_)
            {
               _loc7_ = 0;
               while(_loc7_ < param2.length)
               {
                  if(param2[_loc7_] == _loc6_.getId())
                  {
                     _loc8_ = Math.max(-1,_loc6_.§&">§());
                     _loc6_.§=%;§(param3[_loc7_] + _loc8_);
                     _loc7_ = int(param2.length);
                  }
                  _loc7_++;
               }
            }
         }
      }
      
      public static function §-#R§(param1:§+%]§, param2:int, param3:Vector.<int>) : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc4_:Vector.<int> = new Vector.<int>(0);
         param3 = §9"K§(param1,param3,false);
         for each(_loc5_ in param3)
         {
            _loc4_.push(param2);
         }
         if(param3.length)
         {
            §6!b§(param1,param3,_loc4_);
            for each(_loc6_ in _loc4_)
            {
               _loc6_++;
            }
            §`%i§(param1,param3,_loc4_);
         }
      }
      
      public static function §9"K§(param1:§+%]§, param2:Vector.<int>, param3:Boolean = true) : Vector.<int>
      {
         var _loc6_:BackpackItem = null;
         var _loc4_:§;#X§ = param1.squad.§?"#§().getBattleBackpack();
         var _loc5_:* = int(param2.length - 1);
         while(_loc5_ > -1)
         {
            var _temp_1:* = _loc4_.§8&E§(param2[_loc5_]);
            _loc6_ = _loc4_.§8&E§(param2[_loc5_]);
            if(!_loc6_ || _loc6_.isEmpty() || _loc6_.§&">§() != -1 && !param3)
            {
               param2.splice(_loc5_,1);
            }
            _loc5_--;
         }
         return param2;
      }
      
      public static function §1E§(param1:§+%]§, param2:Function, param3:uint = 1) : void
      {
         var dummy:§&"T§ = null;
         var count:uint = 0;
         var onDisposed:Function = null;
         var onSink:Function = null;
         var onCollision:Function = null;
         var unit:§+%]§ = param1;
         var onCollideApply:Function = param2;
         var collisions:uint = param3;
         onDisposed = function(param1:Event):void
         {
            stopDummy();
         };
         onSink = function(param1:Event):void
         {
            stopDummy();
         };
         onCollision = function(param1:CollisionEvent):void
         {
            if(count < collisions && !unit.disposed)
            {
               onCollideApply(unit,param1);
               ++count;
            }
            else
            {
               stopDummy();
            }
         };
         var stopDummy:Function = function():void
         {
            if(unit)
            {
               unit.removeEventListener(§0%v§.§^$3§,onSink);
               unit.removeEventListener(§0%v§.DISPOSED,onDisposed);
               if(unit.physicModel)
               {
                  unit.physicModel.removeEventListener(§0%v§.§+&=§,onCollision);
               }
            }
            if(dummy)
            {
               dummy.disposed = true;
            }
         };
         dummy = Application.scene.§,$z§();
         count = 0;
         unit.addEventListener(§0%v§.§^$3§,onSink);
         unit.addEventListener(§0%v§.DISPOSED,onDisposed);
         unit.physicModel.addEventListener(§0%v§.§+&=§,onCollision);
      }
      
      public static function §?!]§(param1:§+%]§, param2:§;#_§, param3:int) : void
      {
         var _loc4_:UserProfile = null;
         var _loc5_:§;#X§ = null;
         var _loc6_:BackpackItem = null;
         var _loc8_:BackpackItem = null;
         _loc4_ = param1.squad.§?"#§();
         _loc5_ = _loc4_.getBattleBackpack();
         _loc6_ = _loc5_.§8&E§(param2.getId());
         var _loc7_:int = _loc6_ ? int(_loc6_.getCount() + param3) : param3;
         if(param2.getId() < §9##§.§;9§)
         {
            _loc8_ = _loc5_.§0%8§(param2,_loc7_);
            if(_loc6_ == null)
            {
               _loc8_.§^"B§();
            }
         }
         else
         {
            _loc5_.§=!U§(param2,param3);
         }
         if(Boolean(§8"%§.§?!W§) && Boolean(§8"%§.§?!W§.§4"m§) && Boolean(§8"%§.§?!W§.§4"m§.§!%W§))
         {
            §8"%§.§?!W§.§4"m§.§!%W§.§2"j§(param1,param2.getId(),param3);
         }
      }
      
      public static function §4!&§(param1:§;#_§, param2:int) : String
      {
         var _loc3_:String = null;
         var _loc4_:uint = 0;
         if(!param1.getInfinite())
         {
            _loc3_ = "1";
         }
         else if(param1.§]!C§())
         {
            _loc4_ = param2 == -1 ? param1.§]!C§() : uint(Math.max(1,param2));
            _loc3_ = _loc4_.toString() + " " + §0$N§.QUANTITY_PER_BATTLE;
         }
         else
         {
            _loc3_ = §0$N§.QUANTITY_INFINITY;
         }
         return _loc3_;
      }
   }
}

