package §]^§
{
   import § !P§.§9%Z§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §&!?§.§"_§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §-%B§.*;
   import §0%j§.§0$+§;
   import §0&F§.§!!c§;
   import §4$b§.*;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§&!e§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §=#g§.*;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$7§.§+l§;
   import §@!i§.§!m§;
   import §@!i§.§8%6§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.§28§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §-$T§ extends §8%6§
   {
      
      private var §&!p§:§5" §;
      
      private var §"&7§:§1%z§;
      
      private var §[!!§:§1%z§;
      
      private var §!"C§:§1%z§;
      
      private var §"$p§:int;
      
      private var §3!I§:Boolean;
      
      public function §-$T§(param1:int, param2:Class, param3:String, param4:§1%z§, param5:§1%z§ = null, param6:int = -1, param7:§1%z§ = null, param8:Boolean = false)
      {
         this.§&!p§ = §3$f§.§<$K§(param1);
         super(this.§&!p§.getId(),this.§&!p§.§7%z§(),param2,param3,param4);
         this.§7#K§(param5,param4,param7);
         this.§"$p§ = param6;
         this.§3!I§ = param8;
      }
      
      public function §7#K§(param1:§1%z§, param2:§1%z§, param3:§1%z§ = null) : void
      {
         this.award = param2;
         this.§"&7§ = param1;
         if(param3)
         {
            this.§!"C§ = param3;
         }
         this.§[!!§ = new §1%z§([new §#$!§(§+$A§.INGAME,param2.§#!G§() * 0.5),new §'"%§(param2.§[!s§() * 0.5)]);
      }
      
      public function §<$y§() : §5" §
      {
         return this.§&!p§;
      }
      
      public function §3"c§() : §1%z§
      {
         return this.§"&7§;
      }
      
      public function getExtraAward() : §1%z§
      {
         return this.§!"C§;
      }
      
      public function §+%`§() : §1%z§
      {
         return this.§[!!§;
      }
      
      public function §""H§() : int
      {
         return this.§"$p§ == -1 ? int(§+l§.§?!$§) : this.§"$p§;
      }
      
      public function get isNew() : Boolean
      {
         return this.§3!I§;
      }
   }
}

