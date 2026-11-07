package ru.pragmatix.wormix.messages.server
{
   import § "%§.§0$[§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%E§.§5%C§;
   import §&$Y§.§&!R§;
   import §2!-§.WaterLevelChangedEvent;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class AwardGranted
   {
      
      public var awardType:int;
      
      public var attach:String;
      
      public var awards:Array;
      
      public var bonus:§]+§;
      
      public function AwardGranted()
      {
         super();
      }
      
      public function toString() : String
      {
         return "AwardGranted{" + "awardType=" + this.awardType + ",attach=" + this.attach + ",bonus=" + this.bonus + ",awards=" + this.awards + "}";
      }
   }
}

