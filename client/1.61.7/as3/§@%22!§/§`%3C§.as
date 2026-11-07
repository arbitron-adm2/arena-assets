package §@"!§
{
   import §!L§.§+"'§;
   import §##j§.§#$!§;
   import §##j§.§9x§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#h§.§,#;§;
   import §&#h§.§?B§;
   import §&%7§.§ !0§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §-@§.§3%9§;
   import §-G§.*;
   import §0%[§.§0%§;
   import §0&F§.§4$T§;
   import §1#p§.Team;
   import §6%2§.§!"x§;
   import §6%2§.§+§;
   import §7$t§.§&!e§;
   import §8!Y§.§`#Q§;
   import §9%k§.*;
   import §<%E§.§;!y§;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §[%'§.§<"G§;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   use namespace gestouch_internal;
   
   public class §`<§ implements §7$x§
   {
      
      public static const §7F§:§7$x§ = new §`<§();
      
      public function §`<§()
      {
         super();
      }
      
      public function §@!'§(param1:Vector.<Team>) : §<$Z§
      {
         var _loc2_:§<$Z§ = null;
         if(!§8"%§.§?!W§.§4"m§.§;"g§())
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"winning conditions hack 2"));
         }
         if(param1.length <= 1)
         {
            if(param1.length == 0)
            {
               _loc2_ = §<$Z§.§7!i§;
            }
            else
            {
               if(param1.length != 1 || §8"%§.§?!W§.§4"m§.§`%0§() != 1)
               {
                  Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"winning conditions hack 1"));
               }
               if(param1[0].id == §>!^§.§6#S§)
               {
                  _loc2_ = §<$Z§.§+%I§;
               }
               else
               {
                  _loc2_ = §<$Z§.§!M§;
               }
            }
         }
         return _loc2_;
      }
   }
}

