package §<"?§
{
   import §!$d§.§<$c§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §%#u§.§`"_§;
   import §&"c§.§!!q§;
   import §+%Q§.§#%9§;
   import §-%B§.§"`§;
   import §-%B§.§-"o§;
   import §0%[§.§%"'§;
   import §0%[§.§1%"§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§=$@§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §8#`§.§#%r§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§5&6§;
   import ru.pragmatix.wormix.game.ai.§<%&§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.Cannon;
   import ru.pragmatix.wormix.weapons.HolyGrenade;
   
   use namespace gestouch_internal;
   
   public class §3>§ extends §@&#§
   {
      
      private var §^"C§:int = 0;
      
      private var §@!h§:int = 0;
      
      private var §3b§:Boolean;
      
      public function §3>§()
      {
         super(0);
         §,&0§ = 4;
      }
      
      override public function getId() : int
      {
         return -1;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §"`§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = null;
      }
      
      override public function clear() : void
      {
         this.§^"C§ = §"`§(script).waveNumCompleted;
         this.§@!h§ = §"`§(script).killRareCount;
         this.§3b§ = §"`§(script).hasFullTeam;
         super.clear();
      }
      
      public function get waveNumCompleted() : int
      {
         return Boolean(§6%D§) && Boolean(§6%D§.length) ? §"`§(script).waveNumCompleted : this.§^"C§;
      }
      
      public function get killRareCount() : int
      {
         return Boolean(§6%D§) && Boolean(§6%D§.length) ? §"`§(script).killRareCount : this.§@!h§;
      }
      
      public function get hasFullTeam() : Boolean
      {
         return Boolean(§6%D§) && Boolean(§6%D§.length) ? §"`§(script).hasFullTeam : this.§3b§;
      }
   }
}

