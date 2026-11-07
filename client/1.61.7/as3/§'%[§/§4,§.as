package §'%[§
{
   import § #k§.*;
   import §#$e§.§!a§;
   import §#%!§.§ §;
   import §&#h§.§-"F§;
   import §'!Z§.§]!&§;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §@<§.§+%]§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class §4,§
   {
      
      public function §4,§()
      {
         super();
      }
      
      public static function §[#L§(param1:String, param2:String, param3:DisplayObject, param4:String, param5:§1#+§) : §]$5§
      {
         switch(param5.getType())
         {
            case §7"n§.VK:
               return new § i§(param1,param2,param3,§]s§(param5));
            case §7"n§.OK:
               return new §@"4§(param1,param2,§?#w§(param5));
            case §7"n§.FB:
               return new §3%5§(param1,param2,§!a§(param5));
            case §7"n§.MM:
               return new §4!C§(param1,param2,§0$+§(param5));
            default:
               return null;
         }
      }
      
      public static function §9%B§(param1:§1#+§) : Boolean
      {
         return §[#L§("test","test",null,"test",param1) != null;
      }
   }
}

