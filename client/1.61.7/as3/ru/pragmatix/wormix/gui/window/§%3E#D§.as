package ru.pragmatix.wormix.gui.window
{
   import §!$d§.§<$c§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §4B§.§=%8§;
   import §5o§.ArmoryHelpWindow;
   import §6"'§.§&"3§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0-§;
   import §7$t§.§^$E§;
   import §9%W§.§!"G§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §>#D§ extends §0-§
   {
      
      protected var plus:String;
      
      public function §>#D§(param1:MovieClip, param2:String = "+")
      {
         this.plus = param2;
         super(param1);
      }
      
      public function §[#E§(param1:Array) : void
      {
         setData(param1);
         if(param1.length <= cells.length)
         {
            getChildByName("prev").visible = getChildByName("next").visible = false;
         }
         update();
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §^%3§(MovieClip(param1),this.plus);
      }
   }
}

