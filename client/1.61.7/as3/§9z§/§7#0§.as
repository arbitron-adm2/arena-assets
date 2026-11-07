package §9z§
{
   import §%"1§.§@%;§;
   import §&#h§.§-"F§;
   import flash.display.MovieClip;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §7#0§ extends § !%§
   {
      
      public function §7#0§(param1:MovieClip, param2:Boolean = true)
      {
         super(param1,param2);
         §]"M§(§@%;§.§%"V§ * 100);
         §2&3§(§@%;§.§%"V§ * 10);
         §&X§(§@%;§.§%"V§ * 10);
         setValue(§"D§() - §8"%§.§&S§.§1$?§() * 100 + §<!@§());
         getChildByName("up_arrow").visible = false;
         getChildByName("down_arrow").visible = false;
      }
      
      override public function §[$'§() : void
      {
         var _loc1_:Number = (§"D§() - getValue() + §<!@§()) * 0.01;
         _loc1_ = Number(_loc1_.toFixed(1));
         if(_loc1_ != §8"%§.§&S§.§1$?§())
         {
            §8"%§.§&S§.§5#c§(_loc1_);
         }
      }
      
      override public function destroy() : void
      {
         §8"%§.§&S§.§5#c§(§8"%§.§&S§.§1$?§());
         super.destroy();
      }
   }
}

