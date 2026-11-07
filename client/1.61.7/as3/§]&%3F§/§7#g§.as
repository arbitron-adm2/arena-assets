package §]&?§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §0%"§.§[!^§;
   import §4!x§.§@& §;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §?#g§.Race;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §7#g§ extends §@& §
   {
      
      public function §7#g§()
      {
         super(§6#A§.§!&6§(§+"'§.§1#9§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var bonusText:String;
         var itemsSetById:§[!X§ = null;
         var bonuses:Array = null;
         var container:DisplayObject = param1;
         super.§@"o§(container);
         §4"0§.§>&F§(§>!-§.simpleButton,§"-§.§+$m§,§0"-§.BUTTON_OK);
         §7&5§.§>&<§(§'%s§("title"),§0$N§.SETS_INFO_TITLE);
         §7&5§.§>&<§(§'%s§("subtitle"),§0$N§.SETS_INFO_SUBTITLE);
         §7&5§.§>&<§(§'%s§("subtitle2"),§0$N§.SETS_INFO_SUBTITLE2);
         §7&5§.§>&<§(§'%s§("desc"),§0$N§.SETS_INFO_DESC);
         §7&5§.§>&<§(§'%s§("hint"),§0$N§.SETS_INFO_HINT);
         itemsSetById = §<$c§.§#$m§(§[!^§.FIRE_FIGHTER);
         §7&5§.§>&<§(§'%s§("setname"),itemsSetById.§7%z§());
         bonuses = §""L§.§,"=§(itemsSetById.getBonusList().§<%i§());
         bonusText = bonuses.map(function(param1:§@"I§, ... rest):String
         {
            return param1.§@$+§() + ": " + param1.§'$o§();
         }).join("\n");
         §'%s§("setparams").text = bonusText;
      }
   }
}

