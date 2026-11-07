package §?!p§
{
   import §%"1§.§@%;§;
   import §65§.§%%o§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §@<§.§5"O§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextFieldType;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   
   public class §;W§ extends §%%o§
   {
      
      public static const NAME:String = "CLAN_BANNER_FORT";
      
      private var tier:§!&-§;
      
      private var §8<§:§]$q§;
      
      private var §-!5§:Boolean;
      
      public function §;W§(param1:§!&-§)
      {
         super(NAME,-1,1);
         this.tier = param1;
      }
      
      override protected function §5#F§() : void
      {
         if(this.tier.§?"L§.value != 0)
         {
            unit.attributes.armor.§5#l§(this.tier.§?"L§.value);
         }
         if(this.tier.§"8§.value != 0 && !§5"O§.§4#+§(unit))
         {
            this.§-!5§ = true;
            unit.attributes.attack.§5#l§(this.tier.§"8§.value);
         }
         if(this.tier.§]"g§.value != 0)
         {
            this.§8<§ = new §]$q§(NAME);
            this.§8<§.§3%<§(new §@"I§(Bonus.REGENERATION,this.tier.§]"g§.value));
            unit.bonuses.§]!X§(this.§8<§);
         }
         unit.graphics.§&$=§(unit.record.§5"L§().getRecord().bannerAura,true);
         §@%;§.play(§`!v§.§#%w§);
      }
      
      override protected function §0&"§() : void
      {
         if(this.tier.§?"L§.value != 0)
         {
            unit.attributes.armor.§5#l§(-this.tier.§?"L§.value);
         }
         if(this.tier.§"8§.value != 0 && this.§-!5§)
         {
            unit.attributes.attack.§5#l§(-this.tier.§"8§.value);
         }
         if(this.tier.§]"g§.value != 0)
         {
            unit.bonuses.§9=§(this.§8<§);
            this.§8<§ = null;
         }
         unit.graphics.§<%C§(unit.record.§5"L§().getRecord().bannerAura);
         §@%;§.play(§`!v§.§`%=§);
      }
   }
}

