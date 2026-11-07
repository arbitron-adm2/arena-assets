package §1&-§
{
   import §"#x§.§'"$§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&x§.§8$5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§[0§;
   import §-8§.§3!x§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §4f§.§-&§;
   import §6",§.§[%w§;
   import §65§.§%%o§;
   import §65§.§`"C§;
   import §7$t§.§&!e§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §8$V§.*;
   import §<%k§.§`!v§;
   import §=&6§.*;
   import §?$K§.§=z§;
   import §?$K§.§>K§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetPromocodeBonus;
   import ru.pragmatix.wormix.messages.server.GetPromocodeBonusResult;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §[!n§ extends §%%o§
   {
      
      public static const NAME:String = "REGENERATION_COUNTER_BUFF";
      
      private var §;!P§:int = 0;
      
      public function §[!n§(param1:String = "REGENERATION_COUNTER_BUFF", param2:int = 0)
      {
         super(param1,-1);
         this.§;!P§ = param2;
      }
      
      override protected function §7$d§() : void
      {
         var _loc1_:§`"C§ = unit.buffs.getBuff(§=z§.NAME);
         if(Boolean(_loc1_) && _loc1_.§8!t§() > 0)
         {
            ++this.§;!P§;
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §>K§(NAME,this.§;!P§));
      }
      
      public function get §%%k§() : int
      {
         return this.§;!P§;
      }
      
      public function set §%%k§(param1:int) : void
      {
         this.§;!P§ = param1;
      }
   }
}

