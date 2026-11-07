package ru.pragmatix.wormix.messages.server
{
   import §!!i§.§@&&§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3%J§.SpecialDealWindow;
   import §4!x§.§@& §;
   import §5"J§.*;
   import §6",§.§[%w§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7$t§.§^$E§;
   import §9%W§.§!"G§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class BuyRenameCharResult
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 1;
      
      public static const NOT_ENOUGH_MONEY:int = 3;
      
      public var result:int;
      
      public var teamMemberId:int;
      
      public var name:String;
      
      public var sessionKey:String;
      
      public var isSecure:Boolean;
      
      public function BuyRenameCharResult()
      {
         super();
      }
   }
}

