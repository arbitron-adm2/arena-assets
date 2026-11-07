package §8"§
{
   import §0§.§+!§;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   
   public class §-&§ implements §@%§
   {
      
      protected var type:§`%§;
      
      protected var §4#§:§+!§;
      
      public function §-&§(param1:§`%§, param2:§+!§)
      {
         super();
         this.type = param1;
         this.§4#§ = param2;
      }
      
      public function init(param1:DisplayObject) : Boolean
      {
         return true;
      }
      
      public function §#!§(param1:Function) : void
      {
         param1();
      }
      
      public function §&&§() : String
      {
         throw new IllegalOperationError();
      }
      
      public function get socialType() : §`%§
      {
         return this.type;
      }
      
      public function §5#§() : String
      {
         return null;
      }
      
      public function §'$§() : String
      {
         return null;
      }
      
      public function §5$§() : String
      {
         return null;
      }
      
      public function §]"§() : String
      {
         return null;
      }
      
      public function get language() : §+!§
      {
         return this.§4#§;
      }
   }
}

