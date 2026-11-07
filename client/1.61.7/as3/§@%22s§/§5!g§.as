package §@"s§
{
   import § K§.§="c§;
   import §!"r§.*;
   import §!"u§.§5&0§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.§ G§;
   import §"$+§.§`&$§;
   import §#%!§.§ §;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §#5§.§!&"§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §2!-§.DamageEvent;
   import §2#H§.§"j§;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §5#`§.*;
   import §6$0§.§=!N§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §8#<§.*;
   import §<!^§.§["l§;
   import §<"?§.§6!8§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=&6§.§6!X§;
   import §>!_§.§'!&§;
   import §?"[§.§#"m§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[#q§.§;$Q§;
   import §[$<§.§;%S§;
   import §]^§.§-$T§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.IncreaseLevelClanRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import vk.§,#n§;
   
   public class §5!g§ extends §&"T§ implements §2%F§, §^%c§
   {
      
      private static const §9!"§:uint = 40;
      
      private static const HP:int = 100;
      
      private static const §`!`§:uint = 16;
      
      private static const REGEN:int = 25;
      
      private var owner:§+%]§;
      
      private var bar:§ #3§;
      
      private var §-$8§:int = 9;
      
      public function §5!g§(param1:§+%]§, param2:int, param3:int)
      {
         super();
         this.owner = param1;
         canBeDamaged = true;
         §8%g§ = new §9"u§(this,HP,0,0);
         clip = new MovieClip();
         §]!&§.§-#2§(this,"SpiderEggIdle","SpiderEggAppear","SpiderEggFading");
         this.x = param2;
         this.y = param3;
         §-$[§ = §<H§.§@k§;
         §4!<§ = §<H§.§,%P§;
         this.bar = new § #3§(param1.squad.getNumber(),§0$N§.BOSS_QUEEN_SPIDERS_EGG,50);
         Application.scene.addEventListener(§0%v§.EOT,this.§8%^§);
         addEventListener(§0%v§.§&!D§,this.§""0§);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§!#6§;
         physParams.§3&I§ = true;
         physParams.§0%m§(0,§`!`§);
         physicModel = new §;$S§(physParams);
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(Boolean(param1.source) && Boolean(param1.source.owner) && param1.source.owner.squad.isAi())
         {
            param1.power = 0;
         }
         super.§""0§(param1);
         if(Boolean(param1.power > 0 && param1.source && param1.source.owner) && Boolean(!param1.source.owner.squad.isAi()) && §8%g§.hp.value <= 0)
         {
            _loc2_ = param1.source.owner.bonuses.getStatValue(Bonus.§;#-§);
            _loc3_ = REGEN;
            _loc4_ = _loc3_ + §-q§.§8$G§(_loc2_,_loc3_);
            param1.source.owner.attributes.hp.§#1§(_loc4_);
         }
      }
      
      private function §8%^§(param1:Event) : void
      {
         if(!disposed)
         {
            if(this.§-$8§ > 0)
            {
               --this.§-$8§;
            }
         }
      }
      
      public function hatchScorp() : void
      {
         if(!disposed)
         {
            if(this.§-$8§ == 0)
            {
               new §5&0§(this.owner,x,y,0,true);
               disposed = true;
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         removeEventListener(§0%v§.§&!D§,this.§""0§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§8%^§);
         this.owner = null;
         super.§[$u§(param1);
      }
      
      public function §9$r§() : int
      {
         return §9!"§;
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}

