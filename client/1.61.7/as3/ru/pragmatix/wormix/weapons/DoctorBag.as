package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §&!?§.§"_§;
   import §+%S§.§=$2§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class DoctorBag extends §,%r§
   {
      
      private static const §,"e§:§&$2§ = new §&$2§(75);
      
      private static const §9!"§:uint = 150;
      
      public function DoctorBag()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new §"_§(this);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:int = 0;
         var _loc4_:§+%]§ = null;
         §@%;§.play(§`!v§.BANDAGE);
         _loc1_ = owner.bonuses.getStatValue(Bonus.§;#-§);
         var _loc2_:int = §,"e§.value + §-q§.§8$G§(_loc1_,§,"e§.value);
         var _loc3_:Vector.<§+%]§> = §<H§.§5"]§(owner.x,owner.y,§9!"§,§8"%§.§?!W§.§4"m§.§="T§(owner));
         for each(_loc4_ in _loc3_)
         {
            _loc4_.attributes.hp.§#1§(_loc2_);
            _loc4_.buffs.§6C§(§#&#§.NAME);
         }
         §9$h§.update(owner);
         §?!P§.update(owner);
         §?!K§();
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
      }
      
      public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc8_:String = null;
         var _loc9_:§+%]§ = null;
         param1 ||= owner;
         if(§9$h§.§!%w§(param1) || §?!P§.§!%w§(param1))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc8_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(param1))
               {
                  _loc8_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(param1))
               {
                  _loc8_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc8_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         var _loc2_:Boolean = §-#M§.§1$a§(§2$v§,param1,false) != null;
         if(_loc2_)
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.DOCTOR_BAG_USELESS,true);
            }
            return false;
         }
         _loc3_ = §8"%§.§?!W§.§4"m§.§="T§(param1);
         var _loc4_:Vector.<§+%]§> = §<H§.§5"]§(param1.x,param1.y,§9!"§,_loc3_);
         var _loc5_:uint = _loc4_.length;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         if(_loc5_ > 0)
         {
            for each(_loc9_ in _loc4_)
            {
               if(_loc9_.attributes.hp.value >= _loc9_.attributes.hp.§#&"§())
               {
                  _loc6_++;
               }
               if(_loc9_.buffs.hasBuff(§=$2§.NAME))
               {
                  _loc7_++;
               }
            }
            if(_loc5_ == _loc6_)
            {
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  §>&-§.§[$9§(§0$N§.DOCTOR_BAG_USELESS_MAX_HP,true);
               }
               return false;
            }
            if(_loc5_ == _loc7_)
            {
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  §>&-§.§[$9§(§0$N§.DOCTOR_BAG_USELESS,true);
               }
               return false;
            }
            return true;
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §>&-§.§[$9§(§0$N§.DOCTOR_BAG_USELESS_NO_ALLIES,true);
         }
         return false;
      }
   }
}

