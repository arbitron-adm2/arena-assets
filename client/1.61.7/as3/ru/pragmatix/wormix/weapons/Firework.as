package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §,#_§.FrameTimer;
   import §0&F§.FrameTimerEvent;
   import §2#i§.§+%z§;
   import §3#T§.§ !1§;
   import §4f§.§-&§;
   import §7!B§.§6#I§;
   import §8#a§.ShopMenu;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §]$v§.§"";§;
   import §^#[§.§&$2§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.filters.DropShadowFilter;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class Firework extends §,%r§
   {
      
      private static const dropShadowFilter:DropShadowFilter = new DropShadowFilter(1,45,0,1,2,2,2);
      
      private var ch:int;
      
      private var § #d§:Shape;
      
      private var §0"a§:int = 0;
      
      private var §^$%§:int = 10;
      
      public function Firework()
      {
         super();
         §"#z§ = §2$"§ = 20;
         this.ch = §7&§(new §&!P§());
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(param1.extendedCrosshair)
         {
            this.§^$%§ = 20;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         startFrameListening();
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         §2#G§();
         if(this.§ #d§ != null)
         {
            Application.scene.removeChild(this.§ #d§);
            this.§ #d§ = null;
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         this.§,!R§();
      }
      
      override protected function §`%V§() : void
      {
         var dummy:§6#I§ = null;
         var tmpOwner:§+%]§ = null;
         dummy = new § !1§(owner,property.clipName);
         var ft:FrameTimer = new FrameTimer(84,1);
         tmpOwner = owner;
         ft.addEventListener(FrameTimerEvent.§;$>§,function(param1:Event):void
         {
            var _loc2_:§"";§ = null;
            if(!dummy.disposed)
            {
               _loc2_ = new §"";§(tmpOwner,dummy.x,dummy.y - 40,paramSet);
               if(tmpOwner.squad.isLocal())
               {
                  _loc2_.customSource = §<$c§.§ !=§(§+%z§.FIREWORK);
               }
               if(property.ignoreMagnet)
               {
                  _loc2_.§!!=§(§-&§.IGNORE_MAGNET);
               }
               if(property.drillDistance)
               {
                  _loc2_.setDrillDistance(§&$2§(property.drillDistance).value);
               }
               if(property.damageType)
               {
                  _loc2_.damageType = property.damageType;
               }
               dummy.disposed = true;
               §@%;§.play(§`!v§.§'$f§);
            }
            §=#P§.§6+§();
         });
         ft.start();
         §?!K§();
      }
      
      private function §,!R§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!owner)
         {
            return;
         }
         if(this.§ #d§ != null)
         {
            Application.scene.removeChild(this.§ #d§);
         }
         this.§ #d§ = new Shape();
         this.§ #d§.graphics.lineStyle(1,15623731);
         this.§0"a§ += 2;
         if(this.§0"a§ >= 30)
         {
            this.§0"a§ = 0;
         }
         this.§ #d§.graphics.beginFill(15623731);
         var _loc1_:int = 1;
         while(_loc1_ < this.§^$%§)
         {
            _loc2_ = owner.x + (owner.direction == §+%]§.LEFT ? 9 : -9);
            _loc3_ = owner.y - 10 - (30 * _loc1_ + this.§0"a§);
            this.§ #d§.graphics.drawCircle(_loc2_,_loc3_,1);
            _loc1_++;
         }
         this.§ #d§.filters = [dropShadowFilter];
         Application.scene.addChild(this.§ #d§);
      }
   }
}

