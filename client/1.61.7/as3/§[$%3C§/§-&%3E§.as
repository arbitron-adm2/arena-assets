package §[$<§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §0%[§.Cookie;
   import §7!B§.§&"T§;
   import §=!C§.§0"l§;
   import §`"p§.*;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §-&>§ extends §>"9§
   {
      
      public var length:int;
      
      public var width:Number;
      
      public var fColor:uint;
      
      public var gColor:uint;
      
      public var yCoeff:Number = 0.997;
      
      public var useFilters:Boolean;
      
      public var alpha:Number = 1;
      
      public function §-&>§()
      {
         super();
      }
      
      public static function §<#=§(param1:int, param2:Number, param3:uint, param4:uint, param5:Number = 0.997, param6:Boolean = false, param7:Number = 1) : §-&>§
      {
         var _loc8_:§-&>§ = new §-&>§();
         _loc8_.length = param1;
         _loc8_.width = param2;
         _loc8_.fColor = param3;
         _loc8_.gColor = param4;
         _loc8_.yCoeff = param5;
         _loc8_.useFilters = param6;
         _loc8_.alpha = param7;
         return _loc8_;
      }
      
      public function § s§(param1:§&"T§) : §-&>§
      {
         var _loc2_:§-&>§ = this.clone() as §-&>§;
         this.gobj = param1;
         return _loc2_;
      }
      
      override public function clone() : §>"9§
      {
         var _loc1_:§-&>§ = new §-&>§();
         _loc1_.gobj = gobj;
         _loc1_.length = this.length;
         _loc1_.width = this.width;
         _loc1_.fColor = this.fColor;
         _loc1_.gColor = this.gColor;
         _loc1_.yCoeff = this.yCoeff;
         _loc1_.useFilters = this.useFilters;
         _loc1_.alpha = this.alpha;
         return _loc1_;
      }
      
      override public function toString() : String
      {
         return "DrawingTrailParams{" + "gobj=" + gobj + "}";
      }
   }
}

