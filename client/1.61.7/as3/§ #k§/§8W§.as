package § #k§
{
   import §!K§.§!!n§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+%S§.§,$p§;
   import §0&F§.§0%v§;
   import §4!!§.§76§;
   import §4!K§.*;
   import §65§.§6%E§;
   import §7!B§.§&"T§;
   import §<%J§.§!!`§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §8W§ extends §3%0§
   {
      
      private static const DAMAGE:uint = 35;
      
      public function §8W§(param1:§+%]§, param2:Number, param3:Number)
      {
         name = §#%v§;
         clips = [§5!f§,§%!M§,§ %[§];
         super(param1,param2,param3);
         Application.scene.addEventListener(§0%v§.EOT,this.§8$n§);
      }
      
      public function §8$n§(param1:Event) : void
      {
         if(!Application.scene.§@$I§.§=%d§())
         {
            this.§+!U§();
         }
      }
      
      override protected function §+!U§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         var _loc2_:uint = _loc1_.length;
         if(_loc2_ > 0)
         {
            _loc3_ = _loc1_[§8"%§.randomSeed.§,!q§(0,_loc2_ - 1)];
            turn(_loc3_.x);
            §@%;§.play(§`!v§.§#%u§);
            new §76§(owner,x,y,_loc3_,§'!Y§,30,DAMAGE);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.EOT,this.§8$n§);
         super.§[$u§(param1);
      }
   }
}

