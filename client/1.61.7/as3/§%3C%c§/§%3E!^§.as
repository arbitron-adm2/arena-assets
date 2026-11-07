package §<%c§
{
   import §"$+§.*;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&%X§.§5F§;
   import §+$=§.§6#A§;
   import §0"L§.*;
   import §0%[§.§""n§;
   import §0%[§.§]2§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4'§.§`"q§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §<$q§.§?!d§;
   import §=!V§.*;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §?#g§.Race;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import avmplus.getQualifiedClassName;
   import config.§=%A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.messages.client.AddToGroup;
   import ru.pragmatix.wormix.messages.client.StartTurn;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.Bat;
   import ru.pragmatix.wormix.weapons.BlowTorch;
   
   public class §>!^§
   {
      
      public static const §6#S§:uint = 0;
      
      public static const §?$s§:uint = 1;
      
      public var mapRecord:§9$Z§;
      
      public var noMapGround:Boolean;
      
      public var §"!p§:Array;
      
      protected var §5"N§:Array;
      
      protected var playerSquads:Vector.<§"Z§>;
      
      protected var enemySquads:Vector.<§"Z§> = new Vector.<§"Z§>(0);
      
      protected var §,&0§:uint = 4;
      
      public function §>!^§(param1:uint, param2:Boolean = false)
      {
         super();
         this.mapRecord = §=%A§.§7S§(param1);
         this.noMapGround = param2;
      }
      
      private static function §7b§(param1:Vector.<§"Z§>, param2:Array) : void
      {
         var _loc4_:§"Z§ = null;
         var _loc5_:§+%]§ = null;
         var _loc3_:uint = 0;
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in _loc4_.§1!n§())
            {
               _loc5_.x = param2[_loc3_].x;
               _loc5_.y = param2[_loc3_].y;
               _loc3_ = _loc3_ < param2.length - 1 ? uint(_loc3_ + 1) : 0;
               §-#M§.§0"g§(_loc5_);
            }
         }
      }
      
      public static function get currentUnit() : §+%]§
      {
         return §8"%§.§?!W§.§4"m§ ? §8"%§.§?!W§.§4"m§.activeUnit : null;
      }
      
      protected static function §%$D§(param1:String, param2:int, param3:int, param4:Number = 0, param5:Number = 1, param6:Number = 1, param7:Boolean = false, param8:ColorTransform = null) : MovieClip
      {
         var _loc9_:MovieClip = §6#A§.§!&6§(param1);
         _loc9_.rotation = param4;
         _loc9_.scaleX = param5;
         _loc9_.scaleY = param6;
         if(param8)
         {
            _loc9_.transform.colorTransform = param8;
         }
         Application.scene.§+!K§(_loc9_,param2,param3,param7);
         return _loc9_;
      }
      
      public function get journalTurns() : Array
      {
         return null;
      }
      
      public function §,$j§() : §?!d§
      {
         return §?!d§.§1%3§();
      }
      
      private function §3$<§(param1:Vector.<UserProfile>, param2:uint) : Vector.<§"Z§>
      {
         var _loc3_:Vector.<§"Z§> = new Vector.<§"Z§>(0);
         var _loc4_:int = 0;
         var _loc5_:int = int(param1.length);
         while(_loc4_ < _loc5_)
         {
            _loc3_.push(§6#H§.§0%M§(param1[_loc4_],"Player" + _loc4_,_loc4_,_loc4_ == param2 ? §=$G§.§0<§ : §=$G§.§=q§,§6#S§,§6#H§.§>#S§(param1[_loc4_],this.§,&0§)));
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §!&;§(param1:Vector.<UserProfile>, param2:uint) : Vector.<§"Z§>
      {
         var _loc6_:§-!`§ = null;
         var _loc7_:§"Z§ = null;
         this.playerSquads = this.§3$<§(param1,param2);
         this.§2!9§();
         if(this.§5"N§)
         {
            §7b§(this.playerSquads,this.§5"N§[0]);
         }
         var _loc3_:Vector.<§"Z§> = this.playerSquads.concat();
         var _loc4_:uint = this.playerSquads.length;
         var _loc5_:uint = 1;
         for each(_loc6_ in this.§"!p§)
         {
            _loc7_ = this.§1!U§(_loc4_++,_loc6_,this.§5"N§ ? this.§5"N§[_loc5_++] : null);
            this.enemySquads.push(_loc7_);
            _loc3_.push(_loc7_);
         }
         if(!this.§5"N§)
         {
            §6#H§.§0&§(this.playerSquads.concat(this.enemySquads),this.mapRecord,§8"%§.§?!W§.§^!U§().seed);
         }
         return _loc3_;
      }
      
      final public function activate() : void
      {
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§,false,§[!F§.§^!?§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§,false,§[!F§.§^!?§);
         §%%w§.§##$§(StartTurnResponse,this.§;#e§);
      }
      
      public function §]<§() : void
      {
         var _loc1_:StartTurn = new StartTurn();
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         var _loc3_:§]$d§ = §8"%§.§?!W§.§^!U§();
         _loc1_.missionId = _loc3_.missionIds.length > 0 ? _loc3_.missionIds[0] : 0;
         if(_loc1_.missionId != 0)
         {
            return;
         }
         if(_loc3_.battleType != §&$a§.§^!p§)
         {
            return;
         }
         _loc1_.battleId = _loc3_.battleId;
         _loc1_.turn = new TurnStructure();
         _loc1_.turn.turnNum = _loc2_.§,j§();
         _loc1_.turn.isPlayerTurn = !_loc2_.§;#l§();
         _loc1_.turn.items = [];
         _loc1_.turn.deaths = [];
         _loc1_.turn.births = [];
         _loc1_.sessionKey = §%%w§.§7F§.§?$X§();
         §%%w§.§,U§(_loc1_);
      }
      
      private function §;#e§(param1:§9$v§) : void
      {
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:StartTurnResponse = StartTurnResponse(param1.message);
         if(_loc2_.result != StartTurnResponse.SUCCESS)
         {
            return;
         }
         if(_loc2_.awards.length == 0)
         {
            return;
         }
         var _loc3_:§]+§ = §5F§.§'f§(_loc2_.awards);
         var _loc4_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(_loc3_.exp > 0)
         {
            _loc4_.§>#6§().§!#i§(_loc3_.exp);
         }
         for(_loc5_ in _loc3_.reagents)
         {
            _loc6_ = int(_loc5_);
            if(_loc6_ > -1)
            {
               _loc4_.§?!c§().§0!S§(_loc6_);
            }
         }
      }
      
      protected function §2!9§() : void
      {
      }
      
      public function §8%r§() : void
      {
      }
      
      protected function §1!U§(param1:uint, param2:§-!`§, param3:Array) : §"Z§
      {
         var _loc8_:UserProfile = null;
         var _loc9_:Point = null;
         var _loc10_:§+%]§ = null;
         var _loc4_:§"Z§ = new §"Z§(param2.name,param1,§=$G§.AI,§?$s§);
         var _loc5_:Point = new Point();
         _loc4_.§2!E§(param2.units[0]);
         var _loc6_:int = 0;
         var _loc7_:int = int(param2.units.length);
         while(_loc6_ < _loc7_)
         {
            _loc8_ = param2.units[_loc6_];
            _loc9_ = param3 ? param3[_loc6_] : _loc5_;
            _loc10_ = Race.create(_loc8_,_loc9_.x,_loc9_.y);
            _loc10_.§0!e§ = false;
            if(_loc10_.§@!^§ == UnitBirthV2.ROLE_UNKNOWN)
            {
               _loc10_.§@!^§ = param1 == 0 && _loc6_ == 0 ? UnitBirthV2.ROLE_BOSS : UnitBirthV2.ROLE_SERVANT;
            }
            _loc4_.addUnit(_loc10_);
            _loc6_++;
         }
         return _loc4_;
      }
      
      public function clear() : void
      {
         §%%w§.§-"j§(StartTurnResponse,this.§;#e§);
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         this.playerSquads = new Vector.<§"Z§>(0);
         this.enemySquads = new Vector.<§"Z§>(0);
      }
      
      private function §@%D§(param1:Event) : void
      {
         this.§ "a§(§8"%§.§?!W§.§4"m§.§,j§());
      }
      
      private function §,!l§(param1:Event) : void
      {
         this.§6&§(§8"%§.§?!W§.§4"m§.§,j§());
      }
      
      protected function § "a§(param1:uint) : void
      {
      }
      
      protected function §6&§(param1:uint) : void
      {
      }
      
      protected function §#$J§(param1:Number, param2:Number) : Point
      {
         return new Point(param1 + this.mapRecord.§1% §,param2 + this.mapRecord.indentHeight);
      }
      
      protected function §'%G§() : uint
      {
         var _loc2_:§"Z§ = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.playerSquads)
         {
            _loc1_ += _loc2_.§1!n§().length;
         }
         return uint(this.§`%"§() / _loc1_);
      }
      
      protected function §`%"§() : uint
      {
         var _loc2_:§"Z§ = null;
         var _loc3_:§+%]§ = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.playerSquads)
         {
            for each(_loc3_ in _loc2_.§1!n§())
            {
               _loc1_ += _loc3_.record.getLevel();
            }
         }
         return _loc1_;
      }
      
      protected function §#%K§() : uint
      {
         var _loc2_:§"Z§ = null;
         var _loc3_:§+%]§ = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.playerSquads)
         {
            for each(_loc3_ in _loc2_.§1!n§())
            {
               if(_loc3_.record.getLevel() > _loc1_)
               {
                  _loc1_ = uint(_loc3_.record.getLevel());
               }
            }
         }
         return _loc1_;
      }
   }
}

