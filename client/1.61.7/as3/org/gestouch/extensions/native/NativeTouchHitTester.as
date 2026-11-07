package org.gestouch.extensions.native
{
   import §%L§.§%%w§;
   import §3#a§.*;
   import §7!B§.§&"T§;
   import §=#g§.*;
   import com.inreflected.forks.spark.effects.animation.Keyframe;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.geom.Point;
   import org.gestouch.core.ITouchHitTester;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public final class NativeTouchHitTester implements ITouchHitTester
   {
      
      public function NativeTouchHitTester()
      {
         super();
      }
      
      public function hitTest(param1:Point, param2:InteractiveObject) : Object
      {
         return param2;
      }
   }
}

