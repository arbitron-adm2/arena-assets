package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §+#U§.§'#w§;
   import §+%S§.§2&>§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class FrostStasisBuffPlacer extends §,%r§
   {
      
      private static const §6%c§:Array = [§+N§.NAME,§1%I§.NAME,§,"R§.§5!d§,§2&>§.NAME];
      
      public function FrostStasisBuffPlacer()
      {
         super();
         §7&§(new §&!P§(this.§?"t§));
         §-g§ = new §'#w§();
      }
      
      private function §?"t§() : Boolean
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:Boolean = false;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.activeSquad.§1!n§();
         var _loc2_:int = 0;
         for each(_loc3_ in _loc1_)
         {
            if(!_loc3_.isRevived() && !_loc3_.buffs.§%%b§(§6%c§))
            {
               _loc2_++;
            }
         }
         _loc4_ = _loc2_ > 0;
         if(§8"%§.§?!W§.§4"m§.§=%g§() && !_loc4_)
         {
            §>&-§.§[$9§(§0$N§.ACTION_IMPOSSIBLE,true);
         }
         return _loc4_;
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.activeSquad.§1!n§();
         for each(_loc2_ in _loc1_)
         {
            if(!_loc2_.isRevived() && !_loc2_.buffs.§%%b§(§6%c§))
            {
               _loc2_.buffs.place(new §2&>§());
            }
         }
         §@%;§.play(§`!v§.ANTIFREEZE);
         if(!§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §`%u§.§0!1§(§+%z§.FROST_STASIS,owner);
         }
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

