package §%&6§
{
   import § $N§.§0+§;
   import §"#x§.§'"$§;
   import §&"c§.§5$n§;
   import §&&6§.§8"O§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-%B§.§-"o§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4&F§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.*;
   import §=1§.*;
   import §?$K§.§=z§;
   import §@!N§.§2"e§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[%§.Dragon;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §+%D§ extends §2$v§
   {
      
      private static const DAMAGE:§&$2§ = new §&$2§(10);
      
      private static const §#%8§:Number = 0.1;
      
      public function §+%D§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:§&$2§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function §^#P§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:Point = null;
         super.§^#P§(param1);
         if(!disposed)
         {
            _loc2_ = §-#M§.§1$a§(§0%2§,owner,false) != null;
            if(!_loc2_)
            {
               _loc3_ = §8"%§.§?!W§.§4"m§.§6"M§(owner);
               for each(_loc4_ in _loc3_)
               {
                  if(_loc4_.attributes.hp.§9"H§() > §#%8§)
                  {
                     _loc5_ = §=z§.§-L§(_loc4_);
                     §'"$§.inflictDamage(this,_loc4_,DAMAGE.value,0,0,false,true);
                     §1"-§.explode(§;n§.§@"W§,_loc4_.x,_loc4_.y,10);
                     if(_loc5_)
                     {
                        §=z§.§5!u§(_loc4_,_loc5_);
                     }
                     Application.scene.dispatchEvent(new WeaponShootEvent(§+%z§.§0%n§,false,true,§0%v§.DAMAGE_TRIGGER));
                  }
               }
            }
         }
      }
   }
}

