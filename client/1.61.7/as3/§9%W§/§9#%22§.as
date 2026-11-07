package §9%W§
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'"N§.§ !l§;
   import §0!Y§.§#!Z§;
   import §5!,§.§?!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.§1>§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.EventDispatcher;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9#"§ extends EventDispatcher implements §`"y§
   {
      
      protected var §;!G§:Array = [];
      
      protected var unit:§+%]§;
      
      protected var §&K§:Function;
      
      private var activated:§?"&§ = new §?"&§(false);
      
      public function §9#"§()
      {
         super();
      }
      
      public function activate(param1:§+%]§) : void
      {
         this.unit = param1;
         this.activated.value = true;
      }
      
      public function deactivate() : void
      {
         this.unit = null;
         this.activated.value = false;
      }
      
      public function §"$Z§(param1:Boolean = false) : void
      {
         this.unit.weapon.§<#P§();
      }
      
      public function §3$b§(param1:Boolean = false) : void
      {
         this.unit.weapon.§0%p§();
      }
      
      public function §5i§() : void
      {
         this.unit.weapon.§6!K§();
      }
      
      public function §#$X§() : void
      {
         this.unit.weapon.§?&!§();
      }
      
      public function charge(param1:Boolean) : void
      {
      }
      
      public function release() : void
      {
      }
      
      public function §2!^§(param1:int, param2:int) : void
      {
      }
      
      public function §<&G§(param1:int) : void
      {
         this.unit.weapon.§"#W§(param1);
      }
      
      public function setValue(param1:int) : void
      {
      }
      
      public function §>#G§(param1:int) : Boolean
      {
         return param1 == §#!Z§.§'$u§ && this.unit.weapon.§##0§() || (param1 == §#!Z§.§=&A§ || param1 == §#!Z§.§]$P§ || param1 == §#!Z§.§3"E§ || param1 == §#!Z§.§^!x§) && this.unit.weapon.§%!3§() || this.§;!G§.indexOf(param1) >= 0;
      }
      
      public function §9&;§(param1:Function) : void
      {
         this.§&K§ = param1;
      }
      
      public function isActive() : Boolean
      {
         return this.activated.value;
      }
      
      public function §%1§() : Boolean
      {
         return false;
      }
   }
}

