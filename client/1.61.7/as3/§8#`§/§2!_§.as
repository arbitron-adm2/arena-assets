package §8#`§
{
   import § !8§.§`!d§;
   
   public class §2!_§ extends §4"y§ implements §#%r§
   {
      
      protected static const §%#>§:String = §%%e§ + "ru/";
      
      public function §2!_§()
      {
         super();
      }
      
      override public function §5&<§(param1:§`!d§) : String
      {
         return §"%L§ + param1.configName + §"$x§;
      }
      
      override public function get callToPvp() : Array
      {
         return [§%#>§ + "allStatusesDoneMini" + §"$x§,§%#>§ + "comeToBattle" + §"$x§,§%#>§ + "readyToBattle" + §"$x§];
      }
      
      override public function get requestPumpReaction() : String
      {
         return §%#>§ + "reactionRequest" + §"$x§;
      }
   }
}

