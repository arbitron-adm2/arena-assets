package §&#E§
{
   import §!L§.§+"'§;
   import §#P§.§`o§;
   import §9%W§.§!7§;
   import §^#[§.§&$2§;
   import §`%&§.§,%§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   
   public class §;"v§ extends §,#W§
   {
      
      public function §;"v§(param1:String, param2:String)
      {
         super(param1,param2,§,#W§.§0!V§,null,null,§+"'§.§?#e§);
      }
      
      public static function show(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:§;"v§ = null;
         var _loc5_:TextField = null;
         _loc4_ = new §;"v§(param1,param2);
         _loc4_.width *= 1.3;
         §`o§.§%&%§(_loc4_.§'%s§("title"));
         _loc5_ = _loc4_.§'%s§("msg");
         _loc5_.width = _loc4_.width - 30;
         _loc5_.autoSize = TextFieldAutoSize.CENTER;
         _loc5_.htmlText = param2;
         §`o§.§%&%§(_loc5_);
         var _loc6_:TextField = _loc4_.§'%s§("text");
         _loc6_.autoSize = TextFieldAutoSize.CENTER;
         _loc6_.mouseEnabled = true;
         _loc6_.selectable = true;
         _loc6_.text = param3;
         _loc6_.y = _loc5_.y + _loc5_.height + 10;
         §`o§.§%&%§(_loc6_);
         _loc4_.height = _loc4_.§'%s§("title").height + _loc5_.height + 150;
         _loc4_.show();
      }
   }
}

