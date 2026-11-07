package §`$T§
{
   import § #m§.§[&H§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§-$s§;
   import §+%S§.§2$#§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.GameObjectDisposed;
   import §2#s§.*;
   import §3#T§.§5!M§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §4u§.§[%u§;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§8%%§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§8#x§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§8U§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §"&&§ extends §[!S§
   {
      
      private var §>e§:int;
      
      private var checkpoint:§8%%§;
      
      private var §`"§:Dictionary = new Dictionary();
      
      public function §"&&§(param1:uint, param2:Boolean = false)
      {
         super(param1,param2);
      }
      
      override public function §8%r§() : void
      {
         super.§8%r§();
         this.§>e§ = script.§>e§;
      }
      
      override protected function § "a§(param1:uint) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§"Z§ = null;
         if(param1 == 1)
         {
            §8"%§.§?!W§.§^"7§(§0$N§.RACE_QUEST_HINT);
            _loc2_ = §8"%§.§?!W§.§4"m§.§+!0§();
            for each(_loc3_ in _loc2_)
            {
               if(!_loc3_.isAi())
               {
                  this.§`"§[_loc3_] = this.§>e§ - 1;
                  Application.scene.§7#o§.§0$i§(_loc3_).§6!J§(this.§>e§);
               }
            }
         }
         super.§ "a§(param1);
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
      }
      
      override protected function §6&+§(param1:§+%]§, param2:§8%%§) : void
      {
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:§+%]§ = null;
         var _loc3_:§"Z§ = param1.squad;
         if(!this.checkpoint || param2.getId() > this.checkpoint.getId())
         {
            this.checkpoint = param2;
            if(this.§2%N§(this.checkpoint))
            {
               §9O§(_loc3_);
               §8"%§.§?!W§.§4"m§.§9!d§();
            }
            else
            {
               if(param2.getId() > 0)
               {
                  §9" §(param1);
               }
               _loc4_ = §8"%§.§?!W§.§4"m§.§="T§(currentUnit);
               for each(_loc5_ in _loc4_)
               {
                  _loc5_.x = param2.x;
                  _loc5_.y = param2.y;
                  _loc5_.setSpeedXY(0,10);
               }
            }
         }
      }
      
      override protected function §<$%§(param1:GameObjectDisposed) : void
      {
         var _loc2_:§+%]§ = §+%]§(param1.object);
         if(_loc2_.squad.§^$b§())
         {
            Application.scene.§7#o§.§0$i§(_loc2_.squad).§2!o§();
            _loc2_.removeEventListener(§0%v§.DISPOSED,this.§<$%§);
            ++§6"H§;
            return;
         }
         Application.scene.§7#o§.§0$i§(_loc2_.squad).§8& §();
         if(this.§`"§[_loc2_.squad] > 0)
         {
            --this.§`"§[_loc2_.squad];
            super.§<$%§(param1);
         }
         else
         {
            _loc2_.removeEventListener(§0%v§.DISPOSED,this.§<$%§);
            _loc2_.§#+§();
            ++§6"H§;
         }
      }
      
      override protected function §2%N§(param1:§8%%§) : Boolean
      {
         return param1.getId() == Application.scene.§^$'§().§7%L§.length - 1;
      }
      
      override protected function §1#8§() : void
      {
      }
      
      override protected function §&!!§(param1:§"Z§ = null) : Point
      {
         return new Point(this.checkpoint.x,this.checkpoint.y);
      }
      
      override public function clear() : void
      {
         super.clear();
      }
   }
}

