package §%%A§
{
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §7!B§.§&"T§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §6"A§ extends §&"T§
   {
      
      private static const §&"2§:int = 50;
      
      private static const §=2§:int = 100;
      
      private static const §1"P§:§5$n§ = §5$n§.§<#=§("",40,45,30);
      
      private var owner:§+%]§;
      
      private var §;$c§:Boolean = false;
      
      public function §6"A§(param1:§+%]§)
      {
         var val:Number = NaN;
         var incoming:Function = null;
         var owner:§+%]§ = param1;
         incoming = function(param1:Event):void
         {
            var _loc2_:MovieClip = MovieClip(param1.currentTarget);
            _loc2_.scaleX += val;
            _loc2_.scaleY += val;
            if(_loc2_.scaleX >= 1 || _loc2_.scaleY >= 1)
            {
               _loc2_.removeEventListener(Event.ENTER_FRAME,incoming);
            }
         };
         super(true,§@N§.§7&H§);
         this.owner = owner;
         this.clip = §6#A§.§!&6§("ArchbotStormCloud");
         this.x = owner.x + §8"%§.randomSeed.§,!q§(-§&"2§,§&"2§);
         this.y = §=2§;
         this.stable = true;
         Application.scene.§@$I§.§1$+§(this);
         this.clip.scaleX = 0.1;
         this.clip.scaleY = 0.1;
         val = 0.05;
         this.clip.addEventListener(Event.ENTER_FRAME,incoming);
      }
      
      public function attack() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         if(!this.§;$c§)
         {
            this.§;$c§ = true;
            _loc1_ = 4;
            if(this.owner.disposed)
            {
               _loc2_ = §8"%§.§?!W§.§4"m§.§6"M§(this.owner);
               _loc3_ = _loc2_[int(§8"%§.randomSeed.§,!q§(0,_loc2_.length - 1))];
               new §;d§(this.owner,this,§1"P§,§-q§.§@$H§(this,_loc3_),_loc1_);
            }
            else
            {
               new §;d§(this.owner,this,§1"P§,§-q§.§@$H§(this,this.owner),_loc1_);
            }
         }
      }
      
      public function hide() : void
      {
         var val:Number = NaN;
         if(!disposed)
         {
            val = 0.05;
            clip.addEventListener(Event.ENTER_FRAME,function hidding(param1:Event):void
            {
               var _loc2_:MovieClip = MovieClip(param1.currentTarget);
               _loc2_.scaleX -= val;
               _loc2_.scaleY -= val;
               if(_loc2_.scaleX <= 0.5 || _loc2_.scaleY <= 0.5)
               {
                  MovieClip(_loc2_).removeEventListener(Event.ENTER_FRAME,hidding);
                  disposed = true;
               }
            });
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         this.owner = null;
      }
      
      public function get §;#+§() : Boolean
      {
         return !disposed && !this.§;$c§;
      }
      
      public function get isUsed() : Boolean
      {
         return this.§;$c§;
      }
   }
}

