package §`%&§
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §#"V§.§6"%§;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §#k§.§9$v§;
   import §%&6§.§2$v§;
   import §%L§.§%%w§;
   import §%Q§.*;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§7%f§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.§;'§;
   import §7!-§.§%k§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$1§.§8&D§;
   import §8$V§.§`"c§;
   import §<!W§.*;
   import §<$q§.§"%r§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.adobe.serialization.json.JSONEncoder;
   import config.§;"I§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLRequestMethod;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.SellStuff;
   import ru.pragmatix.wormix.messages.server.ArenaResult;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §"#C§ implements §<&A§
   {
      
      private static const §,!W§:Array = [§2$v§,§8&D§,§;'§];
      
      private var §=$y§:uint;
      
      private var power:uint;
      
      public function §"#C§(param1:uint, param2:uint)
      {
         super();
         this.§=$y§ = param1;
         this.power = param2;
      }
      
      private static function §4%Z§(param1:Vector.<§+%]§>, param2:int, param3:int, param4:int, param5:int) : int
      {
         var _loc7_:§+%]§ = null;
         var _loc6_:int = 0;
         for each(_loc7_ in param1)
         {
            if(§-q§.§+K§(param2,param3,param4,param5,_loc7_.x,_loc7_.y,§<H§.§-#C§))
            {
               _loc6_++;
            }
         }
         return _loc6_;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc7_:Object = null;
         var _loc9_:§6#I§ = null;
         var _loc10_:Array = null;
         var _loc11_:Point = null;
         var _loc12_:Point = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc6_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(param1);
         var _loc8_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§(§,!W§);
         for each(_loc9_ in _loc8_)
         {
            if(_loc9_.owner.squad.getTeamId() != param1.squad.getTeamId())
            {
               _loc10_ = §0$a§.§-&-§(param1.x,param1.y,_loc9_.x,_loc9_.y,this.power,false,false);
               if(_loc10_.length > 0)
               {
                  _loc11_ = §-q§.§2!B§(Application.scene.width,_loc10_[0]);
                  _loc12_ = new Point(_loc11_.x + param1.x,_loc11_.y + param1.y);
                  _loc13_ = §4%Z§(_loc5_,param1.x,param1.y,_loc12_.x,_loc12_.y);
                  _loc14_ = §4%Z§(_loc6_,param1.x,param1.y,_loc12_.x,_loc12_.y);
                  if(!_loc7_ || (_loc7_.enemiesOnPath < _loc13_ || _loc7_.alliesOnPath > 0) && _loc14_ == 0)
                  {
                     _loc7_ = {
                        "angle":_loc10_[0],
                        "enemiesOnPath":_loc13_,
                        "alliesOnPath":_loc14_,
                        "rate":this.§=$y§ * (_loc13_ + 1)
                     };
                  }
               }
            }
         }
         return _loc7_ != null ? {
            "angle":_loc7_.angle,
            "power":this.power,
            "rate":_loc7_.rate
         } : null;
      }
   }
}

