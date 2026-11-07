package ru.pragmatix.wormix.messages.clans.request.edit
{
   import §#",§.§+!h§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §0%[§.§0%§;
   import §2B§.§#&E§;
   import §7$t§.§=?§;
   import §@!i§.§!m§;
   import §@!i§.§8%6§;
   import §^#[§.§?"&§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.utils.§=#,§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ChangeClanEmblemRequest
   {
      
      public var emblem:Vector.<uint>;
      
      public var fromTreas:Boolean;
      
      public function ChangeClanEmblemRequest(param1:Vector.<uint>, param2:Boolean)
      {
         super();
         this.emblem = param1;
         this.fromTreas = param2;
      }
   }
}

