package §<!W§
{
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%# §.§@a§;
   import §+%S§.§ #R§;
   import §,"v§.§9%d§;
   import §2B§.§#&E§;
   import §6%2§.§#"B§;
   import §65§.§%%o§;
   import §<$q§.§6%b§;
   import §=$#§.*;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import config.§;"I§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §'i§ extends §%%o§
   {
      
      public static const NAME:String = "UNDERWATER_BREATH_SQUAD_PLACER_BUFF";
      
      private static const §^#s§:Array = [§ #R§.NAME,§7!L§.NAME];
      
      public function §'i§()
      {
         super(NAME,§-"^§);
      }
      
      override protected function §5#F§() : void
      {
         super.§5#F§();
         var _loc1_:Vector.<§-!k§> = Race.§+&8§.§]!D§().§+%t§();
         if(unit.record.getRace().getId() != §;"I§.§+&8§ || unit.record.getLevel() < _loc1_[_loc1_.length - 1].getLevel())
         {
            clear();
         }
      }
      
      override protected function §7$d§() : void
      {
         var _loc2_:§+%]§ = null;
         if(§8"%§.§?!W§.§4"m§.activeUnit != unit)
         {
            return;
         }
         var _loc1_:Vector.<§+%]§> = unit.squad.§1!n§();
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_ != unit && !_loc2_.buffs.§%%b§(§^#s§))
            {
               _loc2_.buffs.place(new §7!L§(unit));
            }
         }
      }
   }
}

