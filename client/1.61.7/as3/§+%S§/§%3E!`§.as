package §+%S§
{
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§0%§;
   import §2"L§.§,'§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §>!`§ extends §"!q§
   {
      
      public function §>!`§(param1:§&"T§, param2:§+%]§, param3:Point, param4:uint, param5:uint, param6:uint, param7:String)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §0"4§(param1:§&"T§, param2:§+%]§, param3:§+%]§, param4:int) : void
      {
         §'"$§.§]#I§(param2,param3.x,param3.y,param3,param4,0,0,false,true,§&!E§.COLD);
         §@%;§.play(§`!v§.§ !h§);
         param3.buffs.place(new §+m§(param2,2));
      }
      
      override protected function §+!M§() : void
      {
         §0"4§(gobj,owner,unit,damage);
      }
   }
}

