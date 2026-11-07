package §<!W§
{
   import § &5§.§9X§;
   import §"#x§.§'"$§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§2!x§;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §2!-§.AttackDodgedEvent;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §4#2§.§,%g§;
   import §5!9§.§6$,§;
   import §65§.§`"C§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §?$L§.§ "N§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §`%&§.§,%§;
   import §`%&§.§5$1§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §3#M§ extends §`"C§
   {
      
      public static const NAME:String = "BOOST_ATTACK_ON_DODGE_BUFF";
      
      public static const §4!X§:§&$2§ = new §&$2§(12);
      
      public static const § "J§:§&$2§ = new §&$2§(2);
      
      public function §3#M§()
      {
         super(NAME,§-"^§,0);
      }
      
      private function §<"w§(param1:AttackDodgedEvent) : void
      {
         var _loc2_:§`"C§ = null;
         if(param1.unit == unit && !§5"O§.§4#+§(unit))
         {
            _loc2_ = unit.buffs.getBuff(§2!x§.§ $s§);
            if(!_loc2_)
            {
               unit.buffs.place(new §2!x§(§2!x§.§ $s§,§ "J§.value));
            }
            else if(_loc2_.getValue() < §4!X§.value)
            {
               _loc2_.addValue(§ "J§.value);
            }
         }
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.ATTACK_DODGED,this.§<"w§);
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.ATTACK_DODGED,this.§<"w§);
      }
   }
}

