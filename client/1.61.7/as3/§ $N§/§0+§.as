package § $N§
{
   import §'!Z§.§[&$§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §0+§ extends §&"T§ implements §2%F§
   {
      
      private static const §9!"§:uint = 40;
      
      private var owner:§+%]§;
      
      private var damage:uint;
      
      private var §!$;§:§[&$§;
      
      private var enemies:Vector.<§+%]§>;
      
      public function §0+§(param1:§+%]§, param2:uint)
      {
         super();
         physicModel.stop();
         setSpeedXY(0,0);
         stable = true;
         clip = new MovieClip();
         this.§!$;§ = new §[&$§(clip,"TeleportationPointIdle","TeleportationPointBegin","TeleportationPointEnd");
         this.§!$;§.start();
         if(§8"%§.§&S§.§41§())
         {
            this.§!$;§.getClip().alpha = 0.5;
         }
         this.x = param1.x;
         this.y = param1.y - §<H§.§-#C§;
         this.owner = param1;
         this.damage = param2;
         Application.scene.addEventListener(§0%v§.EOT,this.§8%^§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(this.§-$c§(§9!"§,true))
         {
            disposed = true;
         }
      }
      
      public function §-$c§(param1:uint, param2:Boolean = false) : Boolean
      {
         var _loc4_:§+%]§ = null;
         var _loc3_:Boolean = false;
         if(!disposed)
         {
            this.enemies = §8"%§.§?!W§.§4"m§.§6"M§(this.owner);
            for each(_loc4_ in this.enemies)
            {
               if(Boolean(_loc4_) && Boolean(!_loc4_.disposed) && §-q§.distance(_loc4_.x,_loc4_.y,x,y) <= param1)
               {
                  §-#M§.§<$$§(x,y,_loc4_,this.damage);
                  if(param2)
                  {
                     dispatchEvent(new Event(§!!c§.SPHERE_DAMAGE));
                  }
                  _loc3_ = true;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §8%^§(param1:Event) : void
      {
         this.enemies = null;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.EOT,this.§8%^§);
         this.§!$;§.§=$5§(true);
         this.owner = null;
         this.enemies = null;
         super.§[$u§(param1);
      }
      
      public function §9$r§() : int
      {
         return §9!"§ + 20;
      }
   }
}

