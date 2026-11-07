package §+%S§
{
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.*;
   import §%"Z§.§'$2§;
   import §%# §.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §,$J§.§0%G§;
   import §0%z§.*;
   import §3"@§.§""m§;
   import §4f§.§-&§;
   import §65§.§%%o§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import config.§#!"§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §["4§ extends §%%o§
   {
      
      public static const NAME:String = "INCREASE_ATTACK";
      
      public static const §6"U§:String = "INCREASE_ATTACK_SINGLE";
      
      public static const §6>§:String = "INCREASE_ATTACK_INFINITE";
      
      public static const §%!y§:int = 1;
      
      public function §["4§(param1:String, param2:int, param3:int = 1)
      {
         super(param1,param3,param2);
      }
      
      override protected function §5#F§() : void
      {
         unit.attributes.attack.§5#l§(value.value);
      }
      
      override protected function §0&"§() : void
      {
         unit.attributes.attack.§5#l§(-value.value);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         var _loc2_:int = 0;
         switch(name)
         {
            case NAME:
               _loc2_ = §8!t§() == §-"^§ ? §-"^§ : §8#z§();
               break;
            case §6"U§:
               _loc2_ = §%!y§;
               break;
            case §6>§:
               _loc2_ = §-"^§;
         }
         param1.buffs.place(new §["4§(name,value.value,_loc2_));
      }
   }
}

