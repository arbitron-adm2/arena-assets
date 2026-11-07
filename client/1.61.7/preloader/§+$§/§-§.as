package §+$§
{
   import §7!§.§[!§;
   import §8"§.§`%§;
   import §]%§.§@"§;
   import ru.pragmatix.preloader.§-"§;
   
   public class §-§
   {
      
      private static var §8&§:§%#§ = new §@"§();
      
      public static const socialType:§`%§ = §8&§.socialType;
      
      public static const §8!§:Boolean = §8&§.§8!§();
      
      public static const §=&§:String = §8&§.appLink;
      
      public static const §^§:String = §8&§.§?§;
      
      public static const §6!§:String = §8&§.§6!§;
      
      public static const statistic:Boolean = §8&§.statistic;
      
      public static const §`"§:Number = §8&§.§2$§;
      
      public static const stageWidth:int = §8&§.stageWidth;
      
      public static const §9#§:int = §8&§.§9#§;
      
      public static const channelName:String = §8&§.channelName;
      
      public static const resConfigVersion:String = §8&§.§0&§();
      
      public static const langFilesVersion:String = §8&§.§9§();
      
      public static const achievPrefix:String = §8&§.§`§();
      
      public static const clientVersion:String = §8&§.§+#§();
      
      public static const buildVersion:String = §8&§.§+&§();
      
      public static const nextReleaseDate:String = §8&§.§7#§();
      
      public static const pressReleaseUrl:String = §8&§.§6%§();
      
      public static const §0#§:String = §8&§.§6$§();
      
      public static const §8§:String = §8&§.§6§();
      
      public static const §=§:Boolean = §8&§.§=§() == "true";
      
      public static const privateKey:String = §8&§.§!&§();
      
      public function §-§()
      {
         super();
      }
      
      public static function §&$§(param1:String) : Object
      {
         return §8&§.§&$§(param1);
      }
      
      public static function getPvpServer(param1:String) : Object
      {
         if(§8&§ is §[!§)
         {
            return §[!§(§8&§).getPvpServer(param1);
         }
         return null;
      }
      
      public static function §`$§(param1:String) : String
      {
         return §8&§.§`$§(param1);
      }
      
      public static function §>"§() : String
      {
         return §8&§.§>"§();
      }
      
      public static function §%%§(param1:String) : Object
      {
         var _loc4_:String = null;
         var _loc2_:Object = {
            "appLink":§-§.§=&§,
            "appClub":§-§.§^§,
            "mainswf":§-§.§6!§,
            "appMode":(§-§.§8!§ ? "test" : "prod"),
            "statistic":§-§.statistic,
            "resConfigVersion":§-§.resConfigVersion,
            "langFilesVersion":§-§.langFilesVersion,
            "achievPrefix":§-§.achievPrefix,
            "preloaderMainClass":§-"§.§!#§,
            "channelName":§-§.channelName,
            "clientVersion":§-§.clientVersion,
            "buildVersion":§-§.buildVersion,
            "nextReleaseDate":§-§.nextReleaseDate,
            "pressReleaseUrl":§-§.pressReleaseUrl,
            "privateKey":§-§.privateKey
         };
         var _loc3_:Object = §8&§.§%%§(param1);
         for(_loc4_ in _loc3_)
         {
            _loc2_[_loc4_] = _loc3_[_loc4_];
         }
         return _loc2_;
      }
   }
}

