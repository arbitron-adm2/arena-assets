package §?!p§
{
   import §65§.§%%o§;
   import §<V§.§!&-§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   
   public class §1&8§ extends §%%o§
   {
      
      public static const NAME:String = "CLAN_BANNER_GLOBAL";
      
      private var tier:§!&-§;
      
      private var §8<§:§]$q§;
      
      public function §1&8§(param1:§!&-§)
      {
         super(NAME,-1,1);
         this.tier = param1;
      }
      
      override protected function §5#F§() : void
      {
         if(this.tier.speedBonus.value != 0)
         {
            unit.attributes.§8$e§.§5#l§(this.tier.speedBonus.value);
         }
         if(this.tier.§]"g§.value != 0)
         {
            this.§8<§ = new §]$q§(NAME);
            this.§8<§.§3%<§(new §@"I§(Bonus.LEECH,this.tier.§="E§.value));
            unit.bonuses.§]!X§(this.§8<§);
         }
      }
      
      override protected function §0&"§() : void
      {
         if(this.tier.speedBonus.value != 0)
         {
            unit.attributes.§8$e§.§5#l§(-this.tier.speedBonus.value);
         }
         if(this.tier.§]"g§.value != 0)
         {
            this.§8<§ = new §]$q§(NAME);
            this.§8<§.§3%<§(new §@"I§(Bonus.LEECH,this.tier.§="E§.value));
            unit.bonuses.§]!X§(this.§8<§);
         }
      }
   }
}

