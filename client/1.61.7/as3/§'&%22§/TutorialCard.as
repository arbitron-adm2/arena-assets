package §'&"§
{
   import § !8§.§9%+§;
   import § &5§.§%$O§;
   import §!$D§.*;
   import §!L§.§+"'§;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §'$Z§.*;
   import §+$=§.§6#A§;
   import §+%S§.§[&;§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §3"@§.§##L§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§2"y§;
   import §9%W§.§&!P§;
   import §?!E§.*;
   import §?#g§.*;
   import §?$L§.§ "N§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=#,§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class TutorialCard extends §"&=§
   {
      
      private var mission:§8%6§;
      
      private var playBtn:§?%>§;
      
      private var §9$q§:MovieClip;
      
      private var §+! §:TextFormat;
      
      public function TutorialCard()
      {
         super(§6#A§.§!&6§("TutorialCard"));
         this.§+! § = new TextFormat();
         this.§+! §.bold = true;
         §00§(null);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         §'%s§("profit").text = §0$N§.§<N§("AWARD_LABEL") + ":";
         this.playBtn = §!&5§.§7#[§(getChildByName("playBtn"));
         this.playBtn.setText(§0$N§.§<N§("TUTORIAL_START_BTN"),§"-§.§+$m§);
         this.playBtn.§[!u§(this.§""V§);
         this.§9$q§ = §'$a§("iconsContainer");
      }
      
      public function §5"h§(param1:§8%6§) : void
      {
         var _loc3_:§`&-§ = null;
         var _loc5_:§`&-§ = null;
         this.mission = param1;
         var _loc2_:TextField = §'%s§("cardName");
         _loc2_.text = param1.§7%z§();
         _loc3_ = new §`&-§(getChildByName("moneyContainer"));
         _loc3_.setQtip(§0$N§.FUZY_QTIP);
         var _loc4_:TextField = _loc3_.§'%s§("moneyAwardCount");
         _loc4_.text = param1.§2!T§().§#!G§().toString();
         _loc4_.setTextFormat(this.§+! §);
         _loc5_ = new §`&-§(§'$a§("xpAward"));
         _loc5_.setQtip(§0$N§.GO_BONUS_EXP_LABEL);
         var _loc6_:TextField = _loc5_.§'%s§("count");
         _loc6_.text = param1.§2!T§().§[!s§().toString();
         _loc6_.setTextFormat(this.§+! §);
         var _loc7_:String = "tutorial" + Math.abs(param1.getId()).toString();
         this.§?$,§(_loc7_);
      }
      
      private function §?$,§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = this.§9$q§.numChildren;
         while(_loc2_ < _loc3_)
         {
            this.§9$q§.getChildAt(_loc2_).visible = false;
            _loc2_++;
         }
         this.§9$q§.getChildByName(param1).visible = true;
      }
      
      private function §""V§(param1:Event) : void
      {
         §8"%§.§?!W§.§'!p§(this.mission);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.playBtn.removeHandler(this.§""V§);
      }
   }
}

