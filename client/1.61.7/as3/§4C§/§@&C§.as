package §4C§
{
   import §=#g§.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.events.Event;
   
   public class §@&C§
   {
      
      private var §8"h§:String;
      
      private var §7#h§:String;
      
      private var §5$i§:String;
      
      private var §!"z§:String;
      
      private var §'#B§:String;
      
      public function §@&C§(param1:String = "", param2:String = "", param3:String = "", param4:String = "", param5:String = "")
      {
         super();
         this.§'#B§ = param2;
         this.§!"z§ = param5;
         this.§5$i§ = param1;
         this.§7#h§ = param4;
         this.§8"h§ = param3;
      }
      
      public function get pid() : String
      {
         return this.§8"h§;
      }
      
      public function set pid(param1:String) : void
      {
         this.§8"h§ = param1;
      }
      
      public function get aid() : String
      {
         return this.§7#h§;
      }
      
      public function set aid(param1:String) : void
      {
         this.§7#h§ = param1;
      }
      
      public function get src() : String
      {
         return this.§5$i§;
      }
      
      public function set src(param1:String) : void
      {
         this.§5$i§ = param1;
      }
      
      public function get owner() : String
      {
         return this.§!"z§;
      }
      
      public function set owner(param1:String) : void
      {
         this.§!"z§ = param1;
      }
      
      public function get srcSmall() : String
      {
         return this.§'#B§;
      }
      
      public function set srcSmall(param1:String) : void
      {
         this.§'#B§ = param1;
      }
   }
}

