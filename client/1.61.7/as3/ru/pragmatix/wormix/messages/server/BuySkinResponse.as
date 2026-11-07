package ru.pragmatix.wormix.messages.server
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+%S§.§@x§;
   import §0!§.§[k§;
   import §0%z§.§#%x§;
   import §0%z§.§,$h§;
   import §0%z§.§1"6§;
   import §0%z§.§@"q§;
   import §0%z§.§@#S§;
   import §0%z§.AchievTabPage;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §3#a§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §<!^§.§["l§;
   import §<%k§.§`!v§;
   import §=#g§.§!"X§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import config.achievements.§"!&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class BuySkinResponse
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 1;
      
      public var result:int;
      
      public var skin:int;
      
      public var skins:Array;
      
      public var costs:Array;
      
      public var isSecure:Boolean;
      
      public var sessionKey:String;
      
      public function BuySkinResponse()
      {
         super();
      }
      
      public function toString() : String
      {
         return "BuySkinResult {" + " result=" + String(this.result) + " sessionKey=" + this.sessionKey + " isSecure=" + this.isSecure + " skin=" + this.skin + " skins=" + this.skins + " costs=" + this.costs + " }";
      }
   }
}

