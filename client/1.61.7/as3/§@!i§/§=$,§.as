package §@!i§
{
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §9%W§.§&!P§;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   
   public class §=$,§
   {
      
      public static const FUZY:§=$,§ = new §=$,§(1,"fuzy");
      
      public static const RUBY:§=$,§ = new §=$,§(2,"ruby");
      
      public static const §]!3§:§=$,§ = new §=$,§(3,"token");
      
      public static const REACTION:§=$,§ = new §=$,§(4,"reaction");
      
      public static const §<$e§:§=$,§ = new §=$,§(5,"weapon");
      
      public static const §!&F§:§=$,§ = new §=$,§(7,"key");
      
      public static const §=$K§:§=$,§ = new §=$,§(11,"exp");
      
      public static const §^5§:§=$,§ = new §=$,§(13,"wager");
      
      public static const §#E§:§=$,§ = new §=$,§(14,"boss");
      
      private var §?!,§:String;
      
      private var §%T§:uint;
      
      public function §=$,§(param1:uint, param2:String)
      {
         super();
         this.§?!,§ = param2;
         this.§%T§ = param1;
      }
      
      public static function valueOf(param1:int) : §=$,§
      {
         switch(param1)
         {
            case FUZY.§%T§:
               return FUZY;
            case RUBY.§%T§:
               return RUBY;
            case §]!3§.§%T§:
               return §]!3§;
            case REACTION.§%T§:
               return REACTION;
            case §<$e§.§%T§:
               return §<$e§;
            case §!&F§.§%T§:
               return §!&F§;
            case §=$K§.§%T§:
               return §=$K§;
            case §^5§.§%T§:
               return §^5§;
            case §#E§.§%T§:
               return §#E§;
            default:
               return null;
         }
      }
      
      public function get value() : String
      {
         return this.§?!,§;
      }
      
      public function equals(param1:§=$,§) : Boolean
      {
         return param1.§?!,§ == this.§?!,§;
      }
      
      public function toString() : String
      {
         return "DailyBonusType{value=" + this.§?!,§ + ",serverCode=" + this.§%T§ + "}";
      }
      
      public function get serverCode() : uint
      {
         return this.§%T§;
      }
   }
}

