package ru.pragmatix.wormix.objects.mutators
{
   import § #m§.§2#P§;
   import § #m§.§?A§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"% §.*;
   import §#",§.§+!h§;
   import §##j§.§'"%§;
   import §##j§.§7,§;
   import §#%!§.§[%U§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1&-§.§'$_§;
   import §1&-§.§4!s§;
   import §2!-§.HpChangeEvent;
   import §7!B§.§&"T§;
   import §8#<§.§^#O§;
   import §9%W§.§&!P§;
   import §;!J§.*;
   import §<%k§.§`!v§;
   import §?!p§.§1&8§;
   import §?!p§.§;W§;
   import §@!i§.§!m§;
   import §@!i§.§8%6§;
   import §@!i§.§<!9§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§?"&§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.*;
   import flash.external.ExternalInterface;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=#,§;
   import ru.pragmatix.wormix.weapons.*;
   import vk.*;
   
   public class §9%^§ implements §[%z§
   {
      
      public function §9%^§()
      {
         super();
      }
      
      public function test(param1:§&"T§) : Boolean
      {
         return param1 is §^%c§;
      }
      
      public function §0$I§(param1:§&"T§) : void
      {
         param1.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§=!G§);
      }
      
      public function §-#X§(param1:§&"T§) : void
      {
         param1.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§=!G§);
      }
      
      private function §=!G§(param1:HpChangeEvent) : void
      {
         Application.scene.dispatchEvent(param1.clone());
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate() : void
      {
      }
   }
}

