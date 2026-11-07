package § #g§
{
   import §7"Q§.§0$L§;
   import §7"Q§.§0-§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class §##o§ extends §0-§
   {
      
      public function §##o§(param1:MovieClip)
      {
         super(param1);
         prev.removeAllWhenDisabled = true;
         next.removeAllWhenDisabled = true;
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §,!n§ = false;
         §<"b§ = false;
      }
      
      override public function setData(param1:Array) : void
      {
         super.setData(param1);
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §0!d§(param1 as MovieClip);
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         param1.setDisabled(param2 == null);
         super.§3u§(param1,param2,param3);
      }
      
      override public function hide() : void
      {
         super.hide();
         destroy();
      }
      
      override public function update() : void
      {
         super.update();
         var _loc1_:Boolean = store.§<v§() && store.§"$!§();
         prev.setVisible(!_loc1_);
         next.setVisible(!_loc1_);
      }
   }
}

