package §[$P§
{
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §[%§.Rabbit;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   
   public class §[!0§ extends §+H§
   {
      
      private var §>q§:Rabbit;
      
      private var §["e§:int;
      
      private var isPowered:Boolean;
      
      public function §[!0§(param1:Rabbit, param2:§+H§)
      {
         super(param1,param2);
         this.§>q§ = param1;
      }
      
      public function §`?§(param1:int) : void
      {
         this.§["e§ = param1;
      }
      
      public function addJumpsPowerBonus(param1:int) : void
      {
         this.§["e§ += param1;
      }
      
      override protected function jump(param1:Number, param2:uint, param3:Boolean, param4:Boolean = false) : void
      {
         param2 = this.§3"D§(param2,param4);
         super.jump(param1,param2,param3,param4);
      }
      
      override protected function extraJump(param1:Number, param2:Number, param3:Boolean = true, param4:Boolean = false) : void
      {
         param2 = this.§3"D§(param2,param4);
         super.extraJump(param1,param2,param3,param4);
      }
      
      private function §3"D§(param1:uint, param2:Boolean) : uint
      {
         if(!param2)
         {
            if(this.isPowered)
            {
               this.isPowered = false;
               param1 -= this.§["e§;
               §]x§(-this.§["e§);
               §9"y§(-this.§["e§);
            }
         }
         else if(!this.isPowered)
         {
            this.isPowered = true;
            param1 += this.§["e§;
            §]x§(this.§["e§);
            §9"y§(this.§["e§);
         }
         return param1;
      }
   }
}

