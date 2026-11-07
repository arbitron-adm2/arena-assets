package §-&5§
{
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §#!5§.§>S§;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §&#E§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§;!4§;
   import §0&F§.§0%v§;
   import §3"@§.§##L§;
   import §3#T§.Boomerang;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8#o§.§1@§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §2%]§ extends §,##§
   {
      
      public function §2%]§(param1:DisplayObject)
      {
         super(param1 as DisplayObjectContainer);
      }
      
      override public function setItem(param1:§??§) : void
      {
         var _loc4_:§2"y§ = null;
         §4&D§.autoSize = TextFieldAutoSize.CENTER;
         §&$9§.§>&F§(§4&D§,§"-§.§+$m§,param1.§7%z§());
         requirements.requirements.htmlText = "";
         §^"o§.autoSize = TextFieldAutoSize.LEFT;
         §^"o§.htmlText = param1.§]G§();
         var _loc2_:TextField = §'%s§("durationField");
         var _loc3_:uint = (param1 as §&!e§).§8!t§();
         _loc2_.htmlText = "<b>" + §2$^§.§<"T§(_loc3_) + "</b>";
         if(param1 is §2"y§)
         {
            _loc4_ = param1 as §2"y§;
            if(_loc4_.getType() == §##L§.REACTION_SMALL || _loc4_.getType() == §##L§.REACTION_LARGE)
            {
               §^"o§.htmlText += §0$N§.§`#7§;
            }
         }
         if(param1 is §2& § && (!Social.settings.§"#k§() || §2& §(param1).getCode() != 1072))
         {
            §^"o§.htmlText += §0$N§.§<"E§;
         }
         §^"o§.y = §4&D§.y + §4&D§.height + 10;
         _loc2_.y = §^"o§.y + §^"o§.height + 10;
      }
   }
}

