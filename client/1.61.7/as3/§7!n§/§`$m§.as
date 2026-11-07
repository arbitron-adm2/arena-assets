package §7!n§
{
   import § &5§.§%$O§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&#h§.§!"b§;
   import §&#h§.§-"F§;
   import §+#P§.§8"j§;
   import §+%S§.§+m§;
   import §+%S§.§="_§;
   import §+%S§.§[&;§;
   import §,$J§.§0%G§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §3"@§.§""m§;
   import §3#a§.§[&A§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §`$m§ extends §[&#§
   {
      
      public function §`$m§(param1:DisplayObjectContainer, param2:String)
      {
         super(param1,param2);
      }
      
      override protected function init(param1:String) : void
      {
         super.init(param1);
         setText(§0$N§.REWARD_UP_TO,§%#e§,§"-§.§+$m§);
      }
      
      override public function setData(param1:§<#&§) : void
      {
         super.setData(param1);
         setText(§!"b§.§`&'§.toString(),§]!k§,§"-§.§6"j§);
      }
      
      override public function update() : void
      {
         super.update();
         setText(§!"b§.§`&'§.toString(),§]!k§,§"-§.§6"j§);
      }
      
      override protected function §3#,§(param1:Event = null) : void
      {
         §8"%§.§?$5§.§4%1§();
      }
   }
}

