package §&"c§
{
   import § &5§.§@N§;
   import § K§.§2""§;
   import §#",§.*;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%# §.*;
   import §%L§.§%%w§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1#p§.§"Z§;
   import §2#s§.*;
   import §2B§.§#&E§;
   import §7!B§.§&"T§;
   import §="z§.§9%1§;
   import §?$7§.§!§;
   import §?$7§.§+l§;
   import §?$7§.§6&'§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#o§.§%%2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§]$y§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetFriendsForMission;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §!!q§
   {
      
      private static const NULL:int = int.MIN_VALUE;
      
      public static const EMPTY:§!!q§ = new §!!q§();
      
      public var angle:Number = NaN;
      
      public var power:int = -2147483648;
      
      public var timer:int = -2147483648;
      
      public var point:Point = null;
      
      public var §3f§:int = -2147483648;
      
      public var isAlternate:Boolean = false;
      
      public var additionalParams:Object;
      
      public function §!!q§()
      {
         super();
      }
      
      public function §'#q§(param1:§!!q§) : void
      {
         if(!isNaN(param1.angle))
         {
            this.angle = param1.angle;
         }
         if(param1.power != NULL)
         {
            this.power = param1.power;
         }
         if(param1.timer != NULL)
         {
            this.timer = param1.timer;
         }
         if(param1.point != null)
         {
            this.point = new Point(param1.point.x,param1.point.y);
         }
         if(param1.§3f§ != NULL)
         {
            this.§3f§ = param1.§3f§;
         }
         if(param1.isAlternate)
         {
            this.isAlternate = true;
         }
         if(param1.additionalParams)
         {
            this.additionalParams = param1.additionalParams;
         }
      }
   }
}

