package §7!n§
{
   import §!L§.§+"'§;
   import §#%!§.*;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.*;
   import §+$=§.*;
   import §0&F§.§0$_§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#x§.*;
   import §;!Z§.*;
   import §<!W§.§7!L§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §=!p§.§%#'§;
   import §>%S§.§^!V§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.*;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.StartTurn;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §-!!§ extends §[&#§
   {
      
      public function §-!!§(param1:DisplayObjectContainer, param2:String)
      {
         super(param1,param2);
      }
      
      override protected function init(param1:String) : void
      {
         super.init(param1);
         setText(§0$N§.REWARD_UP_TO,§%#e§,§"-§.§+$m§);
      }
      
      override public function setData(param1:§<#&§) : void
      {
         super.setData(param1);
         setText(§?B§.§`&'§.toString(),§]!k§,§"-§.§6"j§);
         setText(§?B§.§;!o§.toString(),§[$[§,§"-§.§6"j§);
      }
      
      override protected function §3#,§(param1:Event = null) : void
      {
         §8"%§.§'%;§.§4%1§();
      }
      
      override public function update() : void
      {
         super.update();
         setText(§?B§.§`&'§.toString(),§]!k§,§"-§.§6"j§);
         setText(§?B§.§;!o§.toString(),§[$[§,§"-§.§6"j§);
      }
   }
}

