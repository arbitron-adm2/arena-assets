package com.greensock.plugins
{
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §3#a§.*;
   import §<%k§.§`!v§;
   import §@!N§.§""L§;
   import §@!i§.§<!9§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class BezierThroughPlugin extends BezierPlugin
   {
      
      public static const API:Number = 1;
      
      public function BezierThroughPlugin()
      {
         super();
         this.propName = "bezierThrough";
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!(param2 is Array))
         {
            return false;
         }
         init(param3,param2 as Array,true);
         return true;
      }
   }
}

