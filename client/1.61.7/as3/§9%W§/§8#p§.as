package §9%W§
{
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §2!-§.§'5§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<%k§.§`!v§;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §8#p§ extends §9#"§
   {
      
      private static const §'#0§:uint = 80;
      
      private static const §8&'§:uint = 60;
      
      private static const §%#P§:uint = 140;
      
      private static const §6#w§:uint = 50;
      
      private static const §+%v§:uint = 50;
      
      private static const §5"o§:int = 300;
      
      private static const §-=§:int = 5;
      
      private var §"#8§:MovieClip;
      
      public var §9!0§:Boolean = false;
      
      private var §'$9§:Function;
      
      private var §4%i§:Function;
      
      private var lcPoint:Point = new Point(0,0);
      
      private var §]"]§:int;
      
      private var §&#J§:int;
      
      private var § $"§:int;
      
      private var §[#H§:Boolean = false;
      
      public function §8#p§(param1:Function = null, param2:Function = null)
      {
         super();
         this.§'$9§ = param1;
         this.§4%i§ = param2;
         this.§"#8§ = § !@§.§0#[§;
         §;!G§ = [§#!Z§.§'#§,§#!Z§.§#B§];
      }
      
      private function §2$$§() : void
      {
         if(!this.§[#H§)
         {
            Mouse.hide();
            this.§"#8§.x = Application.scene.mouseX;
            this.§"#8§.y = Application.scene.mouseY;
            Application.scene.addChild(this.§"#8§);
            this.§[#H§ = true;
         }
      }
      
      private function §9!f§() : void
      {
         if(this.§[#H§)
         {
            Application.scene.removeChild(this.§"#8§);
            Mouse.show();
            this.§[#H§ = false;
         }
      }
      
      override public function activate(param1:§+%]§) : void
      {
         if(!isActive())
         {
            super.activate(param1);
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               this.§2$$§();
               Application.scene.addEventListener(Event.ENTER_FRAME,this.§>W§,false,int.MIN_VALUE);
               Application.scene.addEventListener(MouseEvent.CLICK,this.§=#=§,false);
               §+# §.§"$T§.activate();
            }
            if(param1.direction == §+%]§.LEFT)
            {
               §,%r§(param1.weapon).rotateWeaponClip(Math.PI);
            }
            else
            {
               §,%r§(param1.weapon).rotateWeaponClip(0);
            }
            this.§]"]§ = this.§&#J§ = this.§ $"§ = 0;
         }
      }
      
      private function §=#=§(param1:MouseEvent) : void
      {
         if(getTimer() - this.§]"]§ < §5"o§ && Math.abs(this.§"#8§.x - this.§&#J§) < §-=§ && Math.abs(this.§"#8§.y - this.§ $"§) < §-=§)
         {
            param1.stopPropagation();
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §#!Z§.fire(§#!Z§.§'#§,this.§"#8§.x,this.§"#8§.y);
            }
         }
         this.§]"]§ = getTimer();
         this.§&#J§ = this.§"#8§.x;
         this.§ $"§ = this.§"#8§.y;
      }
      
      override public function §2!^§(param1:int, param2:int) : void
      {
         if(this.§'$9§ != null && !this.§'$9§(param1,param2))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §@%;§.play(§`!v§.§2$e§);
               §#!Z§.fire(§#!Z§.§[!E§);
            }
            return;
         }
         this.§9!0§ = true;
         §@%;§.play(§`!v§.§1M§);
         var _loc3_:§!!q§ = new §!!q§();
         _loc3_.point = new Point(param1,param2);
         dispatchEvent(new §'5§(_loc3_));
      }
      
      override public function charge(param1:Boolean) : void
      {
         if(isActive() && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            §#!Z§.fire(§#!Z§.§'#§,this.§"#8§.x,this.§"#8§.y);
         }
      }
      
      private function §>W§(param1:Event) : void
      {
         this.lcPoint.setTo(Application.scene.mouseX,Application.scene.mouseY);
         var _loc2_:Point = Application.scene.localToGlobal(this.lcPoint);
         if(_loc2_.y < §'#0§ && (_loc2_.x < §8&'§ || _loc2_.x > § "N§.stageWidth - §%#P§) || _loc2_.x < §6#w§ || _loc2_.x > § "N§.stageWidth - §+%v§)
         {
            this.§9!f§();
         }
         else
         {
            this.§2$$§();
            this.§"#8§.x = this.lcPoint.x;
            this.§"#8§.y = this.lcPoint.y;
            Application.scene.setChildIndex(this.§"#8§,Application.scene.numChildren - 1);
            if(this.§4%i§ != null)
            {
               this.§4%i§(this.§"#8§.x,this.§"#8§.y);
            }
         }
      }
      
      override public function deactivate() : void
      {
         if(isActive())
         {
            super.deactivate();
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §+# §.§"$T§.deactivate();
               Application.scene.removeEventListener(Event.ENTER_FRAME,this.§>W§);
               Application.scene.removeEventListener(MouseEvent.CLICK,this.§=#=§,false);
               this.§9!f§();
            }
         }
      }
      
      public function §1%_§() : MovieClip
      {
         return this.§"#8§;
      }
      
      public function setCrosshairClip(param1:MovieClip) : void
      {
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            if(isActive())
            {
               this.§9!f§();
            }
            this.§"#8§ = param1;
            if(isActive())
            {
               this.§2$$§();
            }
         }
      }
   }
}

