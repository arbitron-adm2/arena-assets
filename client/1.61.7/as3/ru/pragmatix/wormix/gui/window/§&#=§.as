package ru.pragmatix.wormix.gui.window
{
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §#"V§.§0%9§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §%"Z§.§+$A§;
   import §&!?§.§+" §;
   import §&"c§.§5$n§;
   import §&#W§.§?#]§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§]&§;
   import §,$J§.§,$O§;
   import §-@§.*;
   import §0!§.§6#z§;
   import §0!§.§8$Y§;
   import §0%j§.*;
   import §0%z§.*;
   import §3"_§.*;
   import §6#Z§.§&!Z§;
   import §7!B§.§6#I§;
   import §8#<§.§!#^§;
   import §9%W§.§&!P§;
   import §9%W§.§`"y§;
   import §<%E§.§0#G§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=#g§.§&%5§;
   import §=&!§.§4$z§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §]^§.§4&+§;
   import §^!"§.§0^§;
   import §^!"§.§^$F§;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §&#=§ extends §0%9§ implements §^c§
   {
      
      private var §<S§:Dictionary = new Dictionary();
      
      private var states:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      public function §&#=§(param1:SimpleButton)
      {
         super(param1);
      }
      
      protected function §2S§(param1:MovieClip, param2:Vector.<String> = null) : void
      {
         var _loc4_:String = null;
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>(0);
         if(param1.totalFrames > 1)
         {
            _loc3_[0] = param1;
         }
         if(param2)
         {
            for each(_loc4_ in param2)
            {
               _loc3_[_loc3_.length] = §`o§.getChildByName(param1,_loc4_) as MovieClip;
            }
         }
         this.§<S§[param1] = _loc3_;
         this.states[this.states.length] = param1;
      }
      
      override public function setVisible(param1:Boolean) : void
      {
         super.setVisible(param1);
         if(param1)
         {
            this.playAnimations();
         }
         else
         {
            this.stopAnimations();
         }
      }
      
      public function playAnimations() : void
      {
         if(isVisible())
         {
            this.§8"S§(true);
         }
      }
      
      public function stopAnimations() : void
      {
         this.§8"S§(false);
      }
      
      public function §8"S§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Vector.<MovieClip> = null;
         var _loc4_:MovieClip = null;
         for each(_loc2_ in this.states)
         {
            _loc3_ = this.§<S§[_loc2_];
            for each(_loc4_ in _loc3_)
            {
               if(param1)
               {
                  _loc4_.play();
               }
               else
               {
                  _loc4_.stop();
               }
            }
         }
      }
      
      override public function destroy() : void
      {
         this.stopAnimations();
         super.destroy();
      }
   }
}

