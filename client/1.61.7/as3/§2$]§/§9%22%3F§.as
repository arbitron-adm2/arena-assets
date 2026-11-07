package §2$]§
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §&#h§.§-"F§;
   import §'!Z§.§2!H§;
   import §2!-§.DamageEvent;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6#Z§.§&!Z§;
   import §7$t§.§2"y§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §@<§.§+%]§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   use namespace gestouch_internal;
   
   public class §9"?§ extends §`&-§
   {
      
      public static const §+$e§:uint = 55;
      
      private var cells:Vector.<§9I§> = new Vector.<§9I§>(0);
      
      public function §9"?§()
      {
         super(new Sprite());
      }
      
      public function update() : void
      {
         var _loc1_:§9I§ = null;
         var _loc2_:§9I§ = null;
         var _loc3_:§2"y§ = null;
         var _loc5_:§2"y§ = null;
         var _loc6_:Boolean = false;
         this.clear();
         var _loc4_:Vector.<§2"y§> = Application.userProfile.§,%o§().§8##§();
         for each(_loc5_ in _loc4_)
         {
            if(§#$O§.§]A§(_loc5_.getId()))
            {
               _loc6_ = _loc5_.getType() == §##L§.REACTION_SMALL || _loc5_.getType() == §##L§.REACTION_LARGE;
               if(!_loc3_ || !_loc6_)
               {
                  _loc1_ = new §9I§(_loc5_);
                  addChild(_loc1_);
                  if(this.cells.length > 0)
                  {
                     _loc1_.y = this.cells[this.cells.length - 1].y + §+$e§ + 3;
                  }
                  this.cells.push(_loc1_);
                  if(_loc6_)
                  {
                     _loc3_ = _loc5_;
                     _loc2_ = _loc1_;
                  }
               }
               else if(_loc3_.getType() <= _loc5_.getType())
               {
                  _loc1_ = new §9I§(_loc5_);
                  addChild(_loc1_);
                  _loc1_.y = this.cells[this.cells.indexOf(_loc2_)].y;
                  removeChild(this.cells[this.cells.indexOf(_loc2_)]);
                  this.cells[this.cells.indexOf(_loc2_)].destroy();
                  this.cells[this.cells.indexOf(_loc2_)] = _loc1_;
               }
            }
         }
      }
      
      private function clear() : void
      {
         var _loc1_:§9I§ = null;
         for each(_loc1_ in this.cells)
         {
            removeChild(_loc1_);
            _loc1_.destroy();
         }
         this.cells = new Vector.<§9I§>(0);
      }
   }
}

