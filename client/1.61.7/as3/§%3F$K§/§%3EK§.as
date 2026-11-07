package §?$K§
{
   import §%"Z§.§'$2§;
   import §0%[§.§0%§;
   import §3"@§.§#$O§;
   import §65§.§%%o§;
   import §65§.§`"C§;
   import §7!B§.§8%%§;
   import §7$t§.§^$E§;
   import §<%E§.§,$2§;
   import §<%E§.§=$u§;
   import §=!p§.§8#x§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import flash.errors.IllegalOperationError;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.serialization.client.*;
   
   public class §>K§ extends §%%o§
   {
      
      public static const NAME:String = "BOUNCE_PROTECTION_COUNTER_BUFF";
      
      private var §2M§:int = 0;
      
      public function §>K§(param1:String = "BOUNCE_PROTECTION_COUNTER_BUFF", param2:int = 0)
      {
         super(param1,-1);
         this.§2M§ = param2;
      }
      
      override protected function §7$d§() : void
      {
         var _loc1_:§`"C§ = unit.buffs.getBuff(§=z§.NAME);
         if(Boolean(_loc1_) && _loc1_.§8!t§() > 0)
         {
            ++this.§2M§;
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §>K§(NAME,this.§2M§));
      }
      
      public function get used() : int
      {
         return this.§2M§;
      }
      
      public function set used(param1:int) : void
      {
         this.§2M§ = param1;
      }
   }
}

