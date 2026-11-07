package §-%w§
{
   import § !P§.§1!8§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §&&6§.§7$§;
   import §-8§.*;
   import §0%[§.§0%§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2"L§.§,'§;
   import §4#2§.§,%g§;
   import §5!9§.§6$,§;
   import §6"'§.§&"3§;
   import §8#o§.§#$s§;
   import §8$V§.*;
   import §;#O§.§+%7§;
   import §=1§.*;
   import §=7§.§?%4§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§>#r§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   use namespace gestouch_internal;
   
   public class §7!G§ extends §>#r§
   {
      
      private var §4#x§:SimpleButton;
      
      protected var disable:Boolean = true;
      
      private var §<&4§:Number;
      
      protected var bg:DisplayObjectContainer;
      
      protected var §<o§:Number;
      
      protected var §^&+§:Number;
      
      public function §7!G§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      protected function init() : void
      {
         this.bg = container["bg"];
         this.§4#x§ = this.bg["helpBtn"];
         this.§4#x§.addEventListener(MouseEvent.CLICK,this.click);
         this.§<&4§ = this.bg.x;
      }
      
      protected function click(param1:MouseEvent = null) : void
      {
         this.§`$H§(0.25);
      }
      
      protected function §`$H§(param1:Number) : void
      {
         this.§4#x§.removeEventListener(MouseEvent.CLICK,this.click);
         TweenMax.to(this.bg,param1,{
            "x":(this.disable ? this.§<o§ : this.§<&4§),
            "onComplete":this.onCompleteTween
         });
      }
      
      protected function onCompleteTween() : void
      {
         this.§4#x§.addEventListener(MouseEvent.CLICK,this.click);
         this.disable = !this.disable;
      }
      
      protected function §"%s§(param1:String, param2:String) : void
      {
      }
   }
}

