package §["3§
{
   import § $q§.§3U§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §-@§.§0"e§;
   import §0&F§.§0%v§;
   import §3"@§.§#$O§;
   import §4u§.ReagentHint;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§-!Y§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[$<§.*;
   import §]#[§.§2%o§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §@%^§ extends §?"8§
   {
      
      private var currentCount:uint;
      
      public function §@%^§()
      {
         super();
         tick.visible = false;
      }
      
      override public function setItem(param1:§&!e§, param2:int) : void
      {
         §<"&§(param1,new ReagentHint(param1));
         this.currentCount = §@&&§.getProfile().§2!>§().§ %n§(param1.getId());
         §&$9§.§>&F§(textCount,§"-§.§6"j§,String(this.currentCount + "/" + param2));
         §^%C§ = this.currentCount >= param2;
         §`$ §();
      }
      
      public function getCurrentCount() : uint
      {
         return this.currentCount;
      }
   }
}

