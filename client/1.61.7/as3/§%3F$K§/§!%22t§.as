package §?$K§
{
   import § !8§.§9%+§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§;%l§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3#T§.Boomerang;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4$b§.§2m§;
   import §5!,§.§9$h§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?#g§.*;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §[$<§.§>$o§;
   import §]$J§.§#"s§;
   import §]$v§.§<§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §!"t§ extends §%%o§
   {
      
      public static const NAME:String = "NEARBY_ENEMIES_PROTECTION";
      
      private var distance:§&$2§;
      
      public function §!"t§(param1:uint = 150)
      {
         this.distance = new §&$2§(param1);
         super(NAME,-1,0);
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.SOT,this.§<!D§);
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§<!D§);
      }
      
      private function §<!D§(param1:Event) : void
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(!unit.disposed && unit.squad.getTeamId() == _loc2_.activeUnit.squad.getTeamId())
         {
            _loc3_ = _loc2_.§6"M§(unit);
            for each(_loc4_ in _loc3_)
            {
               if(§-q§.distance(unit.x,unit.y,_loc4_.x,_loc4_.y) <= this.distance.value)
               {
                  §-#M§.§[&F§(_loc4_);
               }
            }
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §!"t§(this.distance.value));
      }
   }
}

