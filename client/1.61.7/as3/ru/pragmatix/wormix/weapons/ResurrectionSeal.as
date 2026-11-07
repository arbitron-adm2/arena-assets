package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'T§.§!$C§;
   import §4%_§.ZombieGrave;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7!B§.§>"D§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §^#[§.§&$2§;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   
   public class ResurrectionSeal extends §,%r§
   {
      
      private static const §9!"§:uint = 50;
      
      private var grave:§1"?§;
      
      public function ResurrectionSeal()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      private function §6#N§() : Boolean
      {
         var _loc1_:Vector.<§&"T§> = null;
         var _loc3_:§1"?§ = null;
         var _loc4_:String = null;
         if(§9$h§.§!%w§(owner) || §?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc4_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(owner))
               {
                  _loc4_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(owner))
               {
                  _loc4_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc4_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         _loc1_ = Application.scene.§@$I§.§;%a§.§"L§([§1"?§]);
         var _loc2_:Vector.<§&"T§> = §<H§.§3%'§(owner.x,owner.y,§9!"§,_loc1_);
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc3_ is §>"D§))
            {
               this.grave = _loc3_;
               break;
            }
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§() && !this.grave)
         {
            §>&-§.§[$9§(§0$N§.RESURRECTION_FLASK_USELESS,true);
         }
         return this.grave != null;
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§+%]§ = this.grave.getOwner();
         var _loc2_:int = owner.record.getRace().equals(Race.§"$H§.§]!D§()) ? owner.record.§5"L§().§7"=§() : 0;
         var _loc3_:ZombieGrave = new ZombieGrave(_loc1_.record.getRace().graveType,this.grave.x,this.grave.y,_loc1_,_loc1_.record.getCharName(),owner.record.getLevel(),owner.squad,null,0,_loc2_);
         _loc3_.clip.transform.colorTransform = new ColorTransform(1,1,1,1,-50,-50,-50,0);
         this.grave.disposed = true;
         §9$h§.update(owner);
         §?!P§.update(owner);
         this.§?!K§();
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         this.grave = null;
      }
   }
}

