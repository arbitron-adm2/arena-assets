package § "L§
{
   import § !P§.*;
   import § #g§.§0!d§;
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §%L§.§%%w§;
   import §+#m§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §2#i§.§+%z§;
   import §7!B§.§&"T§;
   import §7!n§.§[&#§;
   import §7"Q§.§0$L§;
   import §9%W§.§!"G§;
   import §=!p§.§'%#§;
   import §?o§.§?!x§;
   import §@<§.§+%]§;
   import §[!O§.§@&D§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.Grenade;
   
   public class GrenadeTurret extends §`!r§
   {
      
      protected const §@!9§:String = "GrenadeTurret";
      
      private const §1!&§:int = Grenade.§`&#§.value;
      
      public function GrenadeTurret(param1:int, param2:int, param3:Point, param4:Point, param5:int = 0)
      {
         super(param1,param2,param3,param4,param5);
         paramSet = §<$c§.§ !=§(§+%z§.GRENADE).§<$4§.clone();
      }
      
      override protected function §8&8§() : void
      {
         §!%8§ = §6#A§.§!&6§(this.§@!9§);
         super.§8&8§();
      }
      
      override protected function §3K§() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         if(Boolean(§<#6§ <= frames) && Boolean(target) && checkTargets)
         {
            _loc1_ = getBarrelPoint(§9u§);
            _loc2_ = §0$a§.§<"8§(_loc1_.x,_loc1_.y,target.x,target.y,5,45);
            if(_loc2_.length > 0)
            {
               for each(_loc4_ in _loc2_)
               {
                  _loc5_ = §0$a§.§[I§(_loc1_.x,_loc1_.y,target.x,target.y,_loc4_.power,_loc4_.angle,null,30);
                  if(_loc5_.clearPathPc == 100)
                  {
                     _loc3_ = _loc4_;
                     break;
                  }
               }
               if(_loc3_)
               {
                  barrel.rotation = head.rotation = §-q§.§%%>§(_loc3_.angle + Math.PI / 2);
                  new §?!x§(_loc1_,paramSet,90,_loc3_.angle,_loc3_.power,0.75,"");
                  §<#6§ = this.§1!&§ + frames;
               }
            }
         }
      }
      
      override protected function §1n§(param1:Event) : void
      {
         var _loc3_:§?!x§ = null;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§?!x§]);
         for each(_loc3_ in _loc2_)
         {
            _loc3_.explode();
         }
         super.§1n§(param1);
      }
   }
}

