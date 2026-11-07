package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §+%S§.§ !!§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §]$v§.§,%E§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   
   public class HoppingWeapon extends §,%r§ implements §3N§
   {
      
      private var §#!#§:§,%E§;
      
      public function HoppingWeapon(param1:uint = 0)
      {
         super(param1);
         §"#z§ = 15;
         §2$"§ = 45;
         §7&§(new §!"G§());
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         if(this.§#!#§)
         {
            this.§#!#§.removeEventListener(§0%v§.DISPOSED,this.§["O§);
            this.§#!#§ = null;
            §+# §.§@%V§.deactivate();
            §+# §.§9! §.activate();
         }
      }
      
      override protected function §`%V§() : void
      {
         owner.§4%Y§(clip);
         this.§#!#§ = new §,%E§(owner,paramSet,shotParams.angle,§-&I§(shotParams.power));
         this.§#!#§.addEventListener(§0%v§.DISPOSED,this.§["O§);
         §+# §.§@%V§.activate();
         §+# §.§9! §.deactivate();
         §=#P§.§6+§();
      }
      
      public function weaponCharge() : void
      {
         if(Boolean(this.§#!#§) && !this.§#!#§.disposed)
         {
            this.§#!#§.§^&'§();
         }
      }
      
      public function §["O§(param1:Event) : void
      {
         this.§?!K§();
      }
   }
}

