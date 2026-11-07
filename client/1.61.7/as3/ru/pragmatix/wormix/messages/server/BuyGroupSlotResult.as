package ru.pragmatix.wormix.messages.server
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&x§.§8$5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§-$s§;
   import §+%S§.§2$#§;
   import §+%S§.§>!I§;
   import §+%S§.§["4§;
   import §-%B§.*;
   import §-&5§.§ &8§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §3#T§.§5!M§;
   import §3%J§.*;
   import §65§.§`"C§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!N§.§&#Z§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^!]§.MineSetUpEvent;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class BuyGroupSlotResult
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 1;
      
      public static const NOT_ENOUGH_MONEY:int = 3;
      
      public var result:int;
      
      public var newSlotsIndex:int;
      
      public var sessionKey:String;
      
      public var isSecure:Boolean;
      
      public function BuyGroupSlotResult()
      {
         super();
      }
   }
}

