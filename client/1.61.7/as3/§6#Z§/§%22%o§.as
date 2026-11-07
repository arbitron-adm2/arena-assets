package §6#Z§
{
   import §"!C§.§3#n§;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#E§.§4##§;
   import §&#E§.§;"v§;
   import §'!Z§.*;
   import §'"N§.§4&5§;
   import §+%S§.§+m§;
   import §+%S§.§2!x§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2"L§.§^$y§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2B§.§&!Y§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §6$z§.§!"§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<!W§.§!"+§;
   import §<%E§.§=$u§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §=&!§.§<$Z§;
   import §=;§.§^"E§;
   import §?#g§.§-!k§;
   import §?$7§.§!§;
   import §?$7§.§+l§;
   import §?$7§.§6%k§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§4#o§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import config.achievements.§!$L§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3!V§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.bonus.*;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §"%o§ extends §4#V§
   {
      
      private static const §;&E§:uint = 5;
      
      private var count:§&$2§ = new §&$2§(0);
      
      private var §2"T§:§&$2§ = new §&$2§(0);
      
      private var §2"9§:Vector.<int> = new Vector.<int>(0);
      
      public function §"%o§()
      {
         super(0.08);
      }
      
      public function §^6§(param1:int, param2:int, param3:uint) : §^"E§
      {
         var _loc5_:int = 0;
         var _loc4_:Vector.<int> = §8"%§.§?!W§.§^!U§().reagentsForBattle;
         if(_loc4_.length > 0 && this.§2"T§.value < this.count.value && §>?§(param1,param2,param3))
         {
            var _loc6_:§&$2§ = this.§2"T§;
            var _loc7_:Number = _loc6_.value + 1;
            _loc6_.value = _loc7_;
            _loc5_ = _loc4_.shift();
            return new §^"E§(new Point(param1,param2),_loc5_);
         }
         return null;
      }
      
      public function §-[§(param1:int) : void
      {
         this.§2"9§.push(param1);
      }
      
      public function §12§() : Vector.<int>
      {
         return this.§2"9§.concat();
      }
      
      public function §0!S§(param1:int) : void
      {
         var _loc2_:Vector.<int> = §8"%§.§?!W§.§^!U§().reagentsForBattle;
         if(_loc2_.length < §;&E§)
         {
            this.count.value = Math.min(this.count.value + 1,§;&E§);
            _loc2_.push(param1);
         }
      }
   }
}

