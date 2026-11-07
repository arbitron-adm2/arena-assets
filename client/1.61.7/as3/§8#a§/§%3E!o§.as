package §8#a§
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §%"Z§.§9"z§;
   import §%$!§.§@!o§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §0!§.§[k§;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §2"L§.§!#H§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §4!!§.§#Z§;
   import §4!!§.§[%@§;
   import §4#`§.§+!l§;
   import §4$b§.*;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §9%W§.§!"G§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §=#g§.*;
   import §?"j§.§]!<§;
   import §@!i§.§;#L§;
   import §@!i§.§<!9§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §[%'§.§<"G§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §>!o§ extends §,#W§
   {
      
      private var §9$8§:Boolean;
      
      private var §4$?§:int;
      
      private var §1z§:Function;
      
      private var §]l§:Function;
      
      public function §>!o§(param1:Boolean = false, param2:int = -1)
      {
         super(§0$N§.TITLE_BUY,§0$N§.ERROR_NOT_ENOUGH_MONEY + "<br/>" + §0$N§.GO_AT_BANK,§,#W§.§7"d§,null,§`!v§.§2$e§);
         this.§9$8§ = param1;
         this.§4$?§ = param2;
         §>!-§.setText(§0$N§.BUTTON_GO_AT_BANK);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §-!^§ = §0$N§.BUTTON_CANCEL;
         §=%1§ = §5!r§.§<![§;
         §%%R§ = §`!v§.§2$e§;
         §<"b§ = true;
      }
      
      override protected function okAction() : void
      {
         this.§]l§ = null;
         this.hide();
         Social.§-%=§.openBank("",this.§9$8§,this.§4$?§);
         if(this.§1z§ != null)
         {
            this.§1z§();
            this.§1z§ = null;
         }
      }
      
      override public function hide() : void
      {
         this.§'&0§();
      }
      
      public function setOkFunction(param1:Function) : void
      {
         this.§1z§ = param1;
      }
      
      private function §'&0§(param1:Event = null) : void
      {
         if(this.§]l§ != null)
         {
            this.§]l§();
            this.§]l§ = null;
         }
         super.hide();
      }
      
      public function setCancelFunction(param1:Function) : void
      {
         this.§]l§ = param1;
         §!S§.§[!u§(this.§]l§);
      }
   }
}

