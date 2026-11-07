package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §^#[§.§?"&§;
   
   public class BoulderWeapon extends ClearPathBazooka
   {
      
      protected var friendlyFire:Boolean;
      
      public function BoulderWeapon()
      {
         super();
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(param1["friendlyFire"])
         {
            this.friendlyFire = §?"&§(param1["friendlyFire"]).value;
         }
      }
      
      override protected function §`%V§() : void
      {
         new property["ammoClass"](owner,paramSet,owner.x,owner.y,0,0,shotParams.angle,§-&I§(shotParams.power),this.friendlyFire);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

