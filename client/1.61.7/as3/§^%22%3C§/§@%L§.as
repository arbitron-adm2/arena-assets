package §^"<§
{
   import §"$+§.§@C§;
   import §%"Z§.§'$2§;
   import §4'§.§`"q§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §@%L§ extends §"&C§
   {
      
      private var newName:String = "";
      
      public function §@%L§(param1:§'$2§, param2:Function = null, param3:String = "")
      {
         super(param1,param2,param3);
      }
      
      override protected function §`&1§(param1:Boolean = false) : void
      {
         this.§!!5§ = param1;
         var _loc2_:§`"q§ = §@C§.§+#?§;
         _loc2_.§&#q§ = param1;
         §8"%§.§!&I§.edit.§8#S§(this.newName,param1 ? null : _loc2_,§,e§,param1);
      }
      
      public function §[#K§(param1:String) : void
      {
         this.newName = param1;
      }
   }
}

