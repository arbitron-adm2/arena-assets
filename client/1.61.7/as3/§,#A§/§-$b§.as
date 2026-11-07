package §,#A§
{
   import §!L§.§+"'§;
   import §%#u§.§`"_§;
   import §+$=§.§6#A§;
   import §7$t§.§&!e§;
   import §?$7§.§+#N§;
   import §@$§.*;
   import flash.display.GradientType;
   import flash.display.InterpolationMethod;
   import flash.display.Shape;
   import flash.display.SpreadMethod;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §-$b§ extends Shape
   {
      
      private const §7#!§:uint = 9;
      
      private var k:Number;
      
      private var wind:Number;
      
      private var owner:§^"T§;
      
      public function §-$b§(param1:§^"T§)
      {
         super();
         this.owner = param1;
         var _loc2_:Matrix = new Matrix();
         _loc2_.createGradientBox(this.§7#!§,this.§7#!§,Math.PI,-(this.§7#!§ >> 1),-(this.§7#!§ >> 1));
         this.graphics.beginGradientFill(GradientType.RADIAL,[16777215,16777215],[1,0],[0,255],_loc2_,SpreadMethod.PAD,InterpolationMethod.LINEAR_RGB,0);
         graphics.drawCircle(0,0,this.§7#!§);
         graphics.endFill();
      }
      
      public function init(param1:int = 1) : void
      {
         alpha = 0.2 + Math.random() * 0.6;
         x = Math.random() * Application.instance.§4$!§;
         y = Math.random() * Application.instance.§"#!§;
         scaleX = this.scaleY = 0.5 + Math.random() * param1;
         this.k = 2 + Math.random() << 1;
         this.wind = -3 + Math.random() * 6;
      }
      
      public function update() : void
      {
         y += this.k;
         x += this.wind;
         if(y > Application.instance.§"#!§ + 10)
         {
            y = -20;
         }
         if(x > Application.instance.§4$!§ + 20 || x < -20)
         {
            x = Math.random() * Application.instance.§4$!§;
            y = -20;
         }
      }
   }
}

