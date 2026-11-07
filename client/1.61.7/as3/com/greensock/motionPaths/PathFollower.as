package com.greensock.motionPaths
{
   import §2#V§.§-#U§;
   import flash.events.Event;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class PathFollower
   {
      
      public var path:MotionPath;
      
      public var autoRotate:Boolean;
      
      public var cachedProgress:Number;
      
      public var target:Object;
      
      public var cachedNext:PathFollower;
      
      public var rotationOffset:Number;
      
      public var cachedPrev:PathFollower;
      
      public function PathFollower(param1:Object, param2:Boolean = false, param3:Number = 0)
      {
         super();
         this.target = param1;
         this.autoRotate = param2;
         this.rotationOffset = param3;
         this.cachedProgress = 0;
      }
      
      public function get progress() : Number
      {
         return this.cachedProgress;
      }
      
      public function set progress(param1:Number) : void
      {
         if(param1 > 1)
         {
            param1 -= int(param1);
         }
         else if(param1 < 0)
         {
            param1 -= int(param1) - 1;
         }
         this.cachedProgress = param1;
         if(this.path)
         {
            this.path.renderObjectAt(this.target,param1,this.autoRotate,this.rotationOffset);
         }
      }
   }
}

