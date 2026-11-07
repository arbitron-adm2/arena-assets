package §[$<§
{
   import §'!Z§.§1"-§;
   import §+%S§.§2&>§;
   import §2#H§.§,"R§;
   import §7!B§.§&"T§;
   import §9%W§.§`"y§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §>!u§ extends §>"9§
   {
      
      public var §7#Q§:Class;
      
      public var size:uint;
      
      public var period:uint = 2;
      
      public function §>!u§()
      {
         super();
      }
      
      public static function §<#=§(param1:Class, param2:uint, param3:uint = 2) : §>!u§
      {
         var _loc4_:§>!u§ = new §>!u§();
         _loc4_.§7#Q§ = param1;
         _loc4_.size = param2;
         _loc4_.period = param3;
         return _loc4_;
      }
      
      public function § s§(param1:§&"T§) : §>!u§
      {
         var _loc2_:§>!u§ = this.clone() as §>!u§;
         this.gobj = param1;
         return _loc2_;
      }
      
      override public function clone() : §>"9§
      {
         var _loc1_:§>!u§ = new §>!u§();
         _loc1_.gobj = gobj;
         _loc1_.§7#Q§ = this.§7#Q§;
         _loc1_.size = this.size;
         _loc1_.period = this.period;
         return _loc1_;
      }
      
      override public function toString() : String
      {
         return "SmokeTrailParams{" + "gobj=" + gobj + "}";
      }
   }
}

