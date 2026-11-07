package §5!,§
{
   import § !8§.§`!d§;
   import §!%6§.§56§;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §#!5§.§>S§;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §%$!§.§@!o§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&#W§.§4#T§;
   import §&#h§.*;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §0&F§.§0%v§;
   import §2"L§.§##l§;
   import §4%_§.§3§;
   import §65§.§%%o§;
   import §7$t§.§??§;
   import §7$t§.§[!X§;
   import §8$V§.§]!i§;
   import §8$Z§.*;
   import §9%W§.§!7§;
   import §;$%§.§'%W§;
   import §>!_§.§'!&§;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!N§.§&#Z§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@$§.§;F§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §]"G§ extends §%%o§
   {
      
      public static const NAME:String = "SWITCH_TURN_FREE_USE_BUFF";
      
      private static const § %T§:Vector.<int> = new Vector.<int>(0);
      
      public function §]"G§(param1:String = "SWITCH_TURN_FREE_USE_BUFF")
      {
         super(param1,-1);
      }
      
      private static function §9!x§(param1:int) : void
      {
         if(§ %T§.indexOf(param1) == -1)
         {
            § %T§.push(param1);
         }
      }
      
      private static function §-"3§(param1:int) : void
      {
         § %T§.splice(param1,1);
      }
      
      private static function §8">§(param1:int) : int
      {
         return § %T§.indexOf(param1);
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         super.onNextTurn(param1);
         this.setCanUseOnTurn();
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §]"G§());
      }
      
      public function setCanUseOnTurn() : void
      {
         §9!x§(unit.squad.getNumber());
      }
      
      public function §^!2§() : void
      {
         var _loc1_:Number = §8">§(unit.squad.getNumber());
         if(_loc1_ > -1)
         {
            §-"3§(_loc1_);
         }
      }
      
      public function § %T§() : Boolean
      {
         return §8">§(unit.squad.getNumber()) > -1;
      }
   }
}

