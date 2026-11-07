package § %?§
{
   import §%"1§.§@%;§;
   import §+%S§.§?3§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import §@!N§.§2"e§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §4s§ extends Event
   {
      
      public static const §4#N§:String = "craftResult";
      
      private var _result:int;
      
      private var §"%2§:int;
      
      private var §,+§:CraftedEquipFamily;
      
      public function §4s§(param1:int, param2:int = -1, param3:CraftedEquipFamily = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(§4#N§,param4,param5);
         this._result = param1;
         this.§"%2§ = param2;
         this.§,+§ = param3;
      }
      
      public function get result() : int
      {
         return this._result;
      }
      
      public function get equipId() : int
      {
         return this.§"%2§;
      }
      
      public function get §;#J§() : CraftedEquipFamily
      {
         return this.§,+§;
      }
   }
}

