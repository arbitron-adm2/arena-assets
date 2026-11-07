package §&#E§
{
   import §!L§.§+"'§;
   import §%"1§.§=#?§;
   import §2"L§.§^$y§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §4##§ extends §,#W§
   {
      
      public function §4##§(param1:String, param2:String, param3:int, param4:Function = null, param5:§=#?§ = null, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,§+"'§.§?$y§,param6);
      }
      
      public static function show(param1:String, param2:String, param3:int, param4:Function = null, param5:§=#?§ = null, param6:Boolean = true) : void
      {
         var _loc7_:§4##§ = new §4##§(param1,param2,param3,param4,param5,param6);
         §&$9§.§>&F§(_loc7_.§'%s§("title"),§"-§.§+$m§,param1);
         §&$9§.§>&F§(_loc7_.§'%s§("msg"),§"-§.§+$m§,param2);
         _loc7_.§'%s§("msg").autoSize = TextFieldAutoSize.CENTER;
         _loc7_.§>!-§.setText(param3 == §`$x§ ? §0"-§.BUTTON_YES : §0"-§.BUTTON_OK,§"-§.§+$m§);
         _loc7_.§!S§.setText(§0"-§.BUTTON_CANCEL,§"-§.§+$m§);
         _loc7_.show();
      }
   }
}

