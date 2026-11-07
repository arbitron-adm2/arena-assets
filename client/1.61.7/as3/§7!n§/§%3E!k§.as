package §7!n§
{
   import § &5§.§%$O§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §&"c§.§5$n§;
   import §'%!§.§@!Z§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#x§.*;
   import §5!9§.§6$,§;
   import §7!B§.§&"T§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.WipeProfile;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §>!k§ extends §[&#§
   {
      
      public function §>!k§(param1:DisplayObjectContainer, param2:String)
      {
         super(param1,param2);
      }
      
      override public function setData(param1:§<#&§) : void
      {
         super.setData(param1);
         setText(param1.award.toString() + "+",§]!k§,§"-§.§6"j§);
      }
      
      override public function update() : void
      {
         super.update();
         setText(wager.award.toString() + "+",§]!k§,§"-§.§6"j§);
      }
   }
}

