package §2B§
{
   import §!L§.§+"'§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §+$=§.§6#A§;
   import §-8§.§3!x§;
   import §7!B§.§&"T§;
   import §7$t§.§??§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import flash.display.DisplayObjectContainer;
   import flash.external.ExternalInterface;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §1$U§ extends §`&-§
   {
      
      private var §=!o§:Vector.<§^%y§> = new Vector.<§^%y§>(0);
      
      public function §1$U§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.§=!o§.push(new §^%y§(§#&E§.§^5§,this));
         this.§=!o§.push(new §^%y§(§#&E§.§#E§,this));
         this.§=!o§.push(new §^%y§(§#&E§.§1!L§,this));
         this.§=!o§.push(new §^%y§(§#&E§.§9"#§,this));
      }
      
      public function update() : void
      {
         var _loc1_:§^%y§ = null;
         for each(_loc1_ in this.§=!o§)
         {
            _loc1_.update();
         }
      }
   }
}

