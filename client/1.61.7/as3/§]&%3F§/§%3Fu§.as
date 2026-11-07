package §]&?§
{
   import §!L§.§+"'§;
   import §+$=§.§6#A§;
   import §4!x§.§@& §;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import flash.display.DisplayObject;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §?u§ extends §@& §
   {
      
      public function §?u§()
      {
         super(§6#A§.§!&6§(§+"'§.§,$a§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:String = null;
         super.§@"o§(param1);
         §4"0§.§>&F§(§>!-§.simpleButton,§"-§.§+$m§,§0"-§.BUTTON_OK);
         §7&5§.§>&<§(§'%s§("text"),§0$N§.HOLIDAY_EVENT_TEXT);
         _loc2_ = Social.settings.§@"G§().toString();
         var _loc3_:Boolean = _loc2_ == "ru" || _loc2_ == "ua";
         getChildByName("title_ru").visible = _loc3_;
         getChildByName("title_en").visible = !_loc3_;
      }
   }
}

