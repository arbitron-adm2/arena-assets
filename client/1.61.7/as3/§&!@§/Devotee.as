package §&!@§
{
   import § #m§.§;#^§;
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §%"Z§.*;
   import §%# §.§##U§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §-%B§.*;
   import §-@§.*;
   import §0%z§.§,$h§;
   import §1!J§.§@#%§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#H§.§+$^§;
   import §3#a§.§-#M§;
   import §4$b§.*;
   import §4%_§.ZombieGrave;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§^%%§;
   import §9"^§.§?!B§;
   import §<"?§.§6"d§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §?$7§.*;
   import §?%J§.*;
   import §@!N§.§""L§;
   import §@!i§.§;#L§;
   import §@"x§.*;
   import §@$v§.§%3§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.§<§;
   import §]^§.§-$T§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^!"§.§"$k§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class Devotee extends §6"d§
   {
      
      public function Devotee()
      {
         super(134);
         resource = new §@#%§("devotee.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.§8"7§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §0$#§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([new Point(859,1010),new Point(1087,537),new Point(2328,1266),new Point(2054,600)]),[mapRecord.§8$2§[3]],[mapRecord.§?$&§[1],mapRecord.§8$2§[2],mapRecord.§?$&§[2]]];
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc1_:§?!d§ = super.§,$j§();
         _loc1_.§`%?§ = §"%r§.BOSS_DEVOTEE;
         return _loc1_;
      }
   }
}

