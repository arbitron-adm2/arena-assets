package §[$<§
{
   import §'!Z§.§1"-§;
   import §7!B§.§&"T§;
   import §<V§.§!&-§;
   import flash.geom.Point;
   
   public class §[!$§ extends §;"E§
   {
      
      private var §7#Q§:Class;
      
      private var size:uint;
      
      private var p:Point = new Point();
      
      public function §[!$§(param1:§&"T§, param2:Class, param3:uint, param4:uint)
      {
         super(param1,param4);
         this.§7#Q§ = param2;
         this.size = param3;
      }
      
      override protected function §>$!§() : void
      {
         this.p.setTo(gobj.x,gobj.y);
         §1"-§.explode(this.§7#Q§,this.p.x,this.p.y,this.size,null,int.MIN_VALUE,true);
      }
      
      override public function remove() : void
      {
         super.remove();
         this.§7#Q§ = null;
         this.p = null;
      }
   }
}

