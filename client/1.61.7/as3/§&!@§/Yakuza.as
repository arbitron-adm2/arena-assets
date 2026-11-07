package §&!@§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § #9§.*;
   import § &5§.§=#P§;
   import §!!i§.§'"m§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §%Q§.*;
   import §&"c§.§!!q§;
   import §&#E§.§4##§;
   import §&%X§.§^#=§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+#U§.*;
   import §+%S§.§+m§;
   import §,"v§.§9%d§;
   import §,#A§.§-$b§;
   import §-%B§.§-"o§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §3#T§.§;'§;
   import §3#a§.§-#M§;
   import §4'§.§4$&§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §5o§.§0!$§;
   import §7!B§.*;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9"-§.§?!s§;
   import §9%W§.§!7§;
   import §<!W§.*;
   import §<"?§.§6"d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §?$7§.*;
   import §?$K§.§3#j§;
   import §?$K§.§>K§;
   import §?$L§.§0"-§;
   import §?%J§.§4$E§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§8%6§;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#o§.§[&7§;
   import §`#x§.§"$r§;
   import §`%&§.§2z§;
   import config.§;"I§;
   import config.§`!a§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.rules.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.CraftRoom;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.Girder;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Yakuza extends §6"d§
   {
      
      public static const §+=§:§&$2§ = new §&$2§(3);
      
      public static const §]$B§:§&$2§ = new §&$2§(3);
      
      public function Yakuza()
      {
         super(68);
      }
      
      override public function getId() : int
      {
         return §+#N§.§1!+§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §4$E§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[§#$J§(1389,744),§#$J§(828,744),§#$J§(2218,842),§#$J§(1409,1068)],[§#$J§(1697,309)],[§#$J§(1174,391)],[§#$J§(1772,790)]];
      }
      
      override protected function §!"V§() : void
      {
         Application.scene.addEventListener(§0%v§.MASSIVE_DAMAGE,this.§=#u§);
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         var _loc2_:§2R§ = §]%!§(BossAchieves.YAKUZA_KILL_TWO_IN_TURN);
         if(Boolean(_loc2_) && _loc2_.available)
         {
            if(this.§5%a§ <= 1)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
            else
            {
               _loc2_.count = 0;
            }
         }
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.YAKUZA_KILL_STEEL_LAST);
         if(Boolean(_loc2_ && _loc2_.available) && Boolean(param1.code == BossAchieves.YAKUZA_KILL_STEEL_LAST) && this.§5%a§ > 0)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
         _loc2_ = §]%!§(BossAchieves.YAKUZA_KILL_TWO_IN_TURN);
         if(Boolean(_loc2_) && _loc2_.available)
         {
            §=$I§(_loc2_,§+=§.value - 1);
         }
      }
      
      override protected function §'G§() : void
      {
         var _loc1_:§2R§ = §]%!§(BossAchieves.YAKUZA_KILL_STEEL_LAST);
         if(_loc1_)
         {
            §]%!§(BossAchieves.YAKUZA_KILL_STEEL_LAST).§,%,§();
         }
      }
      
      private function §=#u§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.YAKUZA_DO_MONSTER_THREE_TIMES);
         if(Boolean(_loc2_) && _loc2_.available)
         {
            §=$I§(_loc2_,§]$B§.value);
         }
      }
      
      private function get §5%a§() : int
      {
         var _loc2_:§"Z§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in enemySquads)
         {
            _loc1_ += _loc2_.§'"H§();
         }
         return _loc1_;
      }
      
      override public function clear() : void
      {
         super.clear();
         Application.scene.removeEventListener(§0%v§.MASSIVE_DAMAGE,this.§=#u§);
      }
   }
}

