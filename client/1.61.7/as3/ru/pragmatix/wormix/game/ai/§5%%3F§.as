package ru.pragmatix.wormix.game.ai
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §0&F§.§0%v§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §8#a§.ShopMenu;
   import §8$V§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import config.achievements.§!$L§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§#&>§;
   
   public class §5%?§
   {
      
      private const §2%#§:Boolean = false;
      
      private var §!"l§:Array = [];
      
      public function §5%?§()
      {
         super();
      }
      
      public function §`8§(param1:Event = null) : void
      {
         var _loc2_:Shape = null;
         for each(_loc2_ in this.§!"l§)
         {
            Application.scene.removeChild(_loc2_);
         }
         this.§!"l§ = [];
      }
      
      public function line(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Shape = new Shape();
         _loc5_.graphics.lineStyle(1,0);
         _loc5_.graphics.moveTo(param1,param2);
         _loc5_.graphics.lineTo(param3,param4);
         Application.scene.addChild(_loc5_);
         this.§!"l§.push(_loc5_);
      }
      
      public function §'%]§(param1:int, param2:int) : void
      {
         if(!this.§2%#§)
         {
            return;
         }
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.lineStyle(1,0);
         _loc3_.graphics.drawCircle(param1,param2,2);
         Application.scene.addChild(_loc3_);
         this.§!"l§.push(_loc3_);
      }
      
      public function §3!?§(param1:int, param2:int) : void
      {
         if(!this.§2%#§)
         {
            return;
         }
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.lineStyle(3,15623782);
         _loc3_.graphics.drawCircle(param1,param2,10);
         Application.scene.addChild(_loc3_);
         this.§!"l§.push(_loc3_);
      }
   }
}

