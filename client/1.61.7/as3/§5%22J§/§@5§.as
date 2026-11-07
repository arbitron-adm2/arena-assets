package §5"J§
{
   import § &5§.§=#P§;
   import §!$D§.*;
   import §#"V§.§!&5§;
   import §0"L§.§+# §;
   import §1#p§.*;
   import §3"@§.§##L§;
   import §3#a§.*;
   import §7$t§.§2"y§;
   import §9![§.§^§;
   import §9%W§.§&!P§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §@!i§.§@$&§;
   import §@8§.§5%>§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^"I§.§9"2§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §@5§ extends §9"2§
   {
      
      private var §[z§:§4!m§;
      
      public function §@5§(param1:String, param2:uint, param3:Boolean = false)
      {
         super(param2,param3);
         this.§[z§ = new §4!m§(param1,mapRecord);
      }
      
      override protected function § "a§(param1:uint) : void
      {
         super.§ "a§(param1);
         this.§[z§.§ "a§(param1);
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         this.§[z§.§6&§(param1);
      }
      
      override public function §1%C§(param1:§?!d§) : void
      {
         param1.§`%?§ = §"%r§.STABLE;
         param1.§!"3§ = false;
      }
   }
}

