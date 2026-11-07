package §9%W§
{
   import §2"L§.§^$y§;
   import §2#s§.*;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §^#[§.§&$2§;
   import flash.display.GradientType;
   import flash.display.Shape;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §""N§ extends §!7§
   {
      
      private var rayLength:uint;
      
      private var § #d§:Shape;
      
      private var §&T§:Boolean = false;
      
      private var colorLaser:uint;
      
      private var §%%_§:Number;
      
      private var § #L§:§&$2§;
      
      private var §@%M§:§&$2§;
      
      public function §""N§(param1:uint, param2:Number, param3:uint, param4:uint, param5:uint)
      {
         super();
         this.rayLength = param1;
         this.§%%_§ = param2;
         this.§ #L§ = new §&$2§(param3);
         this.§@%M§ = new §&$2§(param4);
         this.colorLaser = param5;
      }
      
      override protected function §&#k§() : void
      {
      }
      
      override protected function §<#S§() : void
      {
      }
      
      override public function §'"`§() : void
      {
         §,%r§(unit.weapon).rotateWeaponClip(angle);
      }
      
      override public function activate(param1:§+%]§) : void
      {
         if(!isActive())
         {
            super.activate(param1);
            this.§ #d§ = null;
            frames.value = 0;
            if(!§'k§)
            {
               §'k§ = new §`"i§(param1,this);
               §'k§.start(this.§@%M§.value,this.§ #L§.value,this.§%%_§);
            }
         }
      }
      
      override public function deactivate() : void
      {
         if(isActive())
         {
            super.deactivate();
            if(this.§ #d§ != null)
            {
               Application.scene.removeChild(this.§ #d§);
               this.§ #d§ = null;
            }
         }
      }
      
      private function §,!R§() : void
      {
         var _loc1_:Point = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Matrix = null;
         if(unit != null)
         {
            if(this.§ #d§ == null)
            {
               this.§ #d§ = new Shape();
            }
            if(frames.value % 4 == 0)
            {
               this.§&T§ = !this.§&T§;
            }
            _loc1_ = §,%r§(unit.weapon).getBarrelPoint(angle);
            _loc2_ = _loc1_.x;
            _loc3_ = _loc1_.y;
            _loc4_ = _loc1_.x + Math.cos(angle) * this.rayLength;
            _loc5_ = _loc1_.y + Math.sin(angle) * this.rayLength;
            this.§ #d§.graphics.clear();
            _loc6_ = this.§&T§ ? 0 : 0.1;
            this.§ #d§.graphics.lineStyle(2,0);
            _loc7_ = new Matrix();
            _loc7_.createGradientBox(this.rayLength * 2,this.rayLength * 2,0,unit.x - this.rayLength,unit.y - this.rayLength);
            this.§ #d§.graphics.lineGradientStyle(GradientType.RADIAL,[this.colorLaser,this.colorLaser],[1,_loc6_],[127,255],_loc7_);
            this.§ #d§.graphics.moveTo(_loc2_,_loc3_);
            this.§ #d§.graphics.lineTo(_loc4_,_loc5_);
            Application.scene.addChild(this.§ #d§);
         }
      }
      
      override public function §7$d§() : void
      {
         this.§,!R§();
      }
   }
}

