package §]#[§
{
   import §!$Z§.§"$I§;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §8#o§.§#$s§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §"!I§ extends §`&-§
   {
      
      private static const §'"r§:uint = 55;
      
      private static const §?%A§:uint = 15;
      
      private static const §"$@§:uint = 3;
      
      private static const §0%u§:String = "count";
      
      private var counter:uint = 0;
      
      private var §@%K§:Object = {};
      
      private var §]!'§:Vector.<uint> = new Vector.<uint>(0);
      
      private var §&&A§:Number = 0.8;
      
      public function §"!I§()
      {
         super(new Sprite());
         container.scaleX = container.scaleY = this.§&&A§;
      }
      
      public function §<#-§(param1:String, param2:String) : uint
      {
         var _loc3_:MovieClip = null;
         _loc3_ = §6#A§.§!&6§(param1);
         var _loc4_:§`&-§ = new §`&-§(_loc3_);
         _loc4_.setQtip(param2);
         addChild(_loc4_);
         var _loc5_:uint = ++this.counter;
         this.§@%K§[_loc5_] = _loc4_;
         this.update();
         return _loc5_;
      }
      
      public function §%%S§(param1:uint, param2:String) : void
      {
         var _loc3_:§`&-§ = this.§@%K§[param1];
         if(_loc3_)
         {
            _loc3_.setQtip(param2);
         }
      }
      
      private function update() : void
      {
         var _loc2_:§`&-§ = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.§@%K§)
         {
            _loc2_.x = (§'"r§ * this.§&&A§ + §?%A§) * _loc1_;
            _loc1_++;
            _loc2_.setVisible(_loc1_ <= §"$@§);
         }
      }
      
      public function §]& §(param1:uint) : void
      {
         var _loc2_:§`&-§ = this.§@%K§[param1];
         if(_loc2_)
         {
            if(_loc2_.getContainer() is MovieClip)
            {
               MovieClip(_loc2_.getContainer()).stop();
            }
            removeChild(_loc2_);
            delete this.§@%K§[param1];
            if(this.§]!'§.indexOf(param1) > -1)
            {
               this.§]!'§.splice(this.§]!'§.indexOf(param1),1);
            }
            this.update();
         }
      }
      
      public function §[#0§(param1:uint, param2:String, param3:String = "count") : void
      {
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:TextField = null;
         var _loc4_:§`&-§ = this.§@%K§[param1];
         if(_loc4_)
         {
            if(_loc4_.getContainer() is MovieClip)
            {
               _loc5_ = MovieClip(_loc4_.getContainer());
               if(this.§]!'§.indexOf(param1) > -1)
               {
                  _loc5_.gotoAndStop(0);
               }
               _loc6_ = _loc5_.getChildByName("icon") as MovieClip;
               _loc7_ = _loc6_.getChildByName(param3) as TextField;
               _loc7_.text = param2;
               if(this.§]!'§.indexOf(param1) > -1)
               {
                  _loc5_.play();
               }
            }
         }
      }
      
      public function §,#,§(param1:uint) : void
      {
         var mc:MovieClip = null;
         var alertId:uint = param1;
         var alertIcon:§`&-§ = this.§@%K§[alertId];
         if(Boolean(alertIcon) && this.§]!'§.indexOf(alertId) == -1)
         {
            if(alertIcon.getContainer() is MovieClip)
            {
               mc = MovieClip(alertIcon.getContainer());
               mc.gotoAndStop(0);
               mc.addFrameScript(mc.totalFrames - 1,function(... rest):void
               {
                  mc.stop();
               });
               this.§]!'§.push(alertId);
            }
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.clear();
      }
      
      private function clear() : void
      {
         var _loc1_:§`&-§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:String = null;
         for(_loc3_ in this.§@%K§)
         {
            _loc1_ = this.§@%K§[_loc3_];
            if(_loc1_.getContainer() is MovieClip)
            {
               _loc2_ = MovieClip(_loc1_.getContainer());
               _loc2_.stop();
            }
            removeChild(_loc1_);
         }
         this.§]!'§.length = 0;
         this.§]!'§ = null;
         this.§@%K§ = null;
      }
   }
}

