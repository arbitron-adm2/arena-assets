package § &5§
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2"L§.*;
   import §4#2§.§,$8§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=&!§.§ "^§;
   import §>"l§.§#!Y§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §=#P§
   {
      
      private static const §#s§:String = "helpers";
      
      private static const § "q§:uint = 20;
      
      public function §=#P§()
      {
         super();
      }
      
      public static function §9#c§(param1:§+%]§) : void
      {
         var _loc6_:Timer = null;
         var _loc7_:Object = null;
         var _loc2_:Boolean = !param1.squad.isLocal();
         var _loc3_:MovieClip = Application.scene.§[&3§(§+"'§.§3#A§,param1.x,param1.y - param1.clip.height / 2);
         var _loc4_:int = int(§5%8§.§75§(param1.squad.getNumber()).§ !C§);
         _loc3_.gotoAndStop(_loc4_ + 1);
         _loc3_.y += param1.squad.isLocal() ? -20 : -60;
         var _loc5_:Function = §1%"§.§]$<§(Application.scene.§9$_§,Application.scene,[_loc3_]);
         if(_loc2_)
         {
            _loc6_ = new Timer(4000);
            §""n§.single(_loc6_,TimerEvent.TIMER,_loc5_);
            _loc6_.start();
         }
         else
         {
            _loc7_ = {};
            _loc7_[MouseEvent.CLICK] = {
               "disp":Application.instance.stage,
               "fn":_loc5_
            };
            _loc7_[KeyboardEvent.KEY_DOWN] = {
               "disp":Application.instance.stage,
               "fn":_loc5_
            };
            _loc7_[§0%v§.NEXT_TURN] = {
               "disp":Application.scene,
               "fn":_loc5_
            };
            §""n§.§8%9§(_loc7_);
         }
      }
      
      public static function §="m§() : void
      {
         var _loc1_:Vector.<§&"T§> = null;
         var _loc2_:§&"T§ = null;
         if(Boolean(Application.scene) && Boolean(Application.scene.§7#o§))
         {
            _loc1_ = Application.scene.§@$I§.§;%a§.§'"[§();
            for each(_loc2_ in _loc1_)
            {
               Application.scene.§7#o§.chat.§>"Q§(_loc2_.toString());
            }
         }
      }
      
      public static function §6+§() : void
      {
         if(Boolean(§8"%§.§?!W§) && Boolean(§8"%§.§?!W§.§4"m§))
         {
            §8"%§.§?!W§.§4"m§.§6+§();
         }
      }
      
      public static function §@!@§() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:MovieClip = null;
         var _loc3_:§9$Z§ = null;
         var _loc4_:MovieClip = null;
         if(Application.instance.§#&7§() && Boolean(Application.scene))
         {
            _loc1_ = Application.scene.§=P§(§@N§.§7&H§);
            if(!_loc1_)
            {
               return;
            }
            _loc2_ = _loc1_.getChildByName(§#s§) as MovieClip;
            if(_loc2_)
            {
               _loc2_.visible = !_loc2_.visible;
               return;
            }
            _loc3_ = Application.scene.§^$'§();
            _loc4_ = §6#A§.§!&6§(_loc3_.className);
            _loc2_ = _loc4_.getChildByName(§#s§) as MovieClip;
            if(_loc2_)
            {
               _loc1_.addChild(_loc2_);
               _loc2_.y = _loc3_.indentHeight;
               _loc2_.x = _loc3_.§1% §;
               _loc2_.alpha = 0.5;
               _loc2_.mouseEnabled = false;
               _loc2_.mouseChildren = false;
               if(§ "^§.getValue(§8"%§.§?!W§.§^!U§().options,§ "^§.MIRROR_MAP))
               {
                  §#!Q§(_loc2_,_loc3_.§5"w§);
                  _loc2_.x *= -1;
               }
            }
         }
      }
      
      public static function §#!Q§(param1:MovieClip, param2:int) : void
      {
         var _loc4_:DisplayObject = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = param1.getChildAt(_loc3_);
            _loc4_.x = param2 - _loc4_.x;
            _loc3_++;
         }
      }
      
      public static function §#"]§(param1:Function, param2:Boolean = false, param3:int = 0, param4:Boolean = false) : Boolean
      {
         var stable:Boolean;
         var action:Function = param1;
         var useCapture:Boolean = param2;
         var priority:int = param3;
         var weak:Boolean = param4;
         if(!Application.scene)
         {
            return true;
         }
         stable = Application.scene.§@$I§.§@"E§();
         if(stable)
         {
            action();
         }
         else
         {
            §8$a§.§&!#§(Application.scene,§0%v§.SCENE_STABLE,function onSceneStableOnce(param1:Event):void
            {
               action();
            },useCapture,priority,weak);
         }
         return stable;
      }
      
      public static function §3!C§() : Boolean
      {
         return §9&#§.§^!f§() > § "q§;
      }
   }
}

