package §9%W§
{
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Point;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §>!$§
   {
      
      public static const §4"<§:uint = 12;
      
      public static const §>%@§:uint = 25;
      
      public static const §7$P§:uint = 25;
      
      private var _shape:Shape = new Shape();
      
      private var ammoSpeed:uint;
      
      private var §-"s§:uint;
      
      private var §2!L§:uint;
      
      private var §7#C§:int;
      
      private var §4%I§:Vector.<§]%G§>;
      
      public function §>!$§(param1:uint, param2:Vector.<§]%G§> = null, param3:uint = 25, param4:uint = 25, param5:int = 0)
      {
         super();
         this.ammoSpeed = param1;
         this.§-"s§ = param3;
         this.§2!L§ = param4;
         this.§7#C§ = param5;
         this.§4%I§ = param2 || new Vector.<§]%G§>();
      }
      
      public function draw(param1:§+%]§, param2:Number, param3:MovieClip) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Vector.<Point> = null;
         var _loc6_:int = 0;
         if(param1 != null)
         {
            this._shape.graphics.clear();
            _loc4_ = §,%r§(param1.weapon).getBarrelPoint(param2);
            _loc5_ = §7z§.§"#s§(_loc4_.x,_loc4_.y,param2,this.ammoSpeed,this.§4%I§,Math.ceil(this.§-"s§ * this.§2!L§ / this.ammoSpeed),int(this.ammoSpeed / this.§2!L§),this.§7#C§);
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               this._shape.graphics.beginFill(16777215);
               this._shape.graphics.drawCircle(_loc5_[_loc6_].x,_loc5_[_loc6_].y,2);
               _loc6_++;
            }
            param3.x = _loc5_[_loc5_.length - 1].x;
            param3.y = _loc5_[_loc5_.length - 1].y;
         }
      }
      
      public function get §3"f§() : Shape
      {
         return this._shape;
      }
   }
}

