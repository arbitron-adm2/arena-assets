package §0!§
{
   import §7!B§.§&"T§;
   import §[$P§.§+H§;
   
   public class §9"u§
   {
      
      private var §?%q§:§7`§;
      
      private var §-F§:§7`§;
      
      private var §^v§:§8$Y§;
      
      private var §,!B§:§[k§;
      
      private var §]!,§:§+H§;
      
      public function §9"u§(param1:§&"T§, param2:int, param3:int, param4:int)
      {
         super();
         this.§^v§ = new §8$Y§(param1,param2);
         this.§?%q§ = new §7`§(param3);
         this.§-F§ = new §7`§(param4);
      }
      
      public function get attack() : §7`§
      {
         return this.§?%q§;
      }
      
      public function get armor() : §7`§
      {
         return this.§-F§;
      }
      
      public function get hp() : §8$Y§
      {
         return this.§^v§;
      }
      
      public function get §8$e§() : §[k§
      {
         return this.§,!B§;
      }
      
      public function set §8$e§(param1:§[k§) : void
      {
         this.§,!B§ = param1;
      }
      
      public function get jump() : §+H§
      {
         return this.§]!,§;
      }
      
      public function set jump(param1:§+H§) : void
      {
         this.§]!,§ = param1;
      }
      
      public function destroy() : void
      {
         if(this.§]!,§)
         {
            this.§]!,§.destroy();
            this.§]!,§ = null;
         }
         if(this.§,!B§)
         {
            this.§,!B§.destroy();
            this.§,!B§ = null;
         }
         this.§?%q§.destroy();
         this.§?%q§ = null;
         this.§-F§.destroy();
         this.§-F§ = null;
         this.§^v§.destroy();
         this.§^v§ = null;
      }
   }
}

