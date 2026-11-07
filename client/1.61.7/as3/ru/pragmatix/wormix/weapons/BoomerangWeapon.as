package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §#k§.§9$v§;
   import §&"c§.§!!q§;
   import §0&F§.§0%v§;
   import §3#T§.Boomerang;
   import §9%W§.§!"G§;
   import §@<§.§+%]§;
   import §^!]§.§-$w§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class BoomerangWeapon extends §,%r§
   {
      
      private var §5"8§:Boolean = true;
      
      private var §6%p§:Boomerang;
      
      public function BoomerangWeapon()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §^&I§.value = false;
         §7&§(new §!"G§());
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         Application.scene.addEventListener(§0%v§.WEAPON_SHOOT,this.§7"O§,false,100);
         this.§5"8§ = true;
      }
      
      private function §7"O§(param1:Event) : void
      {
         if(!this.§5"8§)
         {
            §8"%§.§?!W§.§4"m§.§-"M§(false);
         }
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         Application.scene.removeEventListener(§0%v§.WEAPON_SHOOT,this.§7"O§);
      }
      
      override protected function §`%V§() : void
      {
         §8"%§.§?!W§.§4"m§.§-"M§();
         this.§6%p§ = new Boomerang(owner,paramSet,shotParams.angle,§-&I§(shotParams.power),this.§5"8§,§&$2§(getProperty("secondHitBonus")).value,§?"&§(getProperty("knockHat")).value);
         if(this.§5"8§)
         {
            this.§6%p§.addEventListener(§0%v§.DISPOSED,this.§^a§);
            this.§6%p§.addEventListener(§0%v§.BOOMERANG_CAUGHT,this.§3!0§);
         }
         else
         {
            §8"%§.§?!W§.§4"m§.§'%i§().stop();
            §=#P§.§6+§();
         }
         this.§?!K§();
      }
      
      private function §!&<§() : void
      {
         this.§6%p§.removeEventListener(§0%v§.DISPOSED,this.§^a§);
         this.§6%p§.removeEventListener(§0%v§.BOOMERANG_CAUGHT,this.§3!0§);
      }
      
      private function §^a§(param1:Event) : void
      {
         this.§!&<§();
         §8"%§.§?!W§.§4"m§.§'%i§().stop();
         §=#P§.§6+§();
      }
      
      private function §3!0§(param1:Event) : void
      {
         this.§!&<§();
         if(!this.§6%p§.owner.disposed && !§8"%§.§?!W§.§4"m§.§[!W§())
         {
            this.§6%p§.owner.weapon = this;
            this.attach(this.§6%p§.owner);
            Application.scene.dispatchEvent(new §-$w§(recordId.value));
            this.§5"8§ = false;
         }
         else
         {
            §8"%§.§?!W§.§4"m§.§'%i§().stop();
            §=#P§.§6+§();
         }
      }
   }
}

