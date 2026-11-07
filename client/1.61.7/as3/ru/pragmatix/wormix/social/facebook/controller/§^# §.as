package ru.pragmatix.wormix.social.facebook.controller
{
   import § !8§.§9%+§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"Z§.§'$2§;
   import §%"Z§.§2"B§;
   import §%# §.§@a§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&$Y§.§2$4§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §;$8§.§6"E§;
   import §<%E§.§=$u§;
   import §<%k§.§2§;
   import §=!p§.§8#x§;
   import §="z§.*;
   import §?#g§.*;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §^# § extends §2$4§
   {
      
      public function §^# §(param1:§1#+§)
      {
         super(param1);
      }
      
      override public function §&"J§(param1:§2"B§) : String
      {
         return "";
      }
      
      override public function §1"@§() : Boolean
      {
         return true;
      }
      
      override public function §"!5§() : Boolean
      {
         return true;
      }
      
      override public function §8!?§() : Boolean
      {
         return !§8"%§.context.§]"&§().isLocal();
      }
      
      override public function §#$I§() : Date
      {
         return new Date(2013,9);
      }
      
      override public function §9!@§() : Date
      {
         return new Date(2015,1,1,0,0);
      }
      
      override public function §>Y§() : String
      {
         return ".png";
      }
      
      override public function §@%"§(param1:String) : String
      {
         return §8"%§.§[f§.§0#C§() + param1;
      }
   }
}

