package §+%S§
{
   import §"$+§.§^$`§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§9"z§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §2"L§.§^$y§;
   import §3#T§.§]!6§;
   import §4#`§.§+!l§;
   import §5#`§.§7%g§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §[!`§.*;
   import flash.events.Event;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   use namespace gestouch_internal;
   
   public class §>!I§ extends §%%o§
   {
      
      public static const NAME:String = "INCREASE_ARMOR";
      
      public static const §6>§:String = "INCREASE_ARMOR_INFINITE";
      
      public static const §%!y§:int = 1;
      
      public function §>!I§(param1:String, param2:int, param3:int = 1)
      {
         super(param1,param3,param2);
      }
      
      override protected function §5#F§() : void
      {
         unit.attributes.armor.§5#l§(value.value);
      }
      
      override protected function §0&"§() : void
      {
         unit.attributes.armor.§5#l§(-value.value);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         var _loc2_:int = 0;
         switch(name)
         {
            case NAME:
               _loc2_ = §8!t§() == §-"^§ ? §-"^§ : §8#z§();
               break;
            case §6>§:
               _loc2_ = §-"^§;
         }
         param1.buffs.place(new §>!I§(name,value.value,_loc2_));
      }
   }
}

