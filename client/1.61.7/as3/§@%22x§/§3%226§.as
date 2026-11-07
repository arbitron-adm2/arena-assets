package §@"x§
{
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §#%!§.§7V§;
   import §#%!§.§=-§;
   import §#%!§.§[%U§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,#_§.FrameTimer;
   import §0!§.§9"u§;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1!J§.§"t§;
   import §1#p§.§2=§;
   import §2#i§.§+%z§;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §65§.§6%E§;
   import §6_§.*;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §8#a§.*;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §;&2§.§!#W§;
   import §<!W§.§=!6§;
   import §<$q§.§6%b§;
   import §<%k§.§`!v§;
   import §=$#§.*;
   import §@!N§.§3!3§;
   import §@<§.*;
   import §[$P§.§+H§;
   import §]#[§.*;
   import §]$&§.§2&2§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import com.greensock.events.TweenEvent;
   import config.§=%A§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3"6§ extends §@& §
   {
      
      private var §8!!§:§?%>§;
      
      private var § #>§:§?%>§;
      
      private var §1!y§:§?%>§;
      
      private var §#&;§:§?%>§;
      
      private var §-%b§:Sprite;
      
      private var callback:Function;
      
      public function §3"6§(param1:DisplayObjectContainer, param2:Function, param3:Function)
      {
         super(param1);
         this.callback = param2;
         §7&5§.§>&<§(§'%s§("qualityTitle"),§0$N§.QUALITY_CONTROL_PANEL_TITLE);
         this.§-%b§ = §@%z§.§+$6§(this,"qualityTitle",param3);
         this.§8!!§ = this.createBtn("bestBtn");
         this.§8!!§.setQtip(§0$N§.QUALITY_BEST_QTIP);
         this.§ #>§ = this.createBtn("highBtn");
         this.§ #>§.setQtip(§0$N§.QUALITY_HIGH_QTIP);
         this.§1!y§ = this.createBtn("mediumBtn");
         this.§1!y§.setQtip(§0$N§.QUALITY_MEDIUM_QTIP);
         this.§#&;§ = this.createBtn("lowBtn");
         this.§#&;§.setQtip(§0$N§.QUALITY_LOW_QTIP);
         switch(§8"%§.§&S§.§;#b§())
         {
            case StageQuality.BEST:
               this.§8!!§.setDisabled(true);
               break;
            case StageQuality.HIGH:
               this.§ #>§.setDisabled(true);
               break;
            case StageQuality.MEDIUM:
               this.§1!y§.setDisabled(true);
               break;
            case StageQuality.LOW:
               this.§#&;§.setDisabled(true);
         }
      }
      
      private function createBtn(param1:String) : §?%>§
      {
         var _loc2_:§?%>§ = §!&5§.§7#[§(container[param1]);
         _loc2_.removeAllWhenDisabled = true;
         _loc2_.§[!u§(this.§'$9§);
         return _loc2_;
      }
      
      private function §'$9§(param1:MouseEvent) : void
      {
         this.§8!!§.setDisabled(false);
         this.§ #>§.setDisabled(false);
         this.§1!y§.setDisabled(false);
         this.§#&;§.setDisabled(false);
         var _loc2_:§?%>§ = param1.currentTarget as §?%>§;
         _loc2_.setDisabled(true);
         this.update();
         switch(_loc2_)
         {
            case this.§8!!§:
               this.callback(StageQuality.BEST);
               break;
            case this.§ #>§:
               this.callback(StageQuality.HIGH);
               break;
            case this.§1!y§:
               this.callback(StageQuality.MEDIUM);
               break;
            case this.§#&;§:
               this.callback(StageQuality.LOW);
         }
      }
      
      public function update() : void
      {
         this.§-%b§.buttonMode = this.§-%b§.mouseEnabled = !this.isDefault;
      }
      
      public function reset() : void
      {
         this.§#&;§.setDisabled(false);
         this.§1!y§.setDisabled(false);
         this.§ #>§.setDisabled(false);
         this.§8!!§.setDisabled(true);
         this.update();
      }
      
      public function getValue() : String
      {
         if(this.§8!!§.§8,§())
         {
            return StageQuality.BEST;
         }
         if(this.§ #>§.§8,§())
         {
            return StageQuality.HIGH;
         }
         if(this.§1!y§.§8,§())
         {
            return StageQuality.MEDIUM;
         }
         if(this.§#&;§.§8,§())
         {
            return StageQuality.LOW;
         }
         return "";
      }
      
      public function get isDefault() : Boolean
      {
         return this.§8!!§.§8,§();
      }
      
      override public function destroy() : void
      {
         this.§8!!§.destroy();
         this.§8!!§ = null;
         this.§ #>§.destroy();
         this.§ #>§ = null;
         this.§1!y§.destroy();
         this.§1!y§ = null;
         this.§#&;§.destroy();
         this.§#&;§ = null;
         super.destroy();
      }
   }
}

