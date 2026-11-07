package §<!W§
{
   import §!$D§.*;
   import §"!C§.§3#n§;
   import §%"1§.§@%;§;
   import §&&6§.§>V§;
   import §'!Z§.§1"-§;
   import §+%S§.§73§;
   import §+%S§.KamikazeBuff;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2"v§.§@G§;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4!!§.§76§;
   import §4#2§.§^S§;
   import §4u§.§!!o§;
   import §5!,§.§9$h§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §65§.§%%o§;
   import §7$t§.§2"y§;
   import §8#o§.§#$s§;
   import §9%W§.§&!P§;
   import §<"?§.§7!@§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.CloseExitClanResponse;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §#"1§ extends §%%o§
   {
      
      public static const NAME:String = "ROBOT_BATTLE_ANALYSE_BUFF";
      
      public static const §;!O§:§&$2§ = new §&$2§(5);
      
      public static const §=$w§:§&$2§ = new §&$2§(10);
      
      private static const §"%9§:§&$2§ = new §&$2§(6);
      
      public static const §+$g§:§&$2§ = new §&$2§(50);
      
      public static const §8#L§:§&$2§ = new §&$2§(150);
      
      public static const §&!V§:§&$2§ = new §&$2§(§8#L§.value - §+$g§.value);
      
      public static const § &G§:int = 3;
      
      private var §,#l§:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var §-!z§:Vector.<int> = new Vector.<int>(0);
      
      public function §#"1§(param1:String = "ROBOT_BATTLE_ANALYSE_BUFF")
      {
         super(param1,-1);
      }
      
      public static function §0%4§(param1:int) : int
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc2_:int = param1 - §+$g§.value;
         if(_loc2_ < 0)
         {
            return 0;
         }
         _loc3_ = §&!V§.value / 100 * _loc2_;
         _loc4_ = §=$w§.value / 100 * _loc3_;
         return int(§;!O§.value + Math.min(_loc4_,§=$w§.value));
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.addEventListener(§0%v§.DAMAGE,this.onDamage);
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.DAMAGE,this.onDamage);
      }
      
      private function §@%D§(param1:Event) : void
      {
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(_loc2_.activeUnit.§4!R§(unit))
         {
            this.§@!R§();
            this.resetTargets();
         }
      }
      
      public function resetTargets() : void
      {
         if(this.§,#l§)
         {
            this.§,#l§.length = 0;
            this.§-!z§.length = 0;
         }
         else
         {
            this.§,#l§ = new Vector.<§+%]§>(0);
            this.§-!z§ = new Vector.<int>(0);
         }
      }
      
      private function §@!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:§+%]§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         for each(_loc2_ in this.§,#l§)
         {
            _loc3_ = this.§,#l§.indexOf(_loc2_);
            _loc4_ = this.§-!z§[_loc3_];
            if(!_loc2_.buffs.hasBuff(§73§.NAME) && _loc4_ >= §+$g§.value)
            {
               _loc5_ = §0%4§(_loc4_);
               if(_loc5_ >= 0)
               {
                  _loc2_.buffs.addValue(new §73§(_loc5_,§ &G§));
                  if(!§-#M§.§&$i§(_loc2_))
                  {
                     §1"-§.§8"l§(_loc2_,§1"-§.§^"^§);
                  }
                  _loc1_ = true;
                  if(unit.squad.isLocal())
                  {
                     §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§ $y§,_loc5_);
                  }
               }
            }
         }
         if(_loc1_)
         {
            §@%;§.play(§`!v§.§-$z§);
         }
      }
      
      private function onDamage(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:int = 0;
         if(!param1.source || !param1.source.owner || !param1.source.owner.squad)
         {
            return;
         }
         if(!§8"%§.§?!W§.§4"m§.activeUnit)
         {
            return;
         }
         if(!§8"%§.§?!W§.§4"m§.activeUnit.§4!R§(unit))
         {
            return;
         }
         if(Boolean(param1.source) && Boolean(param1.source.owner) && param1.source.owner.§4!R§(unit))
         {
            _loc2_ = param1.victim as §+%]§;
            if(Boolean(_loc2_) && _loc2_.squad.getTeamId() != unit.squad.getTeamId())
            {
               _loc3_ = this.§,#l§.indexOf(_loc2_);
               if(_loc3_ == -1)
               {
                  this.§,#l§.push(_loc2_);
                  this.§-!z§.push(param1.power);
               }
               else
               {
                  this.§-!z§[_loc3_] += param1.power;
               }
            }
         }
      }
   }
}

