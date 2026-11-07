package ru.pragmatix.wormix.weapons
{
   import §&"c§.§5$n§;
   import §9"-§.§?!s§;
   import §<!G§.§&!;§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   
   public class AtomBombWeapon extends §&!;§
   {
      
      public function AtomBombWeapon()
      {
         super(false);
      }
      
      override protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
         var _loc8_:§?"&§ = null;
         _loc8_ = getProperty("fakeExplosion") as §?"&§;
         var _loc9_:Boolean = _loc8_ ? _loc8_.value : false;
         new §?!s§(param1,param2,shotParams.point.x,shotParams.point.y,param3,param4,param5,param6,_loc9_);
      }
   }
}

