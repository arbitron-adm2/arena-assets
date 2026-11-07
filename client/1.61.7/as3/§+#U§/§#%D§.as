package §+#U§
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%Q§.*;
   import §&"c§.§!!q§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3#T§.§;'§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §9"-§.§?!s§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.Girder;
   
   public class §#%D§ implements §;$,§
   {
      
      §§push(§§findproperty(§6%%§));
      var _temp_1:* = new <int>[§+%z§.GIRDER_U2_TACTIC,§+%z§.TITANIUM_GIRDER];
      
      private static const §6%%§:Vector.<int> = new <int>[§+%z§.GIRDER_U2_TACTIC,§+%z§.TITANIUM_GIRDER];
      
      private static const VERTICAL:Number = Math.PI / 2;
      
      private static const §=$H§:int = 450;
      
      private static const §-s§:int = 190;
      
      public function §#%D§()
      {
         super();
      }
      
      public function check(param1:§+%]§, param2:§,%r§) : Boolean
      {
         var _loc5_:Girder = null;
         var _loc7_:§+%]§ = null;
         var _loc8_:§6#I§ = null;
         var _loc9_:§?!s§ = null;
         var _loc10_:Point = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc3_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§?!s§]);
         var _loc4_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         _loc5_ = Girder(param2);
         var _loc6_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(param1);
         _loc6_ = _loc6_.concat(new <§+%]§>[param1]);
         for each(_loc7_ in _loc6_)
         {
            _loc4_.push(_loc7_);
         }
         if(§6%%§.indexOf(param2.recordId.value) > -1)
         {
            loop1:
            for each(_loc9_ in _loc3_)
            {
               _loc10_ = §0$a§.§;# §(_loc9_.§^M§(),0,0,Application.scene.height,_loc9_.vx,_loc9_.vy);
               _loc11_ = §-s§ >> 1;
               _loc12_ = §=$H§ >> 1;
               if(_loc10_)
               {
                  _loc4_ = §<H§.§%$Q§(_loc10_.x - _loc12_,_loc10_.y - _loc11_,_loc10_.x + _loc12_,_loc10_.y + _loc11_,_loc4_);
               }
               if(Boolean(_loc10_) && _loc4_.length > 0)
               {
                  _loc13_ = _loc10_.x - _loc9_.§^M§() >> 1;
                  _loc5_.§#$t§(Girder.§%U§.value - _loc5_.§@%<§());
                  loop3:
                  while(true)
                  {
                     _loc18_ = _loc4_[0].y - §-s§;
                     while(_loc18_ >= Girder.§5&;§)
                     {
                        _loc14_ = _loc10_.x - _loc13_ * (_loc18_ < _loc9_.y ? 1 - _loc18_ / _loc9_.y : 0);
                        if(_loc5_.§@3§(_loc14_,_loc18_,0))
                        {
                           break loop3;
                        }
                        _loc18_ -= Girder.§]!Y§.value;
                     }
                     _loc5_.§#$t§(-Girder.§]!Y§.value);
                     if(_loc5_.§@%<§() <= Girder.§""T§.value)
                     {
                        continue loop1;
                     }
                  }
                  _loc5_.shotParams = new §!!q§();
                  _loc5_.shotParams.§3f§ = 0;
                  _loc5_.shotParams.point = new Point(_loc14_,_loc18_);
                  return true;
               }
            }
         }
         _loc3_ = Application.scene.§@$I§.§;%a§.§"L§([§;'§]);
         for each(_loc8_ in _loc3_)
         {
            if(_loc8_.owner.squad.getTeamId() != param1.squad.getTeamId() && !§>#9§.§>@§(_loc8_.x,_loc8_.y,0,-_loc8_.y))
            {
               _loc15_ = (_loc8_.y - Girder.§5&;§) / Girder.§7$[§.value;
               _loc16_ = 0;
               while(_loc16_ < _loc15_)
               {
                  _loc17_ = Girder.§5&;§ + Girder.§7$[§.value * _loc16_;
                  do
                  {
                     _loc18_ = _loc17_ + (_loc5_.§@%<§() >> 1);
                     if(_loc5_.§@3§(_loc8_.x,_loc18_,VERTICAL))
                     {
                        _loc5_.shotParams = new §!!q§();
                        _loc5_.shotParams.point = new Point(_loc8_.x,_loc18_);
                        _loc5_.shotParams.angle = VERTICAL;
                        return true;
                     }
                     _loc5_.§#$t§(-Girder.§]!Y§.value);
                  }
                  while(_loc5_.§@%<§() > Girder.§""T§.value);
                  _loc16_++;
               }
            }
         }
         return false;
      }
   }
}

