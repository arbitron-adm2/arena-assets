package §,#A§
{
   import § &5§.§=#P§;
   import §"%H§.§1! §;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §0%z§.§?#b§;
   import §0&F§.§0%v§;
   import §3#T§.Boomerang;
   import §3#a§.§-#M§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §@!N§.§&#Z§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §^"T§ extends Sprite implements §^c§
   {
      
      private const §9"V§:uint = 70;
      
      private var §5"T§:Vector.<§-$b§>;
      
      public function §^"T§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         mouseChildren = mouseEnabled = false;
         this.§5"T§ = new Vector.<§-$b§>(0);
         var _loc1_:uint = 0;
         while(_loc1_ < this.§9"V§)
         {
            this.§5"T§[_loc1_] = new §-$b§(this);
            this.§5"T§[_loc1_].init();
            addChild(this.§5"T§[_loc1_]);
            _loc1_++;
         }
         this.playAnimations();
      }
      
      private function enterFrameHandler(param1:Event) : void
      {
         var _loc2_:§-$b§ = null;
         for each(_loc2_ in this.§5"T§)
         {
            _loc2_.update();
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:uint = this.§5"T§.length;
         var _loc2_:uint = 0;
         while(_loc2_ < _loc1_)
         {
            removeChild(this.§5"T§[_loc2_] as §-$b§);
            this.§5"T§[_loc2_] = null;
            _loc2_++;
         }
         this.§5"T§.length = 0;
      }
      
      public function playAnimations() : void
      {
         if(!hasEventListener(Event.ENTER_FRAME))
         {
            addEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
         }
      }
      
      public function stopAnimations() : void
      {
         if(hasEventListener(Event.ENTER_FRAME))
         {
            removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
         }
      }
   }
}

