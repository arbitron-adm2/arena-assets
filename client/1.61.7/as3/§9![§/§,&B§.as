package §9![§
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §-@§.§5"4§;
   import §0&F§.§0%v§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §6$z§.BonusTrait;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[!`§.VoidZone;
   import §[%§.Boar;
   import §[%§.Rhino;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.SetMercenariesTeamMembers;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.AdrenalineInjection;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §,&B§ extends BonusTrait
   {
      
      private var §'"9§:Boolean;
      
      private var §%&#§:int;
      
      public function §,&B§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         if(Boolean(§8"%§.§?!W§.§4"m§ && owner) && Boolean(owner.attributes) && this.§3"D§(param1))
         {
            return;
         }
         this.§%&#§ = param1;
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
      }
      
      override protected function deactivate(param1:int) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         if(this.§'"9§)
         {
            if(owner is Rhino)
            {
               Rhino(owner).addJumpExplodeRadius(-param1);
            }
            else if(owner is Boar)
            {
               Boar(owner).addJumpExplodeRadius(-param1);
            }
         }
         this.§'"9§ = false;
         this.§%&#§ = 0;
      }
      
      private function §3"D§(param1:int) : Boolean
      {
         if(this.§'"9§)
         {
            return true;
         }
         if(owner is Rhino)
         {
            this.§'"9§ = Rhino(owner).addJumpExplodeRadius(param1);
         }
         else if(owner is Boar)
         {
            this.§'"9§ = Boar(owner).addJumpExplodeRadius(param1);
         }
         return this.§'"9§;
      }
      
      private function §@%D§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         this.§3"D§(this.§%&#§);
      }
   }
}

