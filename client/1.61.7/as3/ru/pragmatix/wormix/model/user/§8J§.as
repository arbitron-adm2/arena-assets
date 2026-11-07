package ru.pragmatix.wormix.model.user
{
   import §0%[§.§0%§;
   import §2"L§.§5#E§;
   import §[%'§.§<"G§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §8J§
   {
      
      public function §8J§()
      {
         super();
      }
      
      public static function §]G§(param1:uint, param2:uint) : String
      {
         var _loc3_:String = null;
         switch(param1)
         {
            case 31:
            case 36:
               _loc3_ = §<"G§.§%! §("PARAMS_CHEAT");
               break;
            case 32:
               _loc3_ = §<"G§.§%! §("PROTOCOL_CHEAT");
               break;
            case 33:
            case 43:
               _loc3_ = §<"G§.§%! §("BATTLE_CANCEL");
               break;
            case 44:
               _loc3_ = §<"G§.§%! §("BOT_USE");
               break;
            case 35:
               _loc3_ = §<"G§.§%! §("SEARCH_CHEAT");
               break;
            case 34:
            case 40:
               _loc3_ = §<"G§.§%! §("USE_PROGRAMS_FOR_CHEAT");
               break;
            case 39:
               _loc3_ = §<"G§.§%! §("WARDROBE_CHEAT");
               break;
            case 28:
            case 29:
            case 30:
            case 37:
            case 38:
            case 41:
               _loc3_ = §0$N§.FRIEND_LIST_CHEAT;
               break;
            case 42:
               _loc3_ = §<"G§.§%! §("SHOP_CHEAT");
               break;
            case 45:
               _loc3_ = §<"G§.§%! §("BAN_FOR_CHAT");
               break;
            case 61:
               _loc3_ = §<"G§.§%! §("BAN_FOR_TRANSFER");
               break;
            case 63:
               _loc3_ = §<"G§.§%! §("BAN_FOR_FOUL");
               break;
            default:
               _loc3_ = §0$N§.GENERAL_BAN;
         }
         _loc3_ += ".<br/>";
         if(param2)
         {
            _loc3_ += §<"G§.§%! §("BAN_END_DATE") + " " + §5#E§.§^"@§(new Date(param2 * 1000),§5#E§.§#$§) + "<br/>";
         }
         _loc3_ += "<br/>" + §<"G§.§%! §("HELP_FOR_BAN");
         return _loc3_ + ("<br/><br/>" + §0%§.format(§0$N§.USER_ID,{"id":":"}));
      }
   }
}

