package §7!B§
{
   import § #9§.§3L§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §#k§.§9$v§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §=$#§.§1!$§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§;#L§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §`"d§ extends §&"T§
   {
      
      public var radius:uint;
      
      public var target:§+%]§;
      
      public var callback:Function;
      
      public var §^&;§:Boolean;
      
      public function §`"d§(param1:int, param2:int, param3:uint, param4:Boolean)
      {
         super(true);
         this.x = param1;
         this.y = param2;
         this.radius = param3;
         this.stable = true;
         this.§^&;§ = param4;
         Application.scene.§@$I§.§1$+§(this);
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      public static function § %r§(param1:int, param2:int, param3:uint, param4:§+%]§, param5:Function, param6:Boolean = true) : void
      {
         new §`"d§(param1,param2,param3,param6).§ %r§(param4,param5);
      }
      
      public function § %r§(param1:§+%]§, param2:Function) : void
      {
         this.target = param1;
         this.callback = param2;
      }
      
      public function onFrame(param1:Event) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         if(this.target != null && this.callback != null && !disposed)
         {
            _loc2_ = §<H§.§5"]§(x,y,this.radius,null,this.§^&;§);
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_ == this.target)
               {
                  disposed = true;
                  this.callback();
                  break;
               }
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         this.target = null;
         this.callback = null;
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
      }
   }
}

