package §=1§
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§#&%§;
   import §%L§.§%§;
   import §&"c§.§5$n§;
   import §&&6§.§7"1§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §6",§.§[%w§;
   import §6_§.*;
   import §7!-§.*;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §9%W§.§&!P§;
   import §<"?§.§@&#§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?$7§.§+#N§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §@!N§.§""L§;
   import §@!N§.§-!Y§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$J§.§#"s§;
   import §]$v§.§5"R§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import config.achievements.BossAchieves;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §"%T§ extends §@&#§
   {
      
      private static const §[$l§:§&$2§ = new §&$2§(18);
      
      private static const §?#G§:§&$2§ = new §&$2§(4);
      
      private var §+"&§:§&$2§ = new §&$2§(0);
      
      public function §"%T§()
      {
         super(90);
         resource = new §@#%§("phantom.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.§=!q§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §7"1§()];
      }
      
      override protected function §2!9§() : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:§,'§ = null;
         super.§2!9§();
         var _loc1_:uint = §'%G§();
         var _loc2_:uint = §`%"§();
         _loc3_ = §#%K§();
         _loc4_ = 5 + 1.1 * _loc3_ + 0.9 * _loc1_;
         _loc5_ = new §,'§(_loc4_ ^ _loc3_);
         var _loc6_:Array = §""L§.§6$6§([mapRecord.§?$&§[0],mapRecord.§?$&§[1],mapRecord.§?$&§[2]],_loc5_);
         §5"N§ = [§""L§.§6$6§([mapRecord.§8$2§[2],mapRecord.§8$2§[3],mapRecord.§8$2§[4],mapRecord.§8$2§[3],mapRecord.§8$2§[4],mapRecord.§8$2§[5],mapRecord.§8$2§[6],mapRecord.§8$2§[7],mapRecord.§8$2§[8]],_loc5_),[_loc6_[0]],[_loc6_[1]]];
      }
      
      override protected function §!"V§() : void
      {
         var _loc1_:§+%]§ = null;
         script.addEventListener(§0%v§.§&!D§,this.§'#Y§);
         script.addEventListener(§0%v§.DISPOSED,this.§6%r§);
         for each(_loc1_ in §7"1§(script).getBosses())
         {
            _loc1_.addEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         }
      }
      
      override protected function § "a§(param1:uint) : void
      {
         super.§ "a§(param1);
         if(!§8"%§.§?!W§.§4"m§.§;#l§())
         {
            ++this.§+"&§.value;
         }
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         if(!§8"%§.§?!W§.§4"m§.§;#l§() && this.§+"&§.value == §?#G§.value)
         {
            §""F§(BossAchieves.PHANTOMS_POLTERGEIST);
         }
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         if(this.§+"&§.value <= §?#G§.value)
         {
            §>+§(BossAchieves.PHANTOMS_POLTERGEIST);
         }
      }
      
      private function §'#Y§(param1:DamageEvent) : void
      {
         if(!param1.source.owner.squad.isAi() && param1.source.owner.squad.§&!G§().getId() == §+%]§(param1.victim).record.getId())
         {
            §8k§(BossAchieves.PHANTOMS_FANTOMAS);
         }
      }
      
      private function §6%r§(param1:Event) : void
      {
         §[#a§(BossAchieves.PHANTOMS_GHOSTBUSTER,§[$l§.value);
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.PHANTOMS_FANTOMAS).§,%,§();
      }
      
      override public function clear() : void
      {
         var _loc1_:§+%]§ = null;
         for each(_loc1_ in §7"1§(script).getBosses())
         {
            _loc1_.removeEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         }
         script.removeEventListener(§0%v§.§&!D§,this.§'#Y§);
         script.removeEventListener(§0%v§.DISPOSED,this.§6%r§);
         super.clear();
      }
   }
}

