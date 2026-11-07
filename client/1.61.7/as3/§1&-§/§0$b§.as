package §1&-§
{
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.§ G§;
   import §"$+§.§@C§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §,#c§.ArenaMenu;
   import §,&+§.§=#x§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.*;
   import §2#i§.§+%z§;
   import §3#T§.§?$q§;
   import §5"J§.*;
   import §<!W§.§>&@§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=&!§.§<$!§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$7§.§+l§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[%§.Rabbit;
   import §]^§.§4&+§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.PostClanNewsRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   
   public class §0$b§ extends §>%`§
   {
      
      public static const NAME:String = "EXPLOSION_DEATH";
      
      public function §0$b§(param1:§5$n§, param2:int = 1)
      {
         super(NAME,param1,param2);
      }
      
      override protected function §5#F§() : void
      {
         unit.addEventListener(§0%v§.DISPOSED,this.§[$u§,false,§[!F§.§6#@§);
      }
      
      override protected function §0&"§() : void
      {
         if(!§&%M§)
         {
            unit.removeEventListener(§0%v§.DISPOSED,this.§[$u§);
         }
      }
      
      private function §[$u§(param1:Event) : void
      {
         if(§8"%§.§?!W§.§4"m§)
         {
            §8"%§.§?!W§.§4"m§.§!%W§.§3%g§(unit,MechanicEventV2.TYPE_EXPLOSION_DEATH,getValue(),sourceItemId);
         }
         apply(getValue());
      }
   }
}

