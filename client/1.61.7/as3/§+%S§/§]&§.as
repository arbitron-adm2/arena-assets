package §+%S§
{
   import § #m§.§[&H§;
   import § $q§.§-%f§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%# §.§@a§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#s§.*;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §4u§.§[%u§;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.§9%1§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.Bat;
   import ru.pragmatix.wormix.weapons.BlowTorch;
   
   public class §]&§ extends §%%o§
   {
      
      public static const NAME:String = "CROSSHAIR_FLUCT";
      
      public static const § &G§:int = -1;
      
      private static const §%$o§:Number = Math.PI / 36;
      
      private static const §7$#§:uint = 4;
      
      private static const §1u§:uint = 6;
      
      private static const §?%G§:Array = [Bat,BlowTorch];
      
      public var delay:uint;
      
      public var period:uint;
      
      public var angle:Number;
      
      public function §]&§(param1:uint = 6, param2:uint = 4, param3:Number = 0.08726646259971647)
      {
         super(NAME,§ &G§,1);
         this.delay = param1;
         this.period = param2;
         this.angle = param3;
      }
      
      public static function §4$c§(param1:§,%r§) : Boolean
      {
         return §""L§.§'!8§(param1,§?%G§);
      }
      
      override protected function §5#F§() : void
      {
      }
      
      override protected function §0&"§() : void
      {
      }
   }
}

