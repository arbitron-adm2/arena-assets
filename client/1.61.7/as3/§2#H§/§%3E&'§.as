package §2#H§
{
   import § !8§.§9%+§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&#E§.§;2§;
   import §'!Z§.§6S§;
   import §+%Q§.§#%9§;
   import §,!f§.*;
   import §0%[§.§%"'§;
   import §0%j§.§0$+§;
   import §2!-§.DamageEvent;
   import §2B§.§#&E§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §8#`§.§#%r§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=#y§.*;
   import §@!N§.§'+§;
   import §[%'§.§<"G§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLRequestMethod;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   
   public class §>&'§ extends §,"R§
   {
      
      public static const NAME:String = "BEFORE_DEATH_AURA";
      
      public function §>&'§(param1:§6S§, param2:int)
      {
         super(param1,NAME);
         this.duration.value = param2;
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         unit.attributes.hp.§#1§(Math.ceil(param1.power),true,0);
         param1.power = 0;
      }
   }
}

