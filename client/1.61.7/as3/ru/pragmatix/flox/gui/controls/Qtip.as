package ru.pragmatix.flox.gui.controls
{
   import § #k§.*;
   import § #m§.§?A§;
   import §!$d§.§<$c§;
   import §!K§.§&#Q§;
   import §#%!§.§ §;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §&#h§.§-"F§;
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §0!§.§9"u§;
   import §0&F§.§0%v§;
   import §;#O§.§+%7§;
   import §?$L§.§ "N§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §`%&§.§5$1§;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class Qtip implements §?A§
   {
      
      private var hint:MovieClip;
      
      public function Qtip(param1:String, param2:String = null, param3:TextFormat = null)
      {
         super();
         this.hint = §6#A§.§!&6§(param2 ? param2 : § "N§.§39§);
         var _loc4_:TextField = TextField(this.hint.getChildByName("text"));
         _loc4_.autoSize = TextFieldAutoSize.LEFT;
         _loc4_.htmlText = param1;
         if(param3)
         {
            _loc4_.setTextFormat(param3);
         }
         var _loc5_:MovieClip = MovieClip(this.hint.getChildByName("panel"));
         _loc5_.width = 2 * _loc4_.x + _loc4_.width;
         if(_loc4_.numLines > 1)
         {
            _loc5_.height = 2 * _loc4_.y + _loc4_.height;
         }
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint;
      }
   }
}

