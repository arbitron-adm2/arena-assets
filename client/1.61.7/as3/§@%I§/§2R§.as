package §@%I§
{
   import §"%H§.§'%u§;
   import §#%!§.§%&F§;
   import §1#p§.§"Z§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §8$V§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   
   public class §2R§
   {
      
      private var §@b§:§'%u§;
      
      private var §#"D§:§&$2§ = new §&$2§(0);
      
      private var §[$,§:§?"&§ = new §?"&§(false);
      
      private var §8f§:§?"&§ = new §?"&§(false);
      
      public function §2R§(param1:§'%u§)
      {
         super();
         this.§@b§ = param1;
      }
      
      public function get id() : int
      {
         return this.§@b§.id;
      }
      
      public function get record() : §'%u§
      {
         return this.§@b§;
      }
      
      public function get count() : int
      {
         return this.§#"D§.value;
      }
      
      public function set count(param1:int) : void
      {
         this.§#"D§.value = param1;
      }
      
      public function get completed() : Boolean
      {
         return this.§[$,§.value;
      }
      
      public function set completed(param1:Boolean) : void
      {
         this.§[$,§.value = param1;
      }
      
      public function get closed() : Boolean
      {
         return this.§8f§.value;
      }
      
      public function set closed(param1:Boolean) : void
      {
         this.§8f§.value = param1;
      }
      
      public function get available() : Boolean
      {
         return !this.closed && !this.completed;
      }
      
      public function §#"!§() : void
      {
         this.§8f§.value = true;
         this.§[$,§.value = false;
      }
      
      public function §,%,§() : void
      {
         if(!this.§8f§.value)
         {
            this.§[$,§.value = true;
         }
      }
      
      public function §##?§() : void
      {
         this.§#"D§.value = 0;
      }
   }
}

