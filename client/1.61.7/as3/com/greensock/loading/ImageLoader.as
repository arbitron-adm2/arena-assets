package com.greensock.loading
{
   import §%"1§.§@%;§;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6%2§.§<<§;
   import §6_§.*;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?"j§.§]!<§;
   import §@!N§.§-!Y§;
   import §@!i§.§5&4§;
   import §@$§.§`&C§;
   import §]$&§.§2&2§;
   import com.greensock.loading.core.DisplayObjectLoader;
   import flash.display.Bitmap;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class ImageLoader extends DisplayObjectLoader
   {
      
      private static var _classActivated:Boolean = _activateClass("ImageLoader",ImageLoader,"jpg,jpeg,png,gif,bmp");
      
      public function ImageLoader(param1:*, param2:Object = null)
      {
         super(param1,param2);
         _type = "ImageLoader";
      }
      
      override protected function _initHandler(param1:Event) : void
      {
         _determineScriptAccess();
         if(!_scriptAccessDenied)
         {
            _content = Bitmap(_loader.content);
            _content.smoothing = Boolean(this.vars.smoothing != false);
         }
         else
         {
            _content = _loader;
         }
         super._initHandler(param1);
      }
   }
}

