package ru.pragmatix.wormix.weapons
{
   import § %f§.GasGrenade;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §&!?§.§7&>§;
   import §+%S§.§ !!§;
   import §-8§.GasCloud;
   import §2#i§.§+%z§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class AntidoteInjection extends §,%r§
   {
      
      private static const §9!"§:uint = 50;
      
      private var target:§+%]§;
      
      public function AntidoteInjection()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new §7&>§(this);
      }
      
      public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:§+%]§ = null;
         var _loc6_:String = null;
         param1 ||= owner;
         if(§9$h§.§!%w§(param1) || §?!P§.§!%w§(param1))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc6_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(param1))
               {
                  _loc6_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(param1))
               {
                  _loc6_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc6_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         _loc2_ = §8"%§.§?!W§.§4"m§.§="T§(param1);
         var _loc3_:Vector.<§+%]§> = §<H§.§5"]§(param1.x,param1.y,§9!"§,_loc2_);
         for each(_loc5_ in _loc3_)
         {
            if(_loc5_.buffs.hasBuff(§ !!§.NAME))
            {
               if(!_loc4_ || §<H§.distance(param1,_loc5_) < §<H§.distance(param1,_loc4_))
               {
                  _loc4_ = _loc5_;
               }
            }
         }
         this.target = _loc4_;
         if(§8"%§.§?!W§.§4"m§.§=%g§() && !this.target)
         {
            §>&-§.§[$9§(§0$N§.NO_NEARBY_ALLIES,true);
         }
         return this.target != null;
      }
      
      override protected function §`%V§() : void
      {
         §@%;§.play(§`!v§.ANTITOXIN);
         this.target.buffs.§6C§(§ !!§.NAME);
         this.target.§2!W§();
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
         this.target = null;
      }
   }
}

