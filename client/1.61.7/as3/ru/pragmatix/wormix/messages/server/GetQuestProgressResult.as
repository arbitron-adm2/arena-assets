package ru.pragmatix.wormix.messages.server
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"Z§.§'$2§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §2!-§.DamageEvent;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=$#§.*;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §]#b§.§8!d§;
   import §^#[§.§&$2§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class GetQuestProgressResult
   {
      
      public var error:int;
      
      public var questStructures:Array;
      
      public function GetQuestProgressResult()
      {
         super();
      }
      
      public function toString() : String
      {
         return "GetQuestProgressResult { error=" + this.error + ", questStructures=" + this.questStructures + " }";
      }
   }
}

