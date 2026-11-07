package §&!?§
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§"$7§;
   import §+%S§.§+m§;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §9%W§.§!"G§;
   import §9%k§.*;
   import §<%k§.§`!v§;
   import §?$L§.§ "N§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §`%&§.§5$1§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §6!=§ extends §5"^§
   {
      
      private static const §6$w§:int = 10;
      
      private static const §5?§:Array = [§+N§.NAME,§+m§.NAME];
      
      private var poison:Boolean;
      
      public function §6!=§(param1:Boolean)
      {
         super();
         this.poison = param1;
      }
      
      override public function check(param1:§+%]§) : Boolean
      {
         return Boolean(super.check(param1)) && !param1.buffs.hasBuff(§"$7§.NAME) && (param1.buffs.§%%b§(§5?§) || this.poison && param1.buffs.hasBuff(§ !!§.NAME)) && param1.attributes.hp.§4$M§() > §-q§.§8$G§(§6$w§,param1.hp);
      }
   }
}

