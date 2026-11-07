package §2#H§
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §##y§.BeforeHitEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§[&$§;
   import §+$=§.§6#A§;
   import §+5§.*;
   import §,"v§.§9%d§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.UnitKilledEvent;
   import §2#i§.§+%z§;
   import §3#T§.Boomerang;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4!!§.§6$V§;
   import §4%_§.ZombieGrave;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §6",§.§[%w§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §<$q§.§"%r§;
   import §<%E§.§%#z§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#y§.*;
   import §=;§.§>%>§;
   import §?#g§.Race;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^!"§.§^$F§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.plugins.*;
   import config.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.utils.*;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §`#D§ extends §%%o§
   {
      
      public static const NAME:String = "FEAR_DEBUFF";
      
      private static const § &G§:int = 1;
      
      private static const §`!q§:int = 3;
      
      private static const §4"L§:uint = 8;
      
      private static const §@%4§:uint = §4"L§ * 14;
      
      private var §#"z§:uint = 0;
      
      private var dummy:§&"T§;
      
      private var §7&I§:int;
      
      private var §=T§:Point;
      
      private var §-$A§:§[&$§;
      
      public function §`#D§()
      {
         super(NAME,§ &G§,0);
         this.dummy = Application.scene.§,$z§();
         this.dummy.stable = true;
         this.§7&I§ = §8"%§.randomSeed.§,!q§(1,2) == 1 ? §#!Z§.§!c§ : §#!Z§.§%H§;
      }
      
      override protected function §5#F§() : void
      {
         this.§=T§ = new Point(unit.x,unit.y);
         this.§-$A§ = new §[&$§(unit.clip,"FearIdle","FearStart","FearEnd");
         this.§-$A§.start();
         unit.attributes.§8$e§.§5#l§(§`!q§);
         §-#M§.§[&F§(unit,16777215,16777215,100);
         unit.clip.alpha = 0;
         TweenLite.to(unit.clip,2,{"alpha":1});
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
         this.dummy.stable = false;
      }
      
      override protected function §0&"§() : void
      {
         this.dummy.disposed = true;
      }
      
      protected function onFrame(param1:Event) : void
      {
         if(unit == null || unit.disposed)
         {
            this.§"%g§();
            clear();
            return;
         }
         if(this.§#"z§++ < §@%4§)
         {
            if(!(this.§#"z§ % §4"L§))
            {
               if(§-q§.distance(unit.x,unit.y,this.§=T§.x,this.§=T§.y) < §<H§.§,%P§)
               {
                  this.§7&I§ = this.§7&I§ == §#!Z§.§!c§ ? §#!Z§.§%H§ : §#!Z§.§!c§;
                  §#!Z§.fire(this.§7&I§);
               }
               this.§=T§.x = unit.x;
               this.§=T§.y = unit.y;
            }
            if(this.§#"z§ + 1 >= §@%4§)
            {
               §#!Z§.fire(§#!Z§.§0"i§);
            }
         }
         else
         {
            this.§"%g§();
         }
      }
      
      private function §"%g§() : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         this.§-$A§.§=$5§();
         unit.attributes.§8$e§.§5#l§(-§`!q§);
         this.§#"z§ = 0;
         this.dummy.stable = true;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §`#D§());
      }
   }
}

