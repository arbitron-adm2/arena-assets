package §^"<§
{
   import §"$+§.§@C§;
   import §%"Z§.§'$2§;
   import §4&F§.*;
   import §4'§.§`"q§;
   import §<%k§.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   
   public class §&5§ extends §"&C§
   {
      
      private var §!!X§:Vector.<uint>;
      
      public function §&5§(param1:§'$2§, param2:Function = null, param3:String = "")
      {
         super(param1,param2,param3);
      }
      
      override protected function §`&1§(param1:Boolean = false) : void
      {
         this.§!!5§ = param1;
         var _loc2_:§`"q§ = §@C§.§2"g§;
         _loc2_.§&#q§ = param1;
         §8"%§.§!&I§.edit.§,"d§(this.§!!X§,param1 ? null : _loc2_,§,e§,param1);
      }
      
      public function §]"z§(param1:Vector.<uint>) : void
      {
         this.§!!X§ = param1;
      }
   }
}

