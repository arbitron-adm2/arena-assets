package §5o§
{
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §-"Q§.*;
   import §0%j§.*;
   import §1#p§.*;
   import §2#i§.§+%z§;
   import §4!x§.§@& §;
   import §4#`§.§+!l§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §[%'§.§<"G§;
   import §^4§.§]"8§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class ArmoryHelpWindow extends §@& §
   {
      
      public function ArmoryHelpWindow()
      {
         super(§6#A§.§!&6§("ArmoryHelpWindow"));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         §&$9§.§>&F§(§'%s§("title"),§"-§.§+$m§,§<"G§.§%! §("ARMORY_HELP_TITLE"));
         §&$9§.§>&F§(§'%s§("msg1"),§"-§.§+$m§,§<"G§.§%! §("ARMORY_HELP_MSG1"));
         §&$9§.§>&F§(§'%s§("msg2"),§"-§.§+$m§,§<"G§.§%! §("ARMORY_HELP_MSG2") + "\n\n" + §<"G§.§%! §("ARMORY_HELP_OPTIONAL"));
      }
   }
}

