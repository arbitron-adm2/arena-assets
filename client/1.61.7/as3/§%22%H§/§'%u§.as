package §"%H§
{
   import §^#[§.§&$2§;
   
   public class §'%u§ implements §6$3§
   {
      
      private var §9!4§:§&$2§;
      
      private var §"$]§:String;
      
      private var §5!A§:Vector.<§`"w§>;
      
      private var §3&F§:Boolean;
      
      public function §'%u§(param1:int, param2:String, param3:String, param4:Object, param5:String, param6:uint, param7:Boolean = false)
      {
         super();
         this.§9!4§ = new §&$2§(param1);
         this.§"$]§ = param3;
         this.§5!A§ = new Vector.<§`"w§>(0);
         this.§5!A§.push(new §`"w§(param2,param4,1,param5,param6));
         this.§3&F§ = param7;
      }
      
      public function get id() : int
      {
         return this.§9!4§.value;
      }
      
      public function get levels() : Vector.<§`"w§>
      {
         return this.§5!A§;
      }
      
      public function §]G§(param1:uint) : String
      {
         return this.§"$]§;
      }
      
      public function get isTotal() : Boolean
      {
         return this.§3&F§;
      }
   }
}

