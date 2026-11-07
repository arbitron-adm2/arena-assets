package §<"?§
{
   import § #9§.§3L§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.*;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §-@§.§5"4§;
   import §0!§.§6#z§;
   import §0%[§.§1%"§;
   import §1#p§.§"Z§;
   import §2!-§.HpChangeEvent;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4#2§.*;
   import §4$b§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?"j§.§]!<§;
   import §?$7§.§+#N§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§;#L§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.UnitHpV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   use namespace gestouch_internal;
   
   public class §6"d§ extends §6$c§
   {
      
      private var totalDamageToPlayer:int = 0;
      
      private var totalDamageToBoss:int = 0;
      
      private var §9"n§:int = 0;
      
      private var §%$Y§:Array = [];
      
      private var §3$2§:Vector.<EndTurn> = new Vector.<EndTurn>(0);
      
      private var §>!q§:Array = [];
      
      public function §6"d§(param1:uint, param2:Boolean = false)
      {
         if(§0#2§.§;%<§())
         {
            param1 = uint(this.§+""§(getId()) || param1);
         }
         super(param1,param2);
      }
      
      private function §+""§(param1:int) : uint
      {
         var _loc2_:uint = 0;
         switch(param1)
         {
            case §+#N§.SAMURAI:
               _loc2_ = 2;
               break;
            case §+#N§.§>%§:
               _loc2_ = 140;
               break;
            case §+#N§.§9$6§:
               _loc2_ = 111;
               break;
            case §+#N§.§5#I§:
               _loc2_ = 116;
               break;
            case §+#N§.§ #z§:
               _loc2_ = 34;
               break;
            case §+#N§.§@#5§:
               _loc2_ = 115;
               break;
            case §+#N§.§1!+§:
               _loc2_ = 43;
               break;
            case §+#N§.§,&7§:
               _loc2_ = 68;
               break;
            case §+#N§.§[<§:
               _loc2_ = 30;
               break;
            case §+#N§.§@"f§:
               _loc2_ = 95;
               break;
            case §+#N§.EMPEROR:
               _loc2_ = 114;
               break;
            case §+#N§.§9!E§:
               _loc2_ = 86;
               break;
            case §+#N§.§>& §:
               _loc2_ = 4;
               break;
            case §+#N§.§]"f§:
               _loc2_ = 105;
         }
         return _loc2_;
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
         _loc1_.missionId = §8"%§.§?!W§.§^!U§().missionIds[0];
         _loc1_.battleId = §8"%§.§?!W§.§^!U§().battleId;
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
         _loc2_.floodDepth = Boolean(_loc1_) && Boolean(_loc1_.§3D§) ? _loc1_.§3D§.floodDepth : 0;
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

