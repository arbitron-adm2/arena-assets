package §4u§
{
   import §!L§.§+"'§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §=!p§.§1e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §[%u§ extends §;$H§
   {
      
      public function §[%u§(param1:String, param2:String)
      {
         super(§6#A§.§!&6§(§+"'§.§`"I§));
         getChildByName("note").visible = false;
         getChildByName("description").visible = false;
         var _loc3_:TextField = TextField(getChildByName("itemName"));
         _loc3_.autoSize = TextFieldAutoSize.LEFT;
         _loc3_.text = param1;
         §8$<§ = _loc3_.y + _loc3_.height;
         §`b§(true,param2,"description");
         §`b§(false,"","note");
         §`b§(false,"","damage");
         §8$Q§();
      }
   }
}

