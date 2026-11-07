package ru.pragmatix.flox.gui.controls
{
   import § #m§.§2#P§;
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import §%"1§.§=#?§;
   import flash.display.DisplayObject;
   import flash.events.IEventDispatcher;
   import flash.text.TextFormat;
   
   public interface §;"L§ extends IEventDispatcher
   {
      
      function §@"o§(param1:DisplayObject) : void;
      
      function destroy() : void;
      
      function setVisible(param1:Boolean) : void;
      
      function isVisible() : Boolean;
      
      function isShown() : Boolean;
      
      function setDisabled(param1:Boolean) : void;
      
      function §8,§() : Boolean;
      
      function setQtip(param1:String, param2:§;#^§ = null, param3:String = null, param4:TextFormat = null) : void;
      
      function §"#I§() : §?A§;
      
      function §&!i§(param1:String, param2:§2#P§ = null, param3:String = null, param4:TextFormat = null) : void;
      
      function §00§(param1:§=#?§) : void;
      
      function §[&§() : §=#?§;
      
      function §]%$§(param1:§=#?§) : void;
      
      function get x() : Number;
      
      function set x(param1:Number) : void;
      
      function get y() : Number;
      
      function set y(param1:Number) : void;
      
      function get width() : Number;
      
      function set width(param1:Number) : void;
      
      function get height() : Number;
      
      function set height(param1:Number) : void;
      
      function get parent() : §""t§;
      
      function set parent(param1:§""t§) : void;
      
      function getContainer() : DisplayObject;
      
      function get id() : String;
      
      function set id(param1:String) : void;
      
      function get removeAllWhenDisabled() : Boolean;
      
      function set removeAllWhenDisabled(param1:Boolean) : void;
   }
}

