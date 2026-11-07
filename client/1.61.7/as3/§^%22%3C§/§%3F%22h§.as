package §^"<§
{
   import §"$+§.§ G§;
   import §%"Z§.§'$2§;
   import §1#p§.Team;
   import §4'§.§`"q§;
   import §^"y§.§]#i§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §?"h§ extends §"&C§
   {
      
      public function §?"h§(param1:§'$2§, param2:Function = null, param3:String = "")
      {
         super(param1,param2,param3);
      }
      
      override protected function §`&1§(param1:Boolean = false) : void
      {
         var _loc2_:int = 0;
         var _loc4_:§`"q§ = null;
         this.§!!5§ = param1;
         _loc2_ = §]#i§.userClan.level + 1;
         var _loc3_:§ G§ = § G§.getLevel(_loc2_);
         if(_loc3_)
         {
            var _temp_1:* = _loc3_.priceInfo;
            _loc4_ = _loc3_.priceInfo;
            _loc4_.§&#q§ = param1;
            §8"%§.§!&I§.edit.§;#U§(_loc2_,param1 ? null : _loc4_,§,e§,param1);
         }
      }
   }
}

