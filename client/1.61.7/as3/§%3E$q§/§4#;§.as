package §>$q§
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#"V§.§8"@§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.AttackDodgedEvent;
   import §2"L§.§!!<§;
   import §2#i§.§+%z§;
   import §4f§.§-&§;
   import §7!-§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §;!Z§.*;
   import §<%c§.§>!^§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §@!i§.§<,§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §]$v§.§5"R§;
   import §^4§.§@#J§;
   import §`#x§.§"$r§;
   import config.achievements.BossAchieves;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.ex.CancelBattle;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §4#;§ extends §-#8§
   {
      
      private static const §%"N§:Vector.<String> = new <String>["KeyThievesBoxBlue","KeyThievesBoxRed","KeyThievesBoxBlack","KeyThievesBoxSilver"];
      
      private var type:uint;
      
      private var §+$y§:int;
      
      public function §4#;§(param1:Point, param2:uint)
      {
         super(param1.x,param1.y,§%"N§[param2],§0$N§.§%! §("BOSS_THIEF_KEY"));
         this.type = param2;
         this.§+$y§ = §>!^§.§?$s§;
         clip.scaleX = clip.scaleY = 0.6;
         §-b§(0,-18);
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         physParams.§0#0§ = §<#`§.NONE;
      }
      
      override protected function §-%+§(param1:§+%]§) : Boolean
      {
         return param1.squad.getTeamId() != this.§+$y§;
      }
      
      override protected function §0$j§(param1:§+%]§) : void
      {
         §@%;§.play(§`!v§.§;$u§);
         §2#6§.§0%@§(§8"%§.§?!W§.§4"m§.activeUnit);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         §1"-§.explode(§;n§.§7q§,x,y,24);
         super.§[$u§(param1);
      }
      
      public function getType() : uint
      {
         return this.type;
      }
      
      public function §4!q§() : String
      {
         return §%"N§[this.type];
      }
      
      public function §>"7§() : void
      {
         this.§+$y§ = -1;
      }
   }
}

