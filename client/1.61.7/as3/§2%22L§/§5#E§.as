package §2"L§
{
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+%S§.§2&>§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §1#0§.§;4§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §8$V§.*;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.ReturnFriend;
   import ru.pragmatix.wormix.messages.server.ReturnFriendResult;
   import ru.pragmatix.wormix.messages.server.SearchTheHouseResult;
   import ru.pragmatix.wormix.model.user.§<%6§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §5#E§
   {
      
      public static var §^$w§:String = "dd.mm.yyyy";
      
      public static var §5#m§:String = "hh:MM";
      
      public static var §#$§:String = §^$w§ + " " + §5#m§;
      
      public static var §!$o§:String = "ddd, d mmmm yyyy";
      
      public static const §-#K§:Array = [{
         "abbr":"Jan",
         "full":"January"
      },{
         "abbr":"Feb",
         "full":"February"
      },{
         "abbr":"Mar",
         "full":"March"
      },{
         "abbr":"Apr",
         "full":"April"
      },{
         "abbr":"May",
         "full":"May"
      },{
         "abbr":"Jun",
         "full":"June"
      },{
         "abbr":"Jul",
         "full":"July"
      },{
         "abbr":"Aug",
         "full":"August"
      },{
         "abbr":"Sep",
         "full":"September"
      },{
         "abbr":"Oct",
         "full":"October"
      },{
         "abbr":"Nov",
         "full":"November"
      },{
         "abbr":"Dec",
         "full":"December"
      }];
      
      public static const days:Array = [{
         "full":"Sunday",
         "abbr":"Sun"
      },{
         "full":"Monday",
         "abbr":"Mon"
      },{
         "full":"Tuesday",
         "abbr":"Tue"
      },{
         "full":"Wednesday",
         "abbr":"Wed"
      },{
         "full":"Thursday",
         "abbr":"Thu"
      },{
         "full":"Friday",
         "abbr":"Fri"
      },{
         "full":"Saturday",
         "abbr":"Sat"
      }];
      
      public function §5#E§()
      {
         super();
      }
      
      public static function init(param1:§<"G§) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         for each(_loc2_ in §-#K§)
         {
            _loc5_ = param1.§%! §(_loc2_.abbr.toLowerCase() + "_full");
            if(_loc5_)
            {
               _loc2_.full = _loc5_;
            }
            _loc6_ = param1.§%! §(_loc2_.abbr.toLowerCase() + "_short");
            if(_loc6_)
            {
               _loc2_.abbr = _loc6_;
            }
         }
         for each(_loc3_ in days)
         {
            _loc5_ = param1.§%! §(_loc3_.abbr.toLowerCase() + "_full");
            if(_loc5_)
            {
               _loc3_.full = _loc5_;
            }
            _loc6_ = param1.§%! §(_loc3_.abbr.toLowerCase() + "_short");
            if(_loc6_)
            {
               _loc3_.abbr = _loc6_;
            }
         }
         _loc4_ = param1.§%! §("date_format");
         if(_loc4_)
         {
            §^$w§ = _loc4_;
         }
         _loc4_ = param1.§%! §("time_format");
         if(_loc4_)
         {
            §5#m§ = _loc4_;
         }
         _loc4_ = param1.§%! §("date_full_format");
         if(_loc4_)
         {
            §!$o§ = _loc4_;
         }
         §#$§ = §^$w§ + " " + §5#m§;
      }
      
      public static function §^"@§(param1:Date, param2:String) : String
      {
         if(param1 == null)
         {
            return "null";
         }
         var _loc3_:int = param1.getDay();
         var _loc4_:int = param1.getMonth();
         var _loc5_:int = param1.getDate();
         var _loc6_:int = param1.getFullYear();
         var _loc7_:int = param1.getHours();
         var _loc8_:int = param1.getMinutes();
         var _loc9_:int = param1.getSeconds();
         var _loc10_:String = "";
         var _loc11_:String = "";
         var _loc12_:Number = 0;
         var _loc13_:Number = 0;
         while(_loc13_ < param2.length)
         {
            switch(param2.charAt(_loc13_))
            {
               case "d":
               case "m":
               case "y":
               case "h":
               case "M":
               case "s":
                  if(_loc11_ != "")
                  {
                     if(_loc11_ != param2.charAt(_loc13_))
                     {
                        _loc10_ += §`$j§(_loc11_,_loc12_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
                        _loc11_ = param2.charAt(_loc13_);
                        _loc12_ = 0;
                     }
                  }
                  else
                  {
                     _loc11_ = param2.charAt(_loc13_);
                  }
                  _loc12_++;
                  break;
               default:
                  if(_loc11_ != "")
                  {
                     _loc10_ += §`$j§(_loc11_,_loc12_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
                     _loc12_ = 0;
                     _loc11_ = "";
                  }
                  _loc10_ += param2.charAt(_loc13_);
            }
            _loc13_++;
         }
         if(_loc12_ > 0)
         {
            _loc10_ += §`$j§(_loc11_,_loc12_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return _loc10_;
      }
      
      private static function §`$j§(param1:String, param2:*, param3:uint, param4:uint, param5:uint, param6:uint, param7:uint, param8:uint, param9:uint) : String
      {
         switch(param1)
         {
            case "d":
               switch(param2)
               {
                  case 1:
                     return param5.toString();
                  case 2:
                     return §5"v§(param5);
                  case 3:
                     return days[param3].abbr;
                  case 4:
                     return days[param3].full;
               }
               break;
            case "y":
               switch(param2)
               {
                  case 1:
                     return parseInt(String(param6).substr(2,2)).toString();
                  case 2:
                     return String(param6).substr(2,2);
                  case 4:
                     return param6.toString();
               }
            case "m":
               switch(param2)
               {
                  case 1:
                     return (param4 + 1).toString();
                  case 2:
                     return §5"v§(param4 + 1);
                  case 3:
                     return §-#K§[param4].abbr;
                  case 4:
                     return §-#K§[param4].full;
               }
            case "h":
               switch(param2)
               {
                  case 1:
                     return param7.toString();
                  case 2:
                     return §5"v§(param7);
               }
            case "M":
               switch(param2)
               {
                  case 1:
                     return param8.toString();
                  case 2:
                     return §5"v§(param8);
               }
            case "s":
               switch(param2)
               {
                  case 1:
                     return param9.toString();
                  case 2:
                     return §5"v§(param9);
               }
         }
         return "";
      }
      
      private static function §5"v§(param1:uint) : String
      {
         if(param1 > 9)
         {
            return param1.toString();
         }
         return "0" + param1.toString();
      }
   }
}

