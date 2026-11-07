package §3#a§
{
   import § !P§.*;
   import § #9§.§"$t§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.HpChangeEvent;
   import §2"L§.§^$y§;
   import §2#H§.§>#M§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#T§.§;#Q§;
   import §4!!§.§'$V§;
   import §4!K§.§^%A§;
   import §4$b§.§6!G§;
   import §4&F§.*;
   import §4'§.§#"l§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§;$n§;
   import §7$1§.PushingMine;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§9#x§;
   import §<!W§.§+%_§;
   import §<!^§.§'$e§;
   import §<"L§.*;
   import §<$q§.§,%3§;
   import §<%k§.*;
   import §=&!§.§&$a§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[#I§.§2&=§;
   import §]$v§.§+%n§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^"y§.§]#i§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import com.inreflected.forks.spark.effects.animation.Keyframe;
   import com.inreflected.forks.spark.effects.easing.Linear;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class §-#M§
   {
      
      public static const §"!>§:uint = 300;
      
      public static const §9>§:uint = 10;
      
      public static const §,s§:uint = 55;
      
      public static const §-!e§:uint = 20;
      
      public static const §9"5§:uint = §"!>§ >> 1;
      
      private static const §]!Q§:Array = [§;$n§,§[$ §,§'$e§,§2&=§];
      
      public function §-#M§()
      {
         super();
      }
      
      public static function §,#e§(param1:uint = 55, param2:Boolean = true, param3:uint = 20, param4:Boolean = true) : Point
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:uint = 0;
         var _loc8_:Point = null;
         var _loc9_:Boolean = param1 != 0;
         var _loc10_:Number = Application.scene.width - §"!>§;
         var _loc11_:Number = Application.scene.height - §9"5§;
         var _loc12_:Vector.<§+%]§> = Application.scene.§@$I§.§;%a§.§1!n§();
         do
         {
            _loc7_++;
            _loc5_ = §8"%§.randomSeed.§,!q§(§"!>§,_loc10_);
            if(param4)
            {
               _loc8_ = §8%_§(_loc5_,§"!>§,param1,param2);
            }
            else
            {
               _loc6_ = §8"%§.randomSeed.§,!q§(§9"5§,_loc11_);
               if(_loc9_ && §<H§.§5"]§(_loc5_,_loc6_,param1,_loc12_).length == 0)
               {
                  _loc8_ = new Point(_loc5_,_loc6_);
               }
            }
         }
         while(!(_loc8_ != null || _loc7_ >= param3));
         return _loc8_;
      }
      
      public static function §&"!§(param1:int, param2:int, param3:uint, param4:uint, param5:uint, param6:Boolean = false, param7:uint = 20) : Point
      {
         var _loc12_:uint = 0;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc8_:uint = 10;
         var _loc9_:Number = Math.max(§<H§.§-#C§,param4);
         var _loc10_:Point = null;
         var _loc11_:uint = 0;
         do
         {
            _loc11_++;
            _loc12_ = 0;
            while(_loc12_ < _loc8_)
            {
               _loc13_ = §8"%§.randomSeed.§,!q§(-180,179) / 180 * Math.PI;
               _loc14_ = §8"%§.randomSeed.§,!q§(_loc9_,param3);
               _loc15_ = param1 + _loc14_ * Math.cos(_loc13_);
               _loc16_ = param2 + _loc14_ * Math.sin(_loc13_);
               if(!§>#9§.unit(_loc15_,_loc16_))
               {
                  _loc10_ = §8%_§(_loc15_,_loc16_,param5,param6);
                  if((Boolean(_loc10_)) && Boolean(param6) && (§!!a§(_loc10_.x,_loc10_.y,§<H§.§,%P§) || !§@"C§(_loc10_.y)))
                  {
                     _loc10_ = null;
                  }
                  break;
               }
               _loc12_++;
            }
         }
         while(!(_loc10_ != null || _loc11_ >= param7));
         return _loc10_;
      }
      
      private static function §8%_§(param1:int, param2:int, param3:uint, param4:Boolean) : Point
      {
         var _loc8_:Boolean = false;
         var _loc11_:Vector.<§&"T§> = null;
         var _loc12_:§2%F§ = null;
         var _loc5_:Point = null;
         var _loc6_:Vector.<int> = new Vector.<int>();
         var _loc7_:Boolean = §>#9§.unit(param1,param2);
         var _loc9_:Number = Application.scene.height - §"!>§;
         var _loc10_:int = param2 + §9>§;
         while(_loc10_ < _loc9_)
         {
            _loc8_ = §>#9§.unit(param1,_loc10_);
            if(!_loc7_ && _loc8_)
            {
               _loc6_[_loc6_.length] = _loc10_ - §9>§;
            }
            _loc7_ = _loc8_;
            _loc10_ += §9>§;
         }
         if(_loc6_.length > 0)
         {
            _loc5_ = new Point(param1,_loc6_[int(§8"%§.randomSeed.§,!q§(0,_loc6_.length - 1))]);
            if(param3 != 0 && §<H§.§5"]§(_loc5_.x,_loc5_.y,param3).length > 0)
            {
               _loc5_ = null;
            }
            if(param4 && Boolean(_loc5_))
            {
               _loc11_ = Application.scene.§@$I§.§;%a§.§"L§([§2%F§]);
               for each(_loc12_ in _loc11_)
               {
                  if(_loc12_.§9$r§() > 0 && §-q§.distance(_loc12_.x,_loc12_.y,_loc5_.x,_loc5_.y) <= _loc12_.§9$r§())
                  {
                     _loc5_ = null;
                     break;
                  }
               }
            }
         }
         return _loc5_;
      }
      
      public static function §[&F§(param1:§+%]§, param2:uint = 16763904, param3:uint = 16776960, param4:uint = 80, param5:Boolean = false, param6:Vector.<Point> = null) : void
      {
         var _loc7_:Point = Boolean(param6) && param6.length > 0 ? param6[int(§8"%§.randomSeed.§,!q§(0,param6.length - 1))] : null;
         var _loc8_:Point = Boolean(param6) && Boolean(_loc7_) ? §&"!§(_loc7_.x,_loc7_.y,200,10,20) || _loc7_ : §5!-§(param5);
         if(_loc8_)
         {
            param1.disposed = false;
            new §'$V§(param1,param1.x,param1.y,true,param1,param2,param3,param4);
            §<H§.§"%8§(param1,_loc8_.x,_loc8_.y);
            param1.stable = false;
            param1.physicModel.stop();
         }
      }
      
      public static function §5!-§(param1:Boolean) : Point
      {
         var _loc2_:uint = param1 ? 5 : §-!e§;
         var _loc3_:Point = §,#e§(§,s§,true,_loc2_);
         if(!_loc3_ && param1)
         {
            _loc3_ = §`&!§(_loc2_);
         }
         return _loc3_;
      }
      
      public static function §`&!§(param1:uint = 20, param2:Boolean = true, param3:Number = 0, param4:Number = 0, param5:Vector.<Point> = null, param6:int = 0, param7:int = 1000) : Point
      {
         var _loc9_:MovieClip = null;
         var _loc8_:Point = param2 ? §,#e§(§,s§,true,param1,false) : §%$g§(param3,param4,param5,param6,param7);
         if(_loc8_)
         {
            _loc9_ = §6#A§.§!&6§("GirderH");
            _loc9_.width = §<H§.§@k§;
            Application.scene.§+!K§(_loc9_,_loc8_.x,_loc8_.y + §<H§.§,%P§);
         }
         return _loc8_;
      }
      
      public static function §8&G§(param1:§+%]§, param2:Array, param3:uint = 300) : void
      {
         var _loc4_:§+%]§ = null;
         if(!param1.disposed)
         {
            for each(_loc4_ in param2)
            {
               if(!_loc4_.disposed && §-q§.distance(param1.x,param1.y,_loc4_.x,_loc4_.y) <= param3)
               {
                  §[&F§(param1);
               }
            }
         }
      }
      
      public static function §<$$§(param1:Number, param2:Number, param3:§+%]§, param4:int, param5:int = 30) : void
      {
         var _loc6_:Number = NaN;
         if(param4 > 0)
         {
            §'"$§.inflictDamage(new §6#I§(null,param1,param2,false,1),param3,param4,10,10);
         }
         if(!param3.disposed)
         {
            _loc6_ = Math.atan2(param3.y - §<H§.§-#C§ / 2 - param2,param3.x - param1);
            if(_loc6_ >= 0)
            {
               param3.rolling = §^$y§.sign(param3.x - param1) * param5 * 3;
               param3.stable = false;
            }
            else
            {
               param3.§^"F§(_loc6_,param5);
            }
         }
      }
      
      public static function bounce(param1:§&"T§, param2:§+%]§, param3:§5$n§, param4:int, param5:int, param6:uint, param7:uint, param8:uint) : void
      {
         var _loc10_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc9_:Number = Math.atan2(param1.y - §<H§.§-#C§ / 2 - param5,param1.x - param4);
         _loc10_ = §^$y§.distance(param1.x - param4,param1.y - param5);
         var _loc11_:Number = Math.sqrt(param3.damageRadius.value * param3.damageRadius.value - _loc10_ * _loc10_);
         var _loc12_:int = Math.max(param7,Math.round(_loc11_) / param6);
         _loc12_ = Math.min(param8,_loc12_);
         if(_loc9_ >= 0 && param1 is §+%]§)
         {
            §+%]§(param1).rolling = §^$y§.sign(param1.x - param4) * _loc12_ * 1.5;
            param1.stable = false;
         }
         else
         {
            _loc13_ = §'"$§.§ &0§(param2);
            §'"$§.§@$t§(param1,_loc9_,_loc12_,false,_loc13_);
         }
      }
      
      public static function §^#1§(param1:Point, param2:UserProfile, param3:§,%8§, param4:§"Z§) : §+%]§
      {
         var _loc5_:§&"T§ = Application.scene.§,$z§();
         §1"-§.explode(§;n§.§8!-§,param1.x,param1.y,40);
         var _loc6_:§+%]§ = Race.create(param2,param1.x,param1.y);
         _loc6_.aiArsenal = param3;
         param4.addUnit(_loc6_);
         _loc5_.stable = true;
         _loc5_.disposed = true;
         return _loc6_;
      }
      
      public static function §4$S§(param1:Point, param2:§+%]§) : §+%]§
      {
         return §^#1§(param1,param2.record.§ "P§(),param2.aiArsenal,param2.squad);
      }
      
      public static function §;M§(param1:§+%]§, param2:Race) : §+%]§
      {
         var _loc3_:Point = null;
         var _loc5_:UserProfile = null;
         _loc3_ = new Point(param1.x,param1.y);
         var _loc4_:int = param1.hp;
         _loc5_ = param1.record.§ "P§();
         _loc5_.§;$v§(param1.record.§4!^§());
         _loc5_.§&$g§(param2.§]!D§());
         var _loc6_:§+%]§ = §^#1§(_loc3_,_loc5_,param1.aiArsenal,param1.squad);
         _loc6_.attributes.hp.change(-(_loc6_.hp - _loc4_));
         if(param1.buffs.hasBuff(§+%_§.NAME))
         {
            param1.buffs.§6C§(§+%_§.NAME);
         }
         param1.§9&2§();
         param1.disposed = true;
         return _loc6_;
      }
      
      private static function §!!a§(param1:Number, param2:Number, param3:uint, param4:§+%]§ = null) : Boolean
      {
         var _loc6_:§;#Q§ = null;
         var _loc7_:Boolean = false;
         var _loc5_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§;#Q§]);
         for each(_loc6_ in _loc5_)
         {
            _loc7_ = param4 ? param4 == _loc6_.owner : false;
            if(!_loc7_ && §-q§.§+K§(_loc6_.§9#Q§.x,_loc6_.§9#Q§.y,_loc6_.§,r§.x,_loc6_.§,r§.y,param1,param2,param3))
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §&"r§(param1:§+%]§) : void
      {
         param1.buffs.place(new §3#j§());
         param1.buffs.place(new §`""§());
         param1.buffs.place(new §@$J§());
         param1.§0!e§ = false;
      }
      
      public static function §`"5§(param1:Array, param2:uint, param3:uint = 55, param4:Boolean = true) : Point
      {
         var _loc6_:Number = NaN;
         var _loc7_:§&"T§ = null;
         var _loc5_:Point = null;
         while(_loc5_ == null)
         {
            _loc5_ = §,#e§(param3,param4);
            if(_loc5_)
            {
               for each(_loc7_ in param1)
               {
                  if(Boolean(_loc7_) && !_loc7_.disposed)
                  {
                     _loc6_ = §-q§.distance(_loc7_.x,_loc7_.y,_loc5_.x,_loc5_.y);
                     if(_loc6_ < param2)
                     {
                        _loc5_ = null;
                        break;
                     }
                  }
               }
            }
         }
         return _loc5_;
      }
      
      public static function §0"%§(param1:uint = 200, param2:Boolean = false) : void
      {
         var _loc6_:§"Z§ = null;
         var _loc7_:§+%]§ = null;
         var _loc8_:Vector.<§+%]§> = null;
         var _loc9_:§+%]§ = null;
         var _loc3_:Array = §8"%§.§?!W§.§4"m§.§+!0§();
         var _loc4_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         var _loc5_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         for each(_loc6_ in _loc3_)
         {
            if(_loc6_.isAi())
            {
               _loc4_ = _loc4_.concat(_loc6_.§1!n§());
            }
         }
         for each(_loc7_ in _loc4_)
         {
            _loc8_ = §<H§.§5"]§(_loc7_.x,_loc7_.y,param1,_loc4_);
            if(param2)
            {
               if(_loc8_.length > 1 && !_loc7_.buffs.hasBuff(§>#M§.NAME))
               {
                  _loc5_.push(_loc7_);
               }
            }
            else
            {
               for each(_loc9_ in _loc8_)
               {
                  if(_loc9_ != _loc7_ && !_loc9_.buffs.hasBuff(§>#M§.NAME))
                  {
                     §[&F§(_loc9_);
                  }
               }
            }
         }
         for each(_loc7_ in _loc5_)
         {
            §[&F§(_loc7_);
         }
      }
      
      public static function §&b§(param1:Point, param2:§+%]§ = null) : Boolean
      {
         var _loc5_:§2%F§ = null;
         var _loc3_:Boolean = §@"C§(param1.y);
         var _loc4_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§2%F§]);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§9$r§() > 0 && §-q§.distance(_loc5_.x,_loc5_.y,param1.x,param1.y) <= _loc5_.§9$r§())
            {
               return false;
            }
         }
         return !§!!a§(param1.x,param1.y,§<H§.§,%P§,param2) && _loc3_;
      }
      
      public static function §1$a§(param1:Class, param2:§+%]§ = null, param3:Boolean = false) : §6#I§
      {
         var _loc5_:Boolean = false;
         var _loc7_:§6#I§ = null;
         var _loc4_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([param1]);
         _loc5_ = param2 != null;
         var _loc6_:int = _loc5_ ? param2.squad.getTeamId() : -1;
         for each(_loc7_ in _loc4_)
         {
            if(!_loc5_)
            {
               return _loc7_;
            }
            if(param3 == (_loc7_.owner.squad.getTeamId() == _loc6_))
            {
               return _loc7_;
            }
         }
         return null;
      }
      
      public static function §0"g§(param1:§+%]§) : void
      {
         var _loc2_:int = Application.scene.width >> 1;
         if(param1.x < _loc2_)
         {
            param1.turn(§+%]§.RIGHT);
         }
         else
         {
            param1.turn(§+%]§.LEFT);
         }
      }
      
      public static function §@"C§(param1:int) : Boolean
      {
         return Application.scene.height - Application.scene.§#%0§() - §<H§.§,%P§ > param1;
      }
      
      public static function §%#K§(param1:§+%]§) : Boolean
      {
         return param1.y > §]U§();
      }
      
      public static function §]U§() : Number
      {
         return Application.scene.height - Application.scene.§#%0§() - §<H§.§,%P§ * 5;
      }
      
      public static function §>6§(param1:Boolean) : int
      {
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:§+%]§ = null;
         var _loc2_:int = 0;
         var _loc3_:Array = §8"%§.§?!W§.§4"m§.§!%W§.§;r§;
         for each(_loc4_ in _loc3_)
         {
            _loc6_ = _loc4_.unit;
            if((Boolean(_loc6_)) && Boolean(_loc6_.squad) && _loc6_.squad.isAi() == param1)
            {
               _loc2_ += _loc4_.damage;
            }
         }
         _loc5_ = §8"%§.§?!W§.§4"m§.§!%W§.§"%q§;
         for each(_loc4_ in _loc5_)
         {
            _loc6_ = _loc4_.unit;
            if((Boolean(_loc6_)) && Boolean(_loc6_.squad) && _loc6_.squad.isAi() == param1)
            {
               _loc2_ -= _loc4_.amount;
            }
         }
         return _loc2_;
      }
      
      public static function §=$a§(param1:int, param2:int, param3:Vector.<Point>, param4:int) : Boolean
      {
         var _loc5_:Point = null;
         for each(_loc5_ in param3)
         {
            if(§-q§.distance(param1,param2,_loc5_.x,_loc5_.y) < param4)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §^N§(param1:Number, param2:Number, param3:Vector.<Point> = null, param4:int = 0, param5:int = 1000) : Point
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         do
         {
            _loc6_ = §8"%§.randomSeed.§,!q§(0,param1);
            _loc7_ = §8"%§.randomSeed.§,!q§(0,param2);
         }
         while(++_loc8_ < param5 && (Boolean(!§>#9§.point(_loc6_,_loc7_)) || Boolean(param3 && §=$a§(_loc6_,_loc7_,param3,param4))));
         return new Point(_loc6_,_loc7_);
      }
      
      public static function §%$g§(param1:Number = 0, param2:Number = 0, param3:Vector.<Point> = null, param4:int = 0, param5:int = 1000) : Point
      {
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!param1)
         {
            _loc6_ = 200;
         }
         if(!param2)
         {
            _loc7_ = 200;
         }
         param1 ||= Application.scene.width - 400;
         param2 ||= Application.scene.height - 400;
         var _loc10_:int = 0;
         do
         {
            _loc8_ = §8"%§.randomSeed.§,!q§(_loc6_,param1);
            _loc9_ = §8"%§.randomSeed.§,!q§(_loc7_,param2);
         }
         while(++_loc10_ < param5 && (§>#9§.point(_loc8_,_loc9_) && (!param3 || §=$a§(_loc8_,_loc9_,param3,param4))));
         return new Point(_loc8_,_loc9_);
      }
      
      public static function §4%b§(param1:§5$n§, param2:§+%]§, param3:int, param4:int, param5:int, param6:Array, param7:Boolean, param8:Boolean) : void
      {
         var _loc11_:§&"T§ = null;
         var _loc12_:Boolean = false;
         §1"-§.explode(§;n§.§6#B§,param3,param4,param1.damageRadius.value,§`!v§.§["s§);
         if(param8)
         {
            §'"$§.§]#I§(param2,param3,param4,null,param1.damage.value,param1.damageRadius.value,param1.explosionRadius.value,false);
         }
         var _loc9_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§(param6);
         _loc9_ = §<H§.§3%'§(param3,param4,param5,_loc9_);
         var _loc10_:int = param2.squad.getTeamId();
         for each(_loc11_ in _loc9_)
         {
            _loc12_ = _loc11_.hasOwnProperty("owner") && _loc11_["owner"] != null && §+%]§(_loc11_["owner"]).squad.getTeamId() == _loc10_;
            if(param7 && _loc12_ || !param7 && !_loc12_)
            {
               §1"-§.§,%F§(_loc11_,param3,param4,24,10,6068463,8);
               _loc11_.disposed = true;
            }
         }
      }
      
      public static function §-t§(param1:§+%]§, param2:int, param3:Number, param4:int) : void
      {
         var _loc6_:§>#M§ = null;
         var _loc7_:§+%]§ = null;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         for each(_loc7_ in _loc5_)
         {
            if(§<H§.§8!P§(_loc7_,param2,param3,§<H§.§@% § * 2,true))
            {
               _loc6_ = _loc7_.buffs.getBuff(§>#M§.NAME) as §>#M§;
               if(_loc6_)
               {
                  _loc6_.§1"G§(param4);
               }
            }
         }
      }
      
      public static function §62§(param1:§+%]§, param2:int, param3:int, param4:uint = 200) : void
      {
         var _loc7_:§6#I§ = null;
         var _loc5_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§(§]!Q§);
         _loc5_ = §<H§.§3%'§(param2,param3,param4,_loc5_);
         var _loc6_:int = 0;
         for each(_loc7_ in _loc5_)
         {
            §1"-§.§,%F§(_loc7_,param2,param3,24,10,6068463,8);
            if(Boolean(_loc7_.owner && !_loc7_.owner.squad.isLocal()) && Boolean(!_loc7_.owner.§+&,§(param1)) && !_loc7_.owner.squad.isAi())
            {
               _loc6_++;
            }
            _loc7_.disposed = true;
         }
         if(param1.squad.isLocal() && _loc6_ > 0)
         {
            §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§4!"§,_loc6_);
         }
      }
      
      public static function §&$i§(param1:§+%]§) : Boolean
      {
         return param1.squad.isAi() && §8"%§.§?!W§.§^!U§().battleType == §&$a§.§5!w§ && §8"%§.§?!W§.§^!U§().missionIds.indexOf(§+#N§.§9$6§) > -1;
      }
      
      public static function §^%v§(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:§&"T§ = null;
         var _loc4_:Vector.<§&"T§> = §<H§.§3%'§(param1,param2,param3,Application.scene.§@$I§.§;%a§.§"L§([PushingMine]));
         for each(_loc5_ in _loc4_)
         {
            _loc5_.disposed = true;
         }
      }
      
      public static function §4"Z§(param1:DisplayObject, param2:Point) : void
      {
         param1.x = param2.x;
         param1.y = param2.y;
      }
      
      public static function §^&?§(param1:§+%]§, param2:§+%]§, param3:uint = 35, param4:Number = 0.9) : void
      {
         var startX:int = 0;
         var startY:int = 0;
         var tmpOwner:§+%]§ = null;
         var owner:§+%]§ = param1;
         var unit:§+%]§ = param2;
         var maxDepth:uint = param3;
         var speedReduction:Number = param4;
         startX = unit.x;
         startY = unit.y;
         tmpOwner = owner;
         var onCollide:Function = function(param1:CollisionEvent):void
         {
            var _loc4_:int = 0;
            var _loc5_:uint = 0;
            var _loc10_:Point = null;
            var _loc2_:Number = unit.speed * speedReduction;
            var _loc3_:Number = unit.angle;
            _loc4_ = int(Math.floor(§^$y§.distance(unit.x - startX,unit.y - startY)));
            _loc5_ = uint(0.02 * _loc4_);
            var _loc6_:uint = _loc5_ > maxDepth ? maxDepth : _loc5_;
            var _loc7_:Point = §>#9§.§3%2§(unit.x,unit.y,_loc3_,§<H§.§-#C§);
            if(!_loc7_)
            {
               _loc7_ = §-q§.§2!B§(§<H§.§-#C§,_loc3_);
               _loc7_.x += unit.x;
               _loc7_.y += unit.y;
            }
            var _loc8_:int = _loc2_ * 2;
            §'"$§.§]#I§(tmpOwner,unit.x,unit.y,unit,_loc8_,_loc8_ + 5,0,false,true);
            §1"-§.explode(§;n§.§7q§,_loc7_.x,_loc7_.y,§<H§.§-#C§,§`!v§.§["s§);
            var _loc9_:int = 0;
            while(_loc9_ < _loc6_)
            {
               _loc10_ = §-q§.§2!B§(_loc9_,_loc3_);
               Application.scene.§,# §(_loc7_.x + _loc10_.x,_loc7_.y + _loc10_.y,§<H§.§-#C§);
               Application.scene.§,# §(_loc7_.x - _loc10_.x,_loc7_.y - _loc10_.y,§<H§.§-#C§);
               _loc9_++;
            }
            unit.x = _loc7_.x;
            unit.y = _loc7_.y;
            unit.§^"F§(_loc3_,_loc2_);
         };
         §8$a§.§&!#§(unit,§0%v§.§+&=§,onCollide);
      }
   }
}

