package §7!n§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"Z§.§+$A§;
   import §%# §.§@a§;
   import §&x§.§8$5§;
   import §+#m§.§2!`§;
   import §+$=§.§6#A§;
   import §2!-§.DamageEvent;
   import §2#8§.§6"a§;
   import §2#x§.§@!U§;
   import §2B§.§#&E§;
   import §6%2§.§#"B§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §8#a§.*;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §=!p§.§1e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §^#[§.§?"&§;
   import com.greensock.loading.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §2!j§ extends §[&#§
   {
      
      public function §2!j§(param1:DisplayObjectContainer, param2:String)
      {
         super(param1,param2);
      }
      
      override protected function §3#,§(param1:Event = null) : void
      {
         var _loc2_:§2!`§ = new §2!`§(this.§@Y§,this.§'@§);
         _loc2_.show();
      }
      
      private function §@Y§(param1:UserProfile) : void
      {
         §8"%§.§?!W§.§-!]§(param1);
      }
      
      private function §'@§() : void
      {
         var _loc1_:§<#&§ = §<#&§.valueOf(§-"P§.§'$L§);
         if(§4! §.§7"-§(Application.userProfile,§+$A§.INGAME,_loc1_))
         {
            §8"%§.§%w§.getArenaMenu().hide();
            §8"%§.§?!W§.§`";§(_loc1_);
         }
      }
   }
}

