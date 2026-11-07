package §+%S§
{
   import § "L§.§1%b§;
   import § &5§.§=#P§;
   import §"$+§.§`&$§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%[§.§1%"§;
   import §4!!§.§#Z§;
   import §4!!§.§[%@§;
   import §5!,§.§?!P§;
   import §6"'§.*;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   
   public class §[&;§ extends §%%o§
   {
      
      internal static const §&! §:int = 12;
      
      internal static const §0o§:int = 4;
      
      internal static const §1#?§:int = 5;
      
      internal static const §=%4§:int = 8;
      
      internal static const §1&D§:int = 3;
      
      internal static const §^#l§:int = 4;
      
      public static const NAME:String = "SLOW_SPEED";
      
      public static const §%!y§:int = 2;
      
      private static const §4$[§:Array = [§"$7§.NAME,§;!4§.NAME];
      
      private var effectClip:MovieClip;
      
      private var §8v§:Boolean;
      
      private var §,"7§:Boolean;
      
      public function §[&;§(param1:int = 2, param2:Boolean = false)
      {
         this.§8v§ = param2;
         super(NAME,param1,0);
      }
      
      override protected function §5#F§() : void
      {
         this.effectClip = §6#A§.§!&6§(§1"-§.SLOW);
         unit.§#"%§(this.effectClip,0,0,false);
         this.§,"7§ = unit.bonuses.§^#5§(Bonus.SLOW_PROTECTION) || unit.buffs.§%%b§(§4$[§);
         unit.attributes.§8$e§.§5#l§(-(this.§,"7§ ? §=%4§ : §&! §));
         unit.attributes.jump.§]x§(-(this.§,"7§ ? §1&D§ : §0o§));
         unit.attributes.jump.§9"y§(-(this.§,"7§ ? §^#l§ : §1#?§));
         if(this.§,"7§ && !this.§8v§)
         {
            unit.buffs.§6C§(NAME);
         }
      }
      
      override protected function §0&"§() : void
      {
         if(!§&%M§)
         {
            unit.§'$§(this.effectClip);
            this.effectClip = null;
            unit.attributes.§8$e§.§5#l§(this.§,"7§ ? §=%4§ : §&! §);
            unit.attributes.jump.§]x§(this.§,"7§ ? §1&D§ : §0o§);
            unit.attributes.jump.§9"y§(this.§,"7§ ? §^#l§ : §1#?§);
         }
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         if(Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.activeUnit == unit)
         {
            super.onNextTurn(param1);
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §[&;§(§8#z§()));
      }
   }
}

