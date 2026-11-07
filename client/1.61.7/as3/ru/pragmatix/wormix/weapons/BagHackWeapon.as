package ru.pragmatix.wormix.weapons
{
   import § $q§.BagMenu;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class BagHackWeapon extends §,%r§
   {
      
      public static const §^#g§:uint = 30;
      
      public static const §7"9§:uint = 3;
      
      public static const §,"T§:String = "BoneKeyAnim";
      
      private var victim:§+%]§;
      
      private var §>%y§:BackpackItem;
      
      public function BagHackWeapon()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§@%@§));
         §&!P§(§;#x§()).setPlaySound(false);
      }
      
      private static function §91§(param1:Event) : void
      {
         §8"%§.§?!W§.§4"m§.§%!J§(true);
         §+# §.§9! §.activate();
      }
      
      private function §@%@§() : Boolean
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:String = null;
         var _loc4_:Vector.<BackpackItem> = null;
         var _loc5_:BackpackItem = null;
         var _loc6_:BagMenu = null;
         if(§9$h§.§!%w§(owner) || §?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc3_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(owner))
               {
                  _loc3_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(owner))
               {
                  _loc3_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc3_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         var _loc1_:Vector.<§+%]§> = §<H§.§5"]§(owner.x,owner.y,§^#g§);
         for each(_loc2_ in _loc1_)
         {
            if(!_loc2_.squad.isAi() && _loc2_.squad.getTeamId() != owner.squad.getTeamId())
            {
               _loc4_ = _loc2_.squad.§?"#§().getBattleBackpack().getOrderedWeapons(true);
               for each(_loc5_ in _loc4_)
               {
                  if(Boolean(_loc5_ && _loc5_.§-&H§ && !_loc5_.isEmpty()) && Boolean(!_loc5_.isBlocked) && !_loc5_.§1!9§)
                  {
                     this.§>%y§ = _loc5_;
                     this.victim = _loc2_;
                     break;
                  }
               }
            }
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§() && !this.victim)
         {
            §>&-§.§[$9§(§0$N§.NOT_FOUND_UNITS_NEARBY,true);
         }
         if(this.victim)
         {
            §8"%§.§?!W§.§4"m§.§%!J§(false);
            Application.scene.addEventListener(§0%v§.START_TURN_SWITCHING,this.§9V§);
            Application.scene.addEventListener(§"%$§.NAME,this.§?m§);
            owner.addEventListener(§0%v§.§&!D§,this.§9V§);
            _loc6_ = Application.scene.§7#o§.§0!#§;
            §+# §.§9! §.deactivate();
            §1"-§.§8"l§(this.victim,§,"T§);
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc6_.§`!Z§(this.victim.squad,this.victim,true);
            }
         }
         else if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §@%;§.play(§`!v§.§2$e§);
         }
         return false;
      }
      
      override public function attach(param1:§+%]§) : void
      {
         Application.scene.addEventListener(§!!n§.NAME,§91§);
         super.attach(param1);
      }
      
      override public function §?!K§() : void
      {
         Application.scene.removeEventListener(§!!n§.NAME,§91§);
         if(owner != null)
         {
            this.victim = null;
            this.§>%y§ = null;
            §?"'§ = false;
            Application.scene.removeEventListener(§0%v§.START_TURN_SWITCHING,this.§9V§);
            Application.scene.removeEventListener(§"%$§.NAME,this.§?m§);
            owner.removeEventListener(§0%v§.§&!D§,this.§9V§);
            super.§?!K§();
         }
      }
      
      private function §9V§(param1:Event) : void
      {
         this.§?!K§();
         var _loc2_:BagMenu = Application.scene.§7#o§.§0!#§;
         if(§8"%§.§?!W§.§4"m§.§=%g§() && _loc2_.isShown())
         {
            _loc2_.hide();
         }
      }
      
      private function §?m§(param1:Event) : void
      {
         this.§?!K§();
         §+# §.§9! §.activate();
      }
   }
}

