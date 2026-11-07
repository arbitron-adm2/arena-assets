package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&!m§.§-$6§;
   import §+%S§.§+m§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §2#i§.§+%z§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class AdrenalineInjection extends §,%r§
   {
      
      private static const §>$G§:Array = [§+m§.NAME,§[&;§.NAME];
      
      private var duration:int;
      
      private var radius:int;
      
      private var target:§+%]§;
      
      public function AdrenalineInjection()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new §0!G§(this);
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         this.duration = int(getProperty("duration"));
         this.radius = int(getProperty("radius"));
      }
      
      public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:String = null;
         param1 ||= owner;
         if(§9$h§.§!%w§(param1) || §?!P§.§!%w§(param1))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc5_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(param1))
               {
                  _loc5_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(param1))
               {
                  _loc5_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc5_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         _loc2_ = §8"%§.§?!W§.§4"m§.§="T§(param1);
         var _loc3_:Vector.<§+%]§> = §<H§.§5"]§(param1.x,param1.y,this.radius,_loc2_);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.buffs.§%%b§(§>$G§))
            {
               this.target = _loc4_;
               break;
            }
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§() && !this.target)
         {
            §>&-§.§[$9§(§0$N§.NO_NEARBY_ALLIES,true);
         }
         return this.target != null;
      }
      
      override protected function §`%V§() : void
      {
         this.target.buffs.place(new §;!4§(this.duration));
         §@%;§.play(§`!v§.ANTITOXIN);
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

