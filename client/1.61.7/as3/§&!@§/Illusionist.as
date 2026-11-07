package §&!@§
{
   import § #m§.§;#^§;
   import § $q§.BagMenu;
   import § &5§.§0&$§;
   import §!!i§.§'"m§;
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-@§.§6&3§;
   import §0!§.§6#z§;
   import §0!Y§.§!$%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2#x§.§[#Z§;
   import §3#T§.§5!M§;
   import §3#T§.§;#Q§;
   import §3%J§.BuyBattleTokensDialog;
   import §4!K§.*;
   import §4#`§.*;
   import §5!b§.§8#W§;
   import §5"J§.§7@§;
   import §5%S§.§>&-§;
   import §5o§.§0!$§;
   import §6"'§.§9$Z§;
   import §6"'§.§=$@§;
   import §6$z§.§%&&§;
   import §7!B§.§&"T§;
   import §9![§.*;
   import §9z§.§>"d§;
   import §<!W§.§7!L§;
   import §<"?§.§6"d§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?%J§.*;
   import §@!i§.§,! §;
   import §@!i§.§5%8§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[" §.§ #a§;
   import §[" §.§3$y§;
   import §[" §.§^"c§;
   import §[$<§.§>"9§;
   import §]#[§.§"!I§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import config.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.ConnectIcon;
   import ru.pragmatix.wormix.gui.house.craft.CraftRoom;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.gui.window.§4W§;
   import ru.pragmatix.wormix.gui.window.WeaponTipsPanel;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class Illusionist extends §6"d§
   {
      
      public static const §]$#§:§&$2§ = new §&$2§(5);
      
      public function Illusionist()
      {
         super(60);
      }
      
      override public function getId() : int
      {
         return §+#N§.§9$6§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §[%m§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[1],mapRecord.§8$2§[2],mapRecord.§8$2§[3],mapRecord.§8$2§[4]],[mapRecord.§8$2§[0]]];
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == BossAchieves.ILLUSIONIST_DROWN_FIVE_TIMES)
         {
            _loc2_ = §]%!§(BossAchieves.ILLUSIONIST_DROWN_FIVE_TIMES);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§]$#§.value);
            }
         }
         else if(param1.code == BossAchieves.§1q§)
         {
            _loc2_ = §]%!§(BossAchieves.§1q§);
            if(_loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
         else if(param1.code == BossAchieves.§["f§)
         {
            _loc2_ = §]%!§(BossAchieves.§["f§);
            if(_loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.§1q§).§,%,§();
         §]%!§(BossAchieves.§["f§).§,%,§();
      }
   }
}

