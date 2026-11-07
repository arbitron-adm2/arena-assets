package §&#E§
{
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#k§.§9$v§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §02§.§<!v§;
   import §3#T§.Boomerang;
   import §=#g§.§!"X§;
   import §?>§.§]!V§;
   import §@!i§.§,! §;
   import §]&?§.§7#g§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.gui.MainInterface;
   
   public class §;2§ extends §`&-§
   {
      
      private static var instance:§;2§;
      
      private static var childs:Vector.<§;"L§> = new Vector.<§;"L§>(0);
      
      private var menu:§6#]§;
      
      private var mainInterface:MainInterface;
      
      public function §;2§(param1:§6#]§, param2:MainInterface)
      {
         var _loc3_:Sprite = new Sprite();
         super(_loc3_);
         this.menu = param1;
         this.mainInterface = param2;
         param1.addChild(this);
         param1.addEventListener(§`"^§.SCENE_RESIZED,this.§1!G§);
         align();
         §8"%§.§#m§.§&#t§(this,§!"X§.§;%;§);
      }
      
      public static function getInstance(param1:§6#]§ = null, param2:MainInterface = null) : §;2§
      {
         var menu:§6#]§ = param1;
         var mainInterface:MainInterface = param2;
         if(!instance)
         {
            instance = new §;2§(menu,mainInterface);
            if(§,! §.§4&B§())
            {
               §7#[§(§+"'§.§<$s§,§0$N§.SETS_INFO_TITLE + "!",function(param1:MouseEvent):void
               {
                  new §7#g§().show();
               });
            }
            if(§,! §.§%%X§() && §8"%§.§[f§.getType() == §7"n§.VK)
            {
               §7#[§(§+"'§.§`K§,§0$N§.TOURNAMENT_INFO_TITLE,function(param1:MouseEvent):void
               {
                  var event:MouseEvent = param1;
                  §,#W§.§'!+§(§0$N§.TOURNAMENT_INFO_TITLE,§0%§.format(§0$N§.TOURNAMENT_INFO_MSG,{"br":"\n"}),§,#W§.§`$x§,function():void
                  {
                     navigateToURL(new URLRequest("http://iwormix.ru"),"_blank");
                  }).show();
               });
            }
         }
         return instance;
      }
      
      public static function align() : void
      {
         var _loc2_:§;"L§ = null;
         var _loc3_:§;"L§ = null;
         if(childs.length == 0)
         {
            return;
         }
         var _loc1_:int = 0;
         for each(_loc2_ in childs)
         {
            if(_loc2_.isVisible())
            {
               _loc1_ = Math.max(_loc2_.width,_loc1_);
            }
         }
         for each(_loc2_ in childs)
         {
            _loc2_.x = _loc1_ - _loc2_.width;
            if(_loc2_.isVisible())
            {
               _loc2_.y = _loc3_ != null ? _loc3_.y + _loc3_.height + 10 : 50;
               _loc3_ = _loc2_;
            }
         }
         instance.§1!G§(null);
      }
      
      private static function add(param1:§;"L§, param2:Boolean = false) : void
      {
         instance.addChild(param1);
         if(param2)
         {
            childs.unshift(param1);
         }
         else
         {
            childs.push(param1);
         }
         align();
      }
      
      public static function §7#[§(param1:String, param2:String, param3:Function, param4:Boolean = false) : §?%>§
      {
         var _loc5_:MovieClip = null;
         _loc5_ = §6#A§.§!&6§(param1);
         var _loc6_:§?%>§ = §!&5§.§7#[§(_loc5_.getChildAt(0));
         _loc6_.setQtip(param2,§;#^§.LEFT,§+"'§.§3%y§);
         _loc6_.§[!u§(param3);
         add(_loc6_,param4);
         return _loc6_;
      }
      
      private function §1!G§(param1:Event) : void
      {
         if(childs.length == 0)
         {
            return;
         }
         var _loc2_:DisplayObject = this.mainInterface.§#!`§().getChildByName("rangBtn");
         x = _loc2_.x - width + _loc2_.width - 7;
         y = _loc2_.y + _loc2_.height * 1.2;
         §8"%§.§#m§.§`$y§(this);
      }
   }
}

