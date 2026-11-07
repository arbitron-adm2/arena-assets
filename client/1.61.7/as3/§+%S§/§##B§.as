package §+%S§
{
   import § !P§.*;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §65§.§%%o§;
   import §9%W§.§!"G§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?"j§.§]!<§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §`%&§.§5$1§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   
   public class §##B§ extends §%%o§
   {
      
      public static const NAME:String = "FREEZING_AIR_BLOCK_PROTECTION_BUFF";
      
      public function §##B§()
      {
         super(NAME,§-"^§);
      }
      
      override protected function §5#F§() : void
      {
         if(!unit.buffs.hasBuff(§+N§.NAME))
         {
            unit.buffs.§6C§(§+m§.NAME);
         }
         var _loc1_:§]!<§ = unit.record.§5"L§().getRecord();
         unit.graphics.§&$=§(_loc1_.antifrost);
      }
      
      override protected function §0&"§() : void
      {
         var _loc1_:§]!<§ = unit.record.§5"L§().getRecord();
         unit.graphics.§<%C§(_loc1_.antifrost);
         §@%;§.play(§`!v§.§0&C§);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §##B§());
      }
   }
}

