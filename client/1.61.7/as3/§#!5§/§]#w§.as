package §#!5§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%# §.§##U§;
   import §%&3§.§'C§;
   import §+$=§.§6#A§;
   import §-@§.§0"e§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2#s§.*;
   import §4!!§.§#Z§;
   import §6",§.§[%w§;
   import §9![§.§^§;
   import §@!N§.§2"e§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §]#w§ extends §8%Z§
   {
      
      private var §1$F§:§?%>§;
      
      private var §8&&§:§?%>§;
      
      protected var step:uint;
      
      public function §]#w§(param1:DisplayObjectContainer, param2:Boolean = true, param3:uint = 0)
      {
         super(param1,param2);
         this.§1$F§ = §!&5§.§7#[§(getChildByName("up_arrow"));
         this.§8&&§ = §!&5§.§7#[§(getChildByName("down_arrow"));
         if(this.§1$F§)
         {
            this.§1$F§.§[!u§(this.§#!6§);
         }
         if(this.§8&&§)
         {
            this.§8&&§.§[!u§(this.§%$_§);
         }
         this.step = param3;
      }
      
      private function §%$_§(param1:MouseEvent) : void
      {
         setValue(getValue() + this.§>!y§());
      }
      
      private function §#!6§(param1:MouseEvent) : void
      {
         setValue(getValue() - this.§>!y§());
      }
      
      public function §>!y§() : int
      {
         return this.step ? int(this.step) : int(Math.max((§"D§() - §<!@§()) / 10,1));
      }
      
      public function §&X§(param1:int) : void
      {
         this.step = param1;
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         if(this.§1$F§)
         {
            this.§1$F§.setDisabled(param1);
         }
         if(this.§8&&§)
         {
            this.§8&&§.setDisabled(param1);
         }
         super.setDisabled(param1);
      }
      
      override public function destroy() : void
      {
         if(this.§1$F§)
         {
            this.§1$F§.destroy();
         }
         if(this.§8&&§)
         {
            this.§8&&§.destroy();
         }
         super.destroy();
      }
      
      public function get §?&=§() : §?%>§
      {
         return this.§1$F§;
      }
      
      public function get §>&?§() : §?%>§
      {
         return this.§8&&§;
      }
   }
}

