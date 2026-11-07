package §4"j§
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#"V§.§<"4§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §'!Z§.§]!&§;
   import §'"N§.*;
   import §+%S§.§ #R§;
   import §0!§.§9"u§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §2!-§.DamageEvent;
   import §2"v§.*;
   import §3#a§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §[&C§ extends §6#I§ implements §^%c§
   {
      
      private static const § !I§:String = "AnomalyIdle";
      
      private static const §@!S§:String = "AnomalyAppear";
      
      private static const §5$v§:String = "AnomalyDisappear";
      
      public static const §[&-§:Number = 0.16;
      
      public static const §!t§:uint = 20;
      
      public static const §+"R§:uint = 10;
      
      private var bar:§[N§;
      
      public var bonus:Number = 1;
      
      public function §[&C§(param1:§+%]§, param2:Number, param3:Number)
      {
         super(param1,param2,param3,false,0);
         canBeDamaged = true;
         §8%g§ = new §9"u§(this,§!t§,0,0);
         this.x = param2;
         this.y = param3;
         stable = true;
         §]!&§.§-#2§(this,§ !I§,§@!S§,§5$v§);
         this.bar = new §[N§(param1,§0$N§.§%! §("GRAVITY_MASTER_ANOMALY"),20);
         physicModel.addEventListener(§9#1§.§3%G§,this.§^"m§);
      }
      
      private function §^"m§(param1:Event) : void
      {
         stable = true;
      }
      
      public function §'"S§() : Number
      {
         return this.bonus;
      }
      
      public function §&#V§() : void
      {
         this.bonus += §[&-§;
         §8%g§.hp.change(§+"R§);
         §-$[§ = clip.width = clip.width + §+"R§;
         §§push(§§findproperty(§4!<§));
         §§push(clip);
         var _temp_2:* = clip.height + §+"R§;
         §§pop().§4!<§ = §§pop().height = clip.height + §+"R§;
         clip.alpha += 1;
         this.bar.§&!J§(§+"R§ * 0.5);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physicModel = new §;$S§(physParams);
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         if(Boolean(!owner.disposed) && Boolean(param1.source.owner) && owner.squad.getTeamId() != param1.source.owner.squad.getTeamId())
         {
            §'"$§.inflictDamage(this,owner,param1.power,0,0,false,true);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         physicModel.removeEventListener(§9#1§.§3%G§,this.§^"m§);
         super.§[$u§(param1);
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}

