package §##j§
{
   import §0!Y§.§#!Z§;
   import §2B§.§#&E§;
   import §9%W§.§ !@§;
   import §@!i§.§=$,§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §>"M§ extends §9x§
   {
      
      private var _type:§#&E§;
      
      public function §>"M§(param1:uint, param2:§#&E§)
      {
         super(param1);
         this._type = param2;
         name = param2.§@!1§;
      }
      
      override public function toString() : String
      {
         return "{" + name + ",count=" + count + "}";
      }
      
      public function get type() : §#&E§
      {
         return this._type;
      }
   }
}

