package §4$b§
{
   import § !8§.§`!d§;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §;$%§.§'%W§;
   import §@<§.§+%]§;
   import §[$<§.§>$o§;
   import com.greensock.TweenMax;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   
   public class §2m§
   {
      
      public static const §&#3§:String = "onstable";
      
      public static const §-w§:String = "permanent";
      
      public var clip:MovieClip;
      
      public var direction:§@!o§ = §@!o§.RIGHT;
      
      public var visible:Boolean = false;
      
      public var tween:TweenMax;
      
      public var dx:int;
      
      public var dy:int;
      
      public var needRotate:Boolean;
      
      public var allowTransform:Boolean;
      
      public var §<S§:Vector.<MovieClip>;
      
      public function §2m§(param1:MovieClip, param2:int, param3:int, param4:Boolean = true, param5:Boolean = true)
      {
         super();
         this.clip = param1;
         this.dx = param2;
         this.dy = param3;
         param1.x = param2 * this.direction.value;
         param1.y = param3;
         this.needRotate = param4;
         this.allowTransform = param5;
      }
      
      public function §1!G§(param1:§@!o§) : void
      {
         this.clip.x = this.dx * param1.value;
         this.clip.y = this.dy;
      }
   }
}

