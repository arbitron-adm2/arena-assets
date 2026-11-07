package §[#q§
{
   import § !P§.§<#q§;
   import § "d§.§,!c§;
   import §!$d§.§<$c§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §&"c§.§5$n§;
   import §&$Y§.§6[§;
   import §&$Y§.§`%Q§;
   import §&&6§.*;
   import §+#P§.§]!E§;
   import §,!f§.*;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§]2§;
   import §0%z§.*;
   import §1#p§.§"Z§;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §6",§.§[%w§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §8#<§.§!#^§;
   import §9%W§.§!7§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §`%c§.§<%D§;
   import config.achievements.§"!&§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §?`§ extends §`%Q§
   {
      
      public function §?`§()
      {
         super(§`%e§);
      }
      
      override protected function §!"K§() : §6[§
      {
         §!#C§(new §<%D§(§;S§,§`%e§));
         §6#b§.addEventListener(§[%w§.WINDOW_CLOSE,this.§""K§);
         return §6#b§;
      }
      
      private function §""K§(param1:Event) : void
      {
         §6[§(param1.target).removeEventListener(§[%w§.WINDOW_CLOSE,this.§""K§);
         §!#C§(null);
      }
   }
}

