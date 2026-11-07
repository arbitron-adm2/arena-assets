package §##j§
{
   import §%"Z§.§+$A§;
   import §="z§.§<$t§;
   import §^#[§.§&$2§;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §#$!§ extends §9x§
   {
      
      private var type:§+$A§;
      
      public function §#$!§(param1:§+$A§, param2:uint)
      {
         this.type = param1;
         super(param2);
         if(param1 == §+$A§.INGAME)
         {
            name = "fuzy";
         }
         else
         {
            name = "ruby";
         }
      }
      
      public function getRewardType() : §+$A§
      {
         return this.type;
      }
      
      override public function toString() : String
      {
         return "{" + name + ",count=" + count + "}";
      }
   }
}

