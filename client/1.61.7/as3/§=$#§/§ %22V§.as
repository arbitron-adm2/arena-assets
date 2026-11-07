package §=$#§
{
   import § #m§.§;#^§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§^$`§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§@a§;
   import §&!@§.§!6§;
   import §&!@§.§5"`§;
   import §&!@§.Assassin;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Miner;
   import §&!@§.Samurai;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0%z§.§,$h§;
   import §0%z§.§1&6§;
   import §0%z§.BossAchieveHint;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#i§.§!$A§;
   import §2B§.§#&E§;
   import §4'§.§`"q§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$1§.§;$n§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §;$8§.§6"E§;
   import §<"L§.*;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §="z§.§9%1§;
   import §=&!§.§]$d§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.*;
   import §`"p§.*;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import com.inreflected.forks.spark.effects.animation.Keyframe;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import com.inreflected.forks.spark.effects.easing.IEaser;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.gui.controls.§`,§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.DeleteClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.§!>§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   
   public class § "V§
   {
      
      private static const §9!h§:String = "headerButtonGroup";
      
      private static const §6#8§:int = 7;
      
      private static const §9&4§:String = "</FONT></FONT></P></TEXTFORMAT>";
      
      private var §!"O§:§8"@§;
      
      private var §##M§:String;
      
      private var §&$-§:§`,§;
      
      private var §%!a§:String = "";
      
      private var §-k§:uint = 0;
      
      private var enabled:Boolean = true;
      
      private var visible:Boolean;
      
      private var available:Boolean;
      
      private var §#%>§:Boolean;
      
      private var §5[§:TextField;
      
      private var type:String;
      
      private var §3#h§:String;
      
      private var §7!P§:uint = 50;
      
      private var container:MovieClip;
      
      public function § "V§(param1:MovieClip)
      {
         super();
         this.container = §6#A§.§!&6§(§+"'§.§=#p§);
         param1.addChild(this.container);
         this.§!"O§ = §!&5§.§;#z§(this.container.getChildByName("btn"),§9!h§);
         this.§!"O§.addEventListener(§8"@§.EVENT_TOGGLE,this.§5!=§);
         this.§5[§ = this.container.getChildByName("messages") as TextField;
         this.§5[§.setTextFormat(new TextFormat());
         this.§5[§.filters = [new DropShadowFilter(1,45,0,1,2,2,2)];
         this.§5[§.addEventListener(MouseEvent.CLICK,§<%1§);
         this.§&$-§ = new §`,§(this.§5[§,this.container.getChildByName("scrollbar") as MovieClip);
         this.§&$-§.pageSize = §6#8§;
         this.§&$-§.§,!x§("");
      }
      
      private static function §<%1§(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         _loc2_ = new Point(param1.stageX,param1.stageY);
         var _loc3_:Point = Application.scene.globalToLocal(_loc2_);
         Application.scene.dispatchEvent(new MouseEvent(MouseEvent.CLICK,true,false,_loc3_.x,_loc3_.y));
      }
      
      public function §#$3§(param1:int) : void
      {
         this.§5[§.y = param1;
         this.container.getChildByName("scrollbar").y = param1 + 2;
      }
      
      private function §5!=§(param1:Event) : void
      {
         if(!this.enabled)
         {
            return;
         }
         if(this.§!"O§.isPressed())
         {
            this.setVisible(true);
            this.§0"j§();
            this.§-k§ = 0;
         }
         else
         {
            this.setVisible(false);
         }
         if(Boolean(Application.scene) && Boolean(Application.scene.§7#o§.chat))
         {
            Application.scene.§7#o§.chat.update();
         }
      }
      
      public function §#"j§(param1:String) : void
      {
         this.§##M§ = param1;
         this.§0"j§();
      }
      
      public function §0"j§() : void
      {
         this.§!"O§.setText(this.§##M§);
      }
      
      public function §+%$§(param1:String) : void
      {
         if(this.§%!a§ == "")
         {
            this.§%!a§ = param1;
         }
         else
         {
            this.§%!a§ += "\n" + param1;
         }
      }
      
      internal function § $u§() : String
      {
         var _loc1_:String = this.§%!a§;
         this.§%!a§ = "";
         return _loc1_;
      }
      
      public function §@%B§() : void
      {
         var _loc1_:§ "V§ = this;
         var _loc2_:Number = _loc1_.§-k§ + 1;
         _loc1_.§-k§ = _loc2_;
         this.§!"O§.setText(this.§##M§ + " (" + this.§-k§ + ")");
      }
      
      public function §5!U§() : void
      {
         this.§&$-§.getContainer().visible = true;
         this.§#%>§ = true;
         this.visible = true;
      }
      
      public function §8%q§(param1:String) : void
      {
         var _loc2_:String = null;
         this.§&$-§.§8%q§(param1);
         _loc2_ = this.§&$-§.§6"2§();
         var _loc3_:Array = _loc2_.split(§9&4§);
         if(_loc3_.length > this.§7!P§)
         {
            _loc3_.shift();
            this.§&$-§.§,!x§(_loc3_.join(§9&4§));
         }
         this.§&$-§.scrollV = this.§&$-§.maxScrollV;
      }
      
      public function §@%k§(param1:int) : void
      {
         this.§7!P§ = param1;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = this.§&$-§.getContainer();
         TextField(_loc2_).selectable = param1;
         _loc2_.visible = param1;
         this.§&$-§.§,$M§(param1);
         this.§#%>§ = false;
         this.visible = param1;
      }
      
      public function isVisible() : Boolean
      {
         return this.visible;
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         this.enabled = param1;
         this.§!"O§.setDisabled(!param1);
      }
      
      public function setActive(param1:Boolean) : void
      {
         this.§!"O§.setPressed(param1);
      }
      
      public function isActive() : Boolean
      {
         return this.§!"O§.isPressed();
      }
      
      public function getHeaderBtn() : §8"@§
      {
         return this.§!"O§;
      }
      
      public function §]!#§(param1:String) : void
      {
         this.§3#h§ = param1;
      }
      
      public function §?&2§() : String
      {
         return this.§3#h§;
      }
      
      public function getType() : String
      {
         return this.type;
      }
      
      public function §!]§(param1:String) : void
      {
         this.type = param1;
      }
      
      public function § $E§(param1:Boolean) : void
      {
         this.available = param1;
         this.§!"O§.setDisabled(!param1);
         if(!param1)
         {
            this.§!"O§.setVisible(false);
         }
      }
      
      public function §-!T§() : Boolean
      {
         return this.available;
      }
      
      public function getContainer() : MovieClip
      {
         return this.container;
      }
      
      public function §4$]§() : TextField
      {
         return this.§5[§;
      }
      
      public function destroy() : void
      {
         this.§!"O§.removeEventListener(§8"@§.EVENT_TOGGLE,this.§5!=§);
         this.§5[§.removeEventListener(MouseEvent.CLICK,§<%1§);
      }
      
      public function get §7y§() : Boolean
      {
         return this.§#%>§;
      }
   }
}

