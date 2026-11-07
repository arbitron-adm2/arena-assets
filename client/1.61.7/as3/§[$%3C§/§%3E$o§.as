package §[$<§
{
   import §#k§.*;
   import §7!B§.§&"T§;
   import §>%S§.§^!V§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   
   public class §>$o§ extends §>"9§
   {
      
      public var className:String;
      
      public var period:uint = 1;
      
      public var §'#F§:Boolean;
      
      public function §>$o§()
      {
         super();
      }
      
      public static function §<#=§(param1:String, param2:uint = 1, param3:Boolean = false) : §>$o§
      {
         var _loc4_:§>$o§ = new §>$o§();
         _loc4_.className = param1;
         _loc4_.period = param2;
         _loc4_.§'#F§ = param3;
         return _loc4_;
      }
      
      public function § s§(param1:§&"T§) : §>$o§
      {
         var _loc2_:§>$o§ = this.clone() as §>$o§;
         this.gobj = param1;
         return _loc2_;
      }
      
      override public function clone() : §>"9§
      {
         var _loc1_:§>$o§ = new §>$o§();
         _loc1_.gobj = gobj;
         _loc1_.className = this.className;
         _loc1_.period = this.period;
         _loc1_.§'#F§ = this.§'#F§;
         return _loc1_;
      }
   }
}

