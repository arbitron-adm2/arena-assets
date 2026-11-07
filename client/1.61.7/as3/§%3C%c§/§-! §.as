package §<%c§
{
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §1#p§.§"Z§;
   import §3#a§.§-#M§;
   import §=&!§.§]$d§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.UnitHpV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   
   public class §-! § extends §>!^§
   {
      
      private var totalDamageToPlayer:int = 0;
      
      private var totalDamageToBoss:int = 0;
      
      private var §9"n§:int = 0;
      
      private var §%$Y§:Array = [];
      
      private var §3$2§:Vector.<EndTurn> = new Vector.<EndTurn>(0);
      
      private var §>!q§:Array = [];
      
      public function §-! §(param1:uint, param2:Boolean = false)
      {
         super(param1,param2);
      }
      
      public function §^!=§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:§"Z§ = null;
         var _loc3_:§+%]§ = null;
         playerSquads = new Vector.<§"Z§>(0);
         enemySquads = new Vector.<§"Z§>(0);
         for each(_loc2_ in param1)
         {
            if(_loc2_.isAi())
            {
               enemySquads.push(_loc2_);
               for each(_loc3_ in _loc2_.§1!n§())
               {
                  if(_loc3_.§@!^§ == UnitBirthV2.ROLE_UNKNOWN)
                  {
                     _loc3_.§@!^§ = UnitBirthV2.ROLE_SERVANT;
                  }
               }
            }
            else
            {
               playerSquads.push(_loc2_);
            }
         }
      }
      
      override public function §8%r§() : void
      {
         super.§8%r§();
         §%%w§.§##$§(EndTurnResponse,this.§=R§);
      }
      
      private function §=R§(param1:§9$v§) : void
      {
         var _loc3_:EndTurn = null;
         var _loc2_:EndTurnResponse = EndTurnResponse(param1.message);
         for each(_loc3_ in this.§3$2§)
         {
            if(_loc3_.turnV2.turnNum == _loc2_.turnNum)
            {
               this.§3$2§.splice(this.§3$2§.indexOf(_loc3_),1);
               break;
            }
         }
      }
      
      override public function clear() : void
      {
         §%%w§.§-"j§(EndTurnResponse,this.§=R§);
         if(this.§9"n§ != §8"%§.§?!W§.§4"m§.§,j§())
         {
            this.sendTurnLog();
         }
         super.clear();
         this.§3$2§.length = 0;
      }
      
      public function resendTurnsFrom(param1:ReconnectToSimpleBattleResultStructure) : void
      {
         var _loc2_:Vector.<EndTurn> = null;
         var _loc3_:EndTurn = null;
         if(param1.lastTurnNum < this.§9"n§)
         {
            _loc2_ = new Vector.<EndTurn>(0);
            for each(_loc3_ in this.§3$2§)
            {
               if(_loc3_.turnV2.turnNum > param1.lastTurnNum && _loc3_.turnV2.turnNum <= this.§9"n§)
               {
                  _loc3_.sessionKey = §%%w§.§7F§.§?$X§();
                  _loc2_.push(_loc3_);
               }
            }
            for each(_loc3_ in _loc2_)
            {
               if(!§%%w§.§7F§.§1",§())
               {
                  break;
               }
               §%%w§.§,U§(_loc3_);
            }
         }
      }
      
      public function sendTurnLog() : void
      {
         var _loc1_:EndTurn = new EndTurn();
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         var _loc3_:§]$d§ = §8"%§.§?!W§.§^!U§();
         _loc1_.missionId = _loc3_.missionIds.length > 0 ? _loc3_.missionIds[0] : 0;
         _loc1_.battleId = _loc3_.battleId;
         _loc1_.banType = Boolean(_loc2_) && Boolean(_loc2_.§5=§()) && _loc2_.§5=§() != 0 ? int(§`d§.§+#5§) : 0;
         _loc1_.turnV2 = this.§%%t§();
         _loc1_.sessionKey = §%%w§.§7F§.§?$X§();
         this.§3$2§.push(_loc1_);
         §%%w§.§,U§(_loc1_);
      }
      
      private function §%%t§() : TurnStructureV2
      {
         var _loc3_:Vector.<§"Z§> = null;
         var _loc4_:§"Z§ = null;
         var _loc5_:Vector.<§+%]§> = null;
         var _loc6_:§+%]§ = null;
         var _loc7_:UnitBirthV2 = null;
         var _loc1_:§]$;§ = §8"%§.§?!W§.§4"m§;
         var _loc2_:TurnStructureV2 = new TurnStructureV2();
         _loc2_.endTime = 0;
         this.§9"n§ = _loc2_.turnNum = Boolean(_loc1_) && Boolean(_loc1_.§,j§()) ? int(_loc1_.§,j§()) : 0;
         _loc2_.isPlayerTurn = Boolean(_loc1_) && Boolean(currentUnit) ? !currentUnit.squad.isAi() : false;
         this.totalDamageToBoss += _loc2_.damageToBoss = _loc1_ ? §-#M§.§>6§(true) : 0;
         this.totalDamageToPlayer += _loc2_.damageToPlayer = _loc1_ ? §-#M§.§>6§(false) : 0;
         _loc2_.landDestroyed = _loc1_ ? _loc1_.§!%W§.landDestroyed : 0;
         _loc2_.items = Boolean(_loc1_) && Boolean(_loc1_.§!%W§.§&<§) ? _loc1_.§!%W§.§&<§ : [];
         _loc2_.deaths = Boolean(_loc1_) && Boolean(_loc1_.§!%W§.§^A§) ? _loc1_.§!%W§.§^A§ : [];
         _loc2_.births = Boolean(_loc1_) && Boolean(_loc1_.§!%W§.§;"q§) ? _loc1_.§!%W§.§;"q§ : [];
         if(_loc1_)
         {
            _loc1_.§!%W§.§^!E§();
         }
         _loc2_.mechanics = Boolean(_loc1_) && Boolean(_loc1_.§!%W§.mechanics) ? _loc1_.§!%W§.mechanics : [];
         if(_loc2_.isPlayerTurn)
         {
            this.§%%5§(_loc2_.items);
         }
         if(_loc2_.turnNum == 0)
         {
            _loc3_ = playerSquads.concat(enemySquads);
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = _loc4_.§1!n§();
               for each(_loc6_ in _loc5_)
               {
                  if(_loc6_.§]$Y§ == 0 && Boolean(_loc1_))
                  {
                     _loc6_.§]$Y§ = _loc1_.§!%W§.§^&E§();
                  }
                  if(_loc6_.squad.isAi() && _loc6_.§@!^§ == UnitBirthV2.ROLE_UNKNOWN)
                  {
                     _loc6_.§@!^§ = UnitBirthV2.ROLE_SERVANT;
                  }
                  _loc7_ = new UnitBirthV2(_loc6_.§]$Y§,!_loc6_.squad.isAi(),_loc6_.hp,UnitBirthV2.SOURCE_INITIAL,_loc6_.§@!^§);
                  if(_loc6_.record)
                  {
                     _loc7_.hatId = _loc6_.record.§2u§() ? _loc6_.record.§2u§().getId() : 0;
                     _loc7_.kitId = _loc6_.record.§+!b§() ? _loc6_.record.§+!b§().getId() : 0;
                  }
                  _loc2_.births.push(_loc7_);
               }
            }
         }
         _loc2_.unitsHp = this.§>%!§();
         this.§>!q§.push(_loc2_);
         return _loc2_;
      }
      
      private function §>%!§() : Array
      {
         var _loc3_:§"Z§ = null;
         var _loc4_:§+%]§ = null;
         var _loc1_:Array = [];
         var _loc2_:Vector.<§"Z§> = playerSquads.concat(enemySquads);
         for each(_loc3_ in _loc2_)
         {
            for each(_loc4_ in _loc3_.§1!n§())
            {
               if(!(_loc4_.disposed || _loc4_.hp <= 0))
               {
                  _loc1_.push(new UnitHpV2(_loc4_.§]$Y§,_loc4_.hp));
               }
            }
         }
         return _loc1_;
      }
      
      override public function get journalTurns() : Array
      {
         return this.§>!q§;
      }
      
      private function §%%5§(param1:Array) : void
      {
         var _loc2_:WeaponStructure = null;
         var _loc3_:Boolean = false;
         var _loc4_:WeaponStructure = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = false;
            for each(_loc4_ in this.§%$Y§)
            {
               if(_loc2_.getId() == _loc4_.getId())
               {
                  _loc4_.addCount(_loc2_.getCount());
                  _loc3_ = true;
               }
            }
            if(!_loc3_)
            {
               this.§%$Y§.push(new WeaponStructure(_loc2_.getId(),_loc2_.getCount()));
            }
         }
      }
      
      public function get §`"W§() : int
      {
         return this.totalDamageToPlayer;
      }
      
      public function get §%J§() : int
      {
         return this.totalDamageToBoss;
      }
      
      public function get §&<§() : Array
      {
         return this.§%$Y§;
      }
   }
}

