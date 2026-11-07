package ru.pragmatix.flox.social.controller
{
   import §#$e§.§!a§;
   import §+$=§.§6#A§;
   import §0!§.§6#z§;
   import §0%j§.§0$+§;
   import §1#p§.§"Z§;
   import §2!-§.HpChangeEvent;
   import §2#x§.§[#Z§;
   import §3"_§.§?#w§;
   import §4#2§.*;
   import §5"J§.*;
   import §7$t§.§;#_§;
   import §<!W§.§;#A§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §@#p§
   {
      
      public function §@#p§()
      {
         super();
      }
      
      public static function create(param1:§>C§, param2:Stage = null) : §1#+§
      {
         switch(param1.§54§())
         {
            case §7"n§.VK:
               return new §[#Z§(param1);
            case §7"n§.OK:
               return new §?#w§(param1,param2);
            case §7"n§.FB:
               return new §!a§(param1);
            case §7"n§.MM:
               return new §0$+§(param1);
            case §7"n§.NONE:
               return new §]"Y§(param1);
            default:
               return null;
         }
      }
   }
}

