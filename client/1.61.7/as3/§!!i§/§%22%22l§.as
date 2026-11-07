package §!!i§
{
   import § #m§.§;#^§;
   import § %?§.§;!T§;
   import § &5§.Water;
   import §!!!§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"$+§.§,!<§;
   import §"$+§.§@C§;
   import §##j§.§!%&§;
   import §##j§.§7,§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.*;
   import §&!@§.§5"`§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §'!Z§.§2!H§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§2!I§;
   import §+%S§.§=$2§;
   import §+%S§.§=t§;
   import §+5§.§8$W§;
   import §-%B§.*;
   import §-G§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§+!%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1&-§.§'$y§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §2B§.§8"n§;
   import §3#T§.Meteor;
   import §3#a§.§-#M§;
   import §4'§.§!!0§;
   import §4'§.§`"q§;
   import §6%2§.§'"Y§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§^%%§;
   import §8#o§.§1@§;
   import §9%k§.*;
   import §<!^§.§9"§;
   import §<$2§.§<%>§;
   import §<$q§.§6%b§;
   import §<%E§.§,$2§;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §="z§.§ "H§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §=#g§.§&%5§;
   import §=$#§.*;
   import §=&!§.§<$!§;
   import §>!_§.§'#m§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.*;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §?>§.§0!7§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@!i§.§=$,§;
   import §@$§.§6$[§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §]^§.§-$T§;
   import §^!]§.MineActivateEvent;
   import §^"I§.*;
   import §^#[§.§&$2§;
   import §`$T§.*;
   import com.adobe.serialization.json.JSONDecoder;
   import com.greensock.TweenLite;
   import com.greensock.data.TweenLiteVars;
   import com.greensock.loading.core.LoaderItem;
   import com.inreflected.ui.touchScroll.VelocityCalculator;
   import config.§=%A§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.*;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.ToggleTeamMember;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§<%6§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §""l§ extends §!"$§
   {
      
      public static const §]r§:String = "Search complete event";
      
      private const §=!Z§:uint = 1;
      
      private const §`"9§:uint = 61;
      
      private const §5!x§:uint = 101;
      
      private const § &4§:uint = 160;
      
      private var §^!1§:TextField;
      
      private var §`%6§:§`&-§;
      
      private var §?&E§:Boolean = false;
      
      public function §""l§(param1:MovieClip, param2:MovieClip)
      {
         super(param1);
         this.§`%6§ = new §`&-§(param2);
         this.§^!1§ = param2.getChildByName("countTxt") as TextField;
         this.§^!1§.autoSize = TextFieldAutoSize.LEFT;
         this.§^!1§.text = String("x" + §8"%§.§7#,§.§1!K§());
         this.§`%6§.setQtip(§0$N§.HINT_KEY_COUNT.split("{count}").join(this.§^!1§.text),§;#^§.RIGHT,§+"'§.§]!H§);
      }
      
      override public function destroy() : void
      {
         this.§`%6§ = null;
         this.§^!1§ = null;
         super.destroy();
      }
      
      override public function setVisible(param1:Boolean) : void
      {
         this.§^!1§.visible = param1;
         this.§`%6§.setVisible(param1);
         super.setVisible(param1);
      }
      
      public function §6%V§() : void
      {
         §!%P§(MouseEvent.MOUSE_OVER,this.§4#&§);
         §!%P§(MouseEvent.MOUSE_OUT,this.§2!s§);
      }
      
      public function §#I§() : void
      {
         §0A§(MouseEvent.MOUSE_OVER,this.§4#&§);
         §0A§(MouseEvent.MOUSE_OUT,this.§2!s§);
      }
      
      private function §4#&§(param1:MouseEvent) : void
      {
         (getContainer() as MovieClip).gotoAndPlay(this.§`"9§);
      }
      
      public function §2!s§(param1:MouseEvent) : void
      {
         (getContainer() as MovieClip).gotoAndPlay(this.§=!Z§);
      }
      
      public function §0$!§() : void
      {
         this.§6%V§();
         (getContainer() as MovieClip).gotoAndStop(this.§ &4§);
         this.§3$F§();
      }
      
      public function §%"F§(param1:§<%6§, param2:uint = 0) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:uint = 0;
         var _loc7_:MovieClip = null;
         this.§6%V§();
         _loc3_ = getContainer() as MovieClip;
         _loc3_.gotoAndPlay(this.§5!x§);
         _loc3_.addEventListener(Event.ENTER_FRAME,this.§2#=§);
         if(MovieClip(_loc3_["reagentLabel"]).numChildren > 0)
         {
            MovieClip(_loc3_["reagentLabel"]).removeChildAt(0);
         }
         switch(param1)
         {
            case §<%6§.EMPTY:
               this.§1!?§(_loc3_,false,false,false,true);
               _loc4_ = _loc3_.getChildByName("emptyLabel") as MovieClip;
               TextField(_loc4_.getChildByName("txt")).text = §0$N§.EMPTY_TEXT;
               break;
            case §<%6§.MONEY:
            case §<%6§.REAL_MONEY:
               this.§1!?§(_loc3_,true,true,true,false);
               _loc5_ = _loc3_.getChildByName("awardLabel") as MovieClip;
               TextField(_loc5_.getChildByName("countTxt")).text = "+" + param2;
               _loc6_ = 2;
               if(param1 == §<%6§.REAL_MONEY)
               {
                  _loc6_ = 1;
               }
               MovieClip(_loc5_.getChildByName("award")).gotoAndStop(_loc6_);
               break;
            case §<%6§.REAGENT:
               this.§1!?§(_loc3_,false,false,true,false);
               _loc7_ = §6#A§.§!&6§(§1@§.§`$M§(param2).getMenuIcon());
               _loc7_.scaleX = _loc7_.scaleY = 2;
               _loc3_["reagentLabel"].visible = true;
               _loc3_["reagentLabel"].addChild(_loc7_);
         }
         this.§0#=§();
      }
      
      private function §2#=§(param1:Event) : void
      {
         var _loc2_:MovieClip = getContainer() as MovieClip;
         if(_loc2_.currentFrame == this.§ &4§)
         {
            _loc2_.removeEventListener(Event.ENTER_FRAME,this.§2#=§);
            this.§3$F§();
         }
      }
      
      private function §3$F§() : void
      {
         if(this.§?&E§)
         {
            TweenLite.to(container,5,{
               "useFrames":true,
               "alpha":0,
               "onComplete":function():void
               {
                  container.alpha = 1;
                  setVisible(false);
                  dispatchEvent(new Event(§]r§));
               }
            });
         }
      }
      
      private function §1!?§(param1:MovieClip, param2:Boolean, param3:Boolean, param4:Boolean, param5:Boolean) : void
      {
         MovieClip(param1.getChildByName("awardLabel")).visible = param2;
         MovieClip(param1.getChildByName("treasures")).visible = param3;
         MovieClip(param1.getChildByName("lightTreasures")).visible = param4;
         MovieClip(param1.getChildByName("emptyLabel")).visible = param5;
      }
      
      public function §,#%§(param1:Boolean) : void
      {
         this.§?&E§ = param1;
      }
      
      public function §0#=§() : void
      {
         this.§^!1§.text = String("x" + §8"%§.§7#,§.§1!K§());
         this.§`%6§.setQtip(§0$N§.HINT_KEY_COUNT.split("{count}").join(this.§^!1§.text),§;#^§.RIGHT,§+"'§.§]!H§);
      }
   }
}

