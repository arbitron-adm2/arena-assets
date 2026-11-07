package §@!i§
{
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import flash.text.Font;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   
   public class §"-§
   {
      
      public static const §@%f§:Font = §6#A§.§ !7§(§+"'§.§+$m§);
      
      public static const NUMBER:Font = §6#A§.§ !7§(§+"'§.§6"j§);
      
      public static const §+$m§:TextFormat = new TextFormat(§@%f§.fontName);
      
      public static const §6"j§:TextFormat = new TextFormat(NUMBER.fontName);
      
      public function §"-§()
      {
         super();
      }
      
      public static function §,"g§() : void
      {
         var _loc3_:Font = null;
         var _loc1_:§&`§ = new §&`§(§"-§);
         var _loc2_:Array = Font.enumerateFonts(false);
         var _loc4_:int = 0;
         var _loc5_:int = int(_loc2_.length);
         while(_loc4_ < _loc5_)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc1_.§[x§("[" + _loc4_ + "] name:" + _loc3_.fontName + ", style: " + _loc3_.fontStyle + ", type: " + _loc3_.fontType,"font");
            _loc4_++;
         }
      }
   }
}

