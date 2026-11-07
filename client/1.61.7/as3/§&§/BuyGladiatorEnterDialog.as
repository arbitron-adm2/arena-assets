package §&§
{
   import § #g§.*;
   import § $q§.§3U§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#W§.§4#T§;
   import §&#h§.§!#x§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0&F§.§0%v§;
   import §4!K§.*;
   import §4!x§.§@& §;
   import §4u§.ReagentHint;
   import §7!B§.§6#I§;
   import §<%E§.*;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §]^§.§-$T§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BuyGladiatorEnterDialog extends §@& §
   {
      
      private var callback:Function;
      
      private var freeBtn:§?%>§;
      
      public function BuyGladiatorEnterDialog(param1:Function, param2:Boolean = false)
      {
         super(§6#A§.§!&6§(§+"'§.§>#h§));
         this.callback = param1;
         §&$9§.§>&F§(§]"a§,§"-§.§+$m§,§0$N§.PVP_GLADIATOR_CARD);
         §&$9§.§>&F§(§'%s§("description"),§"-§.§+$m§,§0$N§.BUY_GLADIATOR_ENTER_TEXT + " " + §0$N§.MORE_WINS_MORE_AWARDS_TEXT + "\n\n" + §0$N§.GLADIATOR_DESCRIPTION);
         §>!-§ = §!&5§.§7#[§(getChildByName("ok"));
         §>!-§.setText(§0$N§.BUY_GLADIATOR_ENTER_BUTTON_TEXT,§"-§.§+$m§);
         §>!-§.setText(§5&4§.§8$p§.realPrice.toString(),§"-§.§6"j§,"price");
         §>!-§.§[!u§(this.§`&1§);
         §>!-§.setVisible(!param2);
         this.freeBtn = §!&5§.§7#[§(getChildByName("freeBtn"));
         this.freeBtn.setText(§0$N§.FIRST_GLADIATOR_ENTER_BUTTON_TEXT,§"-§.§+$m§);
         this.freeBtn.§[!u§(this.§[#i§);
         this.freeBtn.setVisible(param2);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§<![§;
         §<"b§ = true;
      }
      
      private function §[#i§(param1:Event) : void
      {
         this.callback(true);
         hide();
      }
      
      private function §`&1§(param1:Event) : void
      {
         this.§!!K§(§+$A§.REAL);
      }
      
      protected function §!!K§(param1:§+$A§) : void
      {
         if(§4! §.§7"-§(Application.userProfile,param1,§5&4§.§8$p§))
         {
            this.buy(param1);
         }
         else
         {
            hide();
         }
      }
      
      protected function buy(param1:§+$A§) : void
      {
         §8"%§.§&"n§.§6$_§(param1,§5&4§.§8$p§,this.§,e§);
      }
      
      private function §,e§(param1:Boolean) : void
      {
         if(param1 && this.callback != null)
         {
            this.callback(param1);
         }
         hide();
      }
      
      override public function destroy() : void
      {
         this.freeBtn.removeHandler(this.§[#i§);
         this.freeBtn.destroy();
         §>!-§.removeHandler(this.§`&1§);
         §>!-§.destroy();
         super.destroy();
      }
   }
}

