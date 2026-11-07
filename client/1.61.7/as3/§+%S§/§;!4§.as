package §+%S§
{
   import §%"1§.§@%;§;
   import §2#V§.§-#U§;
   import §6",§.§[%w§;
   import §65§.§%%o§;
   import §7"Q§.*;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §?$7§.§!§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§8"'§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §;!4§ extends §%%o§
   {
      
      public static const NAME:String = "ADRENALINE_BUFF";
      
      public function §;!4§(param1:uint, param2:Boolean = false)
      {
         super(NAME,param1);
      }
      
      override protected function §5#F§() : void
      {
         unit.buffs.§6C§(§[&;§.NAME);
         unit.buffs.§6C§(§+m§.NAME);
         unit.graphics.§&$=§(unit.record.§5"L§().getRecord().defrost);
      }
      
      override protected function §0&"§() : void
      {
         unit.graphics.§<%C§(unit.record.§5"L§().getRecord().defrost);
         §@%;§.play(§`!v§.§0&C§);
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         super.onNextTurn(param1);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §;!4§(counter.value,true));
      }
   }
}

