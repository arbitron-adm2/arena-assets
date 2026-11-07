package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §^!]§.MineSetUpEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class LaserBarrier extends §,%r§
   {
      
      public function LaserBarrier()
      {
         super();
         §^&I§.value = false;
         §"#z§ = 15;
         §2$"§ = 45;
         var _loc1_:§!"G§ = new §!"G§();
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
      }
      
      private function §6#N§(param1:Number) : Boolean
      {
         if(§9$h§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:uint = property["radiusIncreasing"] ? uint(property["radiusIncreasing"]) : 0;
         var _loc2_:§[$ § = new §[$ §(this.owner,paramSet,shotParams.angle,§-&I§(shotParams.power),_loc1_);
         _loc2_.addEventListener(§0%v§.MINE_SET_UP,this.§?!5§);
         §8"%§.§?!W§.§4"m§.§-"M§();
         §9$h§.update(owner);
         §?!K§();
      }
      
      protected function §?!5§(param1:MineSetUpEvent) : void
      {
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(!_loc2_)
         {
            return;
         }
         _loc2_.§-"M§(false);
         if(_loc2_.§#"G§())
         {
            if(_loc2_.§=%g§())
            {
               _loc2_.§%!J§(true);
            }
            param1.mine.owner.§#&5§();
         }
      }
   }
}

