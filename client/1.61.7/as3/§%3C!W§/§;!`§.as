package §<!W§
{
   import § !P§.*;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §"%H§.§1! §;
   import §%"Z§.§2"B§;
   import §-&5§.*;
   import §0"L§.§+# §;
   import §0%"§.§`"`§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4%_§.§3§;
   import §4'§.§^"p§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §7$t§.§[!X§;
   import §8#a§.*;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §;#O§.§+%7§;
   import §=#g§.*;
   import §?!E§.*;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import §`%&§.§@&,§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §;!`§ extends §%%o§
   {
      
      public static const NAME:String = "DRONE_GUARDING_BUFF";
      
      private var §?%N§:§3#3§;
      
      public function §;!`§(param1:String = "DRONE_GUARDING_BUFF")
      {
         super(param1,-1);
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
      }
      
      private function §@%D§(param1:Event) : void
      {
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(unit == _loc2_.activeUnit)
         {
            this.§-#$§();
         }
      }
      
      private function §-#$§() : void
      {
         var _loc1_:uint = 80;
         if(!§>#9§.point(unit.x,unit.y - _loc1_))
         {
            this.§?%N§ = this.§2!N§(_loc1_);
         }
      }
      
      protected function §2!N§(param1:uint) : §3#3§
      {
         unit.dispatchEvent(new Event(§0%v§.NEW_GUARDIAN_DRONE_ADDED));
         return new §3#3§(unit,unit.x,unit.y - param1);
      }
      
      public function getDrone() : §3#3§
      {
         return this.§?%N§;
      }
   }
}

