package §&!@§
{
   import § #m§.§[&H§;
   import § $q§.*;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §+$=§.§6#A§;
   import §+%Q§.§#%9§;
   import §+%S§.§2!I§;
   import §+%S§.§=$2§;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §0!Y§.§#!Z§;
   import §0%[§.§%"'§;
   import §0%[§.§]%s§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1!#§.§-e§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2#s§.*;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4!K§.§^%A§;
   import §4#2§.§,%g§;
   import §4#`§.*;
   import §4$b§.§6!G§;
   import §4%_§.§3§;
   import §4u§.§[%u§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §8#`§.§#%r§;
   import §8#a§.§>!o§;
   import §9![§.§^§;
   import §9%W§.§!7§;
   import §9%k§.§0"^§;
   import §;!Z§.*;
   import §<"?§.§3>§;
   import §<"?§.§6"d§;
   import §<%E§.§,$2§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§1e§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import §`%&§.§`§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.BossWormStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   
   public class VoodooShaman extends §6"d§
   {
      
      private static const §?#G§:§&$2§ = new §&$2§(2);
      
      private var §+"&§:§&$2§ = new §&$2§(0);
      
      private var boss:§+%]§;
      
      public function VoodooShaman()
      {
         super(59);
      }
      
      override public function getId() : int
      {
         return §+#N§.§>%§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §`9§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[4],mapRecord.§8$2§[1],mapRecord.§8$2§[2],mapRecord.§8$2§[3]],[mapRecord.§8$2§[0]],[mapRecord.§8$2§[6],mapRecord.§8$2§[7],mapRecord.§8$2§[5]]];
      }
      
      override protected function § "a§(param1:uint) : void
      {
         super.§ "a§(param1);
         if(!currentUnit.squad.isAi())
         {
            ++this.§+"&§.value;
         }
      }
      
      override protected function §6&§(param1:uint) : void
      {
         var _loc2_:§2R§ = null;
         super.§6&§(param1);
         if(!currentUnit.squad.isAi() && this.§+"&§.value == §?#G§.value)
         {
            _loc2_ = §]%!§(BossAchieves.SHAMAN_KILL_IN_TWO_TURNS);
            if(_loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      override public function §8%r§() : void
      {
         super.§8%r§();
         this.boss = enemySquads[0].§1!n§()[0];
         this.boss.addEventListener(§0%v§.DISPOSED,this.§#y§);
      }
      
      private function §#y§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.§ $A§);
         if(§8"%§.§?!W§.§4"m§.§="T§(this.boss).length == 0 && _loc2_.available)
         {
            _loc2_.completed = true;
            §`#t§(_loc2_);
         }
         else if(_loc2_.available)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
         _loc2_ = §]%!§(BossAchieves.SHAMAN_KILL_IN_TWO_TURNS);
         if(this.§+"&§.value <= §?#G§.value && _loc2_.available)
         {
            _loc2_.completed = true;
            §`#t§(_loc2_);
         }
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == §`9§.§7% §)
         {
            _loc2_ = §]%!§(BossAchieves.§ "R§);
            if(_loc2_.available)
            {
               _loc2_.completed = true;
               §`#t§(_loc2_);
            }
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         this.boss.removeEventListener(§0%v§.DISPOSED,this.§#y§);
      }
   }
}

