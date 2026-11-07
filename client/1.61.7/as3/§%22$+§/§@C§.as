package §"$+§
{
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §0%[§.§0%§;
   import §4'§.§`"q§;
   import flash.text.TextField;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §@C§
   {
      
      public static const §+!u§:uint = 5;
      
      public static const §;k§:uint = 5;
      
      public static const §^#6§:uint = 7;
      
      public static const §6$"§:uint = 200;
      
      public static const §1K§:Array = ["ClanShaft1","ClanShaft2","ClanShaft3","ClanShaft4","ClanShaft5"];
      
      public static const §>B§:String = "ClanFlagColor";
      
      public static const §@#k§:Array = [100,50,25,10,1];
      
      public static const §!&8§:§`"q§ = new §`"q§(§+$A§.INGAME,new §'$2§(3000),§0$N§.CREATE_CLAN_CONFIRMATION);
      
      public static const §+#?§:§`"q§ = new §`"q§(§+$A§.REAL,new §'$2§(0,5),§0$N§.CHANGE_CLAN_NAME_CONFIRMATION);
      
      public static const §<$R§:§`"q§ = new §`"q§(§+$A§.REAL,new §'$2§(0,5),§0$N§.CHANGE_CLAN_DESCRIPTION_CONFIRMATION);
      
      public static const §2"g§:§`"q§ = new §`"q§(§+$A§.REAL,new §'$2§(0,5),§0$N§.CHANGE_CLAN_EMBLEM_CONFIRMATION);
      
      private static const §,#z§:§`"q§ = new §`"q§(§+$A§.REAL,new §'$2§(0,1),"",true);
      
      public static const §"%[§:int = 1000;
      
      public static const §7$T§:uint = 10000;
      
      public static const §%"c§:uint = 30;
      
      public static const §4#H§:uint = 4;
      
      public static const §<!S§:uint = 1;
      
      public static const §6M§:uint = 5;
      
      public static const §2#`§:uint = 1000;
      
      public static const §3$U§:uint = 20;
      
      public static const §=%L§:uint = 3;
      
      public static const §+#d§:uint = 16;
      
      public static const §-!g§:uint = 250;
      
      public static const §<$x§:uint = 128;
      
      public static const §<"_§:uint = 128;
      
      public static const §;$g§:String = "0-9";
      
      public static const §@$;§:RegExp = new RegExp(/[^0-9]/);
      
      public static const §0%y§:String = "#CCCC00";
      
      public static const §1m§:String = "#64AEFF";
      
      public static const §]%Z§:uint = 36;
      
      public function §@C§()
      {
         super();
      }
      
      public static function §["_§(param1:int) : §`"q§
      {
         §,#z§.price.realPrice = param1;
         §,#z§.message = §0%§.format(§0$N§.DONATE_CLAN_CONFIRMATION,{"count":param1});
         return §,#z§;
      }
      
      public static function §'%Z§() : String
      {
         switch(§8"%§.§[f§.getType())
         {
            case §7"n§.§1&?§:
            case §7"n§.§"%O§:
               return "A-Z a-z А-Я ё Ё а-я A-Ż a-ż 0-9 ^\\^][]\\\\|{}´°«»×_";
            case §7"n§.FB:
               return "A-Z a-z А-Я ё Ё а-я A-Ż a-ż 0-9";
            default:
               return "A-Z a-z А-Я ё Ё а-я 0-9";
         }
      }
      
      public static function §&[§(param1:TextField, param2:int, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:String = §^#e§(param2,param3);
         if(_loc5_.length)
         {
            param1.textColor = int("0x" + _loc5_);
         }
      }
      
      public static function §^#e§(param1:int, param2:Boolean = false, param3:Boolean = false) : String
      {
         switch(param1)
         {
            case §`&$§.§+#8§:
               return param2 ? "91FF28" : "4E9B00";
            case §`&$§.OFFICER:
               return param2 ? "C9F396" : "74C016";
            case §`&$§.§7!^§:
               return param3 ? (param2 ? "FFFCEE" : "EEE2C5") : (param2 ? "9A8A7B" : "8A7462");
            default:
               return "";
         }
      }
   }
}

