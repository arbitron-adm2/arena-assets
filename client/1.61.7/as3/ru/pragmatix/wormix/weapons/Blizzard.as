package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §4!!§.§#Z§;
   import §4!!§.§[%@§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§&$2§;
   import §`%&§.§2z§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class Blizzard extends §,%r§
   {
      
      public function Blizzard()
      {
         super();
         §"#z§ = §2$"§ = 20;
         var _loc1_:§!7§ = new §!7§();
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
         §-g§ = new §2z§(70,§"#z§);
      }
      
      private function §6#N§(param1:Number) : Boolean
      {
         if(§?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      override protected function §`%V§() : void
      {
         var _loc3_:uint = 0;
         §@%;§.play(§`!v§.§>#+§);
         new §[%@§(owner,owner.x,owner.y,paramSet,shotParams.angle,§"#z§ * 0.87,§#Z§.ZERO);
         var _loc1_:Array = [0,1,2,3];
         var _loc2_:§&$2§ = new §&$2§(0);
         while(_loc2_.value < _loc1_.length)
         {
            if(_loc2_.value >= _loc1_.length)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"blizzard hack"));
            }
            _loc3_ = §"#z§ * (_loc2_.value % 2 == 0 ? 1 : §8"%§.randomSeed.§]#W§(0.95,1.05));
            new §[%@§(owner,owner.x,owner.y,paramSet,shotParams.angle,_loc3_,§#Z§.STABLE);
            var _loc4_:§&$2§ = _loc2_;
            var _loc5_:Number = _loc4_.value + 1;
            _loc4_.value = _loc5_;
         }
         §?!P§.update(owner);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

