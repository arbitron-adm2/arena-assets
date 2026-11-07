package §8$V§
{
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §0%[§.§0%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.RestrictionItemStructure;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §^#§
   {
      
      public static const §2%I§:int = 0;
      
      public static const §+#r§:int = 1;
      
      public static const §8#R§:int = 2;
      
      public static const §8%D§:int = 3;
      
      private var §#"-§:Vector.<RestrictionItemStructure>;
      
      public function §^#§()
      {
         super();
      }
      
      public function get list() : Vector.<RestrictionItemStructure>
      {
         return this.§#"-§;
      }
      
      public function set list(param1:Vector.<RestrictionItemStructure>) : void
      {
         this.§#"-§ = param1;
      }
      
      public function §9#]§(param1:int) : Boolean
      {
         var _loc2_:RestrictionItemStructure = null;
         for each(_loc2_ in this.§#"-§)
         {
            if(_loc2_.blocks.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §9$#§(param1:int) : String
      {
         var _loc2_:RestrictionItemStructure = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.§#"-§)
         {
            if(_loc2_.blocks.indexOf(param1) > -1 && _loc2_.endDate > 0)
            {
               _loc3_ = §0#2§.§3"?§(_loc2_.endDate);
               return §0%§.format(§0$N§.RESTRICT_FOR,{"date":_loc3_});
            }
         }
         return "";
      }
   }
}

