package §+%S§
{
   import §"#x§.§'"$§;
   import §"% §.*;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §3#T§.§;#Q§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%k§.*;
   import §<!^§.§9"§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §0"G§ extends §%%o§
   {
      
      private static const §?e§:uint = 20;
      
      public static const NAME:String = "FIREBALL_DEBUFF";
      
      public static const §%!y§:int = 1;
      
      public var §8!h§:§]$q§;
      
      public function §0"G§()
      {
         super(NAME,§%!y§,1);
      }
      
      override protected function §5#F§() : void
      {
         var _loc1_:uint = uint(unit.bonuses.getStatValue(Bonus.FIRE_DEFENSE));
         var _loc2_:uint = -1 * Math.min(§?e§,_loc1_);
         this.§8!h§ = new §]$q§(NAME);
         this.§8!h§.§3%<§(new §@"I§(Bonus.FIRE_DEFENSE,_loc2_));
         unit.bonuses.§]!X§(this.§8!h§);
      }
      
      override protected function §0&"§() : void
      {
         unit.bonuses.§9=§(this.§8!h§);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §0"G§());
      }
   }
}

