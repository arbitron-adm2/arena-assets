package §`%&§
{
   import § &5§.§=#P§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%Q§.§<&A§;
   import §'!Z§.§1"-§;
   import §+%S§.KamikazeBuff;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §1&-§.§-#B§;
   import §3#T§.Boomerang;
   import §<%k§.§`!v§;
   import §?#g§.§-!k§;
   import §?$K§.§##§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   
   public class §?#T§ implements §<&A§
   {
      
      private var §=$y§:uint;
      
      public function §?#T§(param1:int = 200)
      {
         super();
         this.§=$y§ = param1;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc6_:Object = null;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         if(param1.buffs.hasBuff(KamikazeBuff.NAME) && _loc5_.length > 0)
         {
            _loc6_ = {
               "point":new Point(_loc5_[0].x,_loc5_[0].y),
               "rate":this.§=$y§
            };
         }
         return _loc6_ != null ? {
            "angle":0,
            "power":0,
            "clearPathPc":100,
            "point":_loc6_.point,
            "rate":_loc6_.rate
         } : null;
      }
   }
}

