package §2#H§
{
   import §"!C§.§3#n§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §0&F§.§0%v§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §65§.§`"C§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §`#x§.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   
   public class §+$^§ extends §`"C§
   {
      
      public static const NAME:String = "DARK_SHIELD_DISABLED";
      
      public function §+$^§()
      {
         super(NAME,§-"^§);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §+$^§());
      }
   }
}

