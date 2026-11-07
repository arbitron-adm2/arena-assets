package ru.pragmatix.preloader
{
   import §+$§.§-§;
   import §8"§.§`%§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.display.StageScaleMode;
   import flash.geom.Rectangle;
   
   public class §<&§
   {
      
      private static const §1#§:int = -200;
      
      private static const §&"§:uint = 1200;
      
      private static const §9$§:uint = 600;
      
      public function §<&§()
      {
         super();
      }
      
      public static function §5"§(param1:MovieClip, param2:Stage) : void
      {
         var _loc4_:Number = NaN;
         if(§-§.socialType != §`%§.§ $§ && §-§.socialType != §`%§.§>§)
         {
            param2.scaleMode = StageScaleMode.SHOW_ALL;
            param1.scrollRect = new Rectangle(0,0,§&"§,§9$§);
         }
         var _loc3_:uint = 800;
         if(§-§.socialType == §`%§.§ $§)
         {
            param2.scaleMode = StageScaleMode.NO_SCALE;
            if(param2.stageWidth > §&"§)
            {
               param1.scrollRect = new Rectangle(0,0,§&"§,§9$§);
               _loc4_ = param2.stageWidth / §&"§;
               param1.scaleX = _loc4_;
               param1.scaleY = _loc4_;
            }
            param1.x = param2.stageWidth > §&"§ ? (_loc3_ - param2.stageWidth) / 2 : §1#§ * (param1.height / §9$§);
            param1.y = param1.height > _loc3_ ? (_loc3_ - param1.height) / 4 : 0;
         }
         else if(§-§.socialType == §`%§.§>§)
         {
            param2.scaleMode = StageScaleMode.NO_SCALE;
            if(param2.stageWidth > §&"§)
            {
               param1.scrollRect = new Rectangle(0,0,§&"§,§9$§);
               _loc4_ = param2.stageWidth / §&"§;
               param1.scaleX = _loc4_;
               param1.scaleY = _loc4_;
               param1.y = 0;
            }
            param1.x = param2.stageWidth > §&"§ ? (_loc3_ - param2.stageWidth) / 2 : §1#§ * (param1.height / §9$§);
            param1.y = param1.height > _loc3_ ? (_loc3_ - param1.height) / 2 : 0;
         }
         else
         {
            param1.x = (param2.stageWidth - §&"§) / 2;
            param1.y = 0;
         }
      }
   }
}

