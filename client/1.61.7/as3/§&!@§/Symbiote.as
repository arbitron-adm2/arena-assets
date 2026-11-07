package §&!@§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0%z§.§1&6§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §6$z§.§!"§;
   import §7!B§.§&"T§;
   import §9![§.*;
   import §9%W§.§!"G§;
   import §<"?§.§6"d§;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import §?$L§.§0"-§;
   import §?%J§.§]!J§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§,L§;
   import §`%&§.§5$1§;
   import config.achievements.BossAchieves;
   import config.achievements.§`&<§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   
   public class Symbiote extends §6"d§
   {
      
      public function Symbiote()
      {
         super(85);
         resource = new §@#%§("symbiote.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.§9!E§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §]!J§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([mapRecord.§8$2§[0],mapRecord.§8$2§[1],mapRecord.§8$2§[2],mapRecord.§8$2§[3],mapRecord.§8$2§[4],mapRecord.§8$2§[5],mapRecord.§8$2§[6],mapRecord.§8$2§[7]]),[mapRecord.§?$&§[3]],[mapRecord.§?$&§[1]]];
      }
   }
}

