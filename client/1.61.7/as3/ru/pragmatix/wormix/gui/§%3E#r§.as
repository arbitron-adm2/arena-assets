package ru.pragmatix.wormix.gui
{
   import §%"1§.§@%;§;
   import §+%S§.§=t§;
   import §0%[§.§0%§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §9%k§.*;
   import §<!^§.§9"§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §]$v§.*;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §>#r§ extends EventDispatcher
   {
      
      protected var container:DisplayObjectContainer;
      
      public function §>#r§(param1:DisplayObjectContainer)
      {
         super();
         this.container = param1;
      }
      
      public function getContainer() : DisplayObjectContainer
      {
         return this.container;
      }
      
      public function set x(param1:Number) : void
      {
         this.container.x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.container.y = param1;
      }
      
      public function get x() : Number
      {
         return this.container.x;
      }
      
      public function get y() : Number
      {
         return this.container.y;
      }
      
      public function get width() : Number
      {
         return this.container.width;
      }
      
      public function get height() : Number
      {
         return this.container.height;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.container.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.container.visible;
      }
   }
}

