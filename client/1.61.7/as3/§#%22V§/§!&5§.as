package §#"V§
{
   import § $q§.§<"]§;
   import § m§.§9!^§;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'"N§.§4&5§;
   import §-!U§.§&%j§;
   import §-"N§.§+#R§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §2!-§.DamageEvent;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §8#a§.§>!o§;
   import §9"-§.§?!s§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §!&5§
   {
      
      public function §!&5§()
      {
         super();
      }
      
      public static function §7#[§(param1:DisplayObject) : §?%>§
      {
         if(param1 is SimpleButton)
         {
            return new §0%9§(SimpleButton(param1));
         }
         if(param1 is MovieClip)
         {
            return new §<"4§(MovieClip(param1));
         }
         return null;
      }
      
      public static function §;#z§(param1:DisplayObject, param2:String = null) : §8"@§
      {
         return new §8"@§(param1,param2);
      }
      
      public static function §@"5§(param1:DisplayObject, param2:String = null) : §8%$§
      {
         if(param1 is SimpleButton)
         {
            return new §8%$§(SimpleButton(param1),param2);
         }
         return null;
      }
      
      public static function §[&8§(param1:DisplayObject) : §6"%§
      {
         if(param1 is SimpleButton)
         {
            return new §6"%§(SimpleButton(param1));
         }
         return null;
      }
   }
}

