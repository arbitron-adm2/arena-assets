package §#",§
{
   import § !8§.§`!d§;
   import § !P§.§1!8§;
   import § #9§.§3L§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!$d§.§<$c§;
   import §!%6§.*;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §%$!§.§@!o§;
   import §%E§.§5%C§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#h§.§!#x§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%Q§.§#%9§;
   import §+%S§.§+m§;
   import §+%S§.§2!x§;
   import §+5§.§8$W§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!§.*;
   import §0%[§.§""n§;
   import §0%[§.§%"'§;
   import §0%[§.§1%"§;
   import §0%j§.§0$+§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2"L§.§,!t§;
   import §2#H§.§+N§;
   import §2#s§.*;
   import §3#T§.*;
   import §3#a§.§-#M§;
   import §4#`§.§]$c§;
   import §4$b§.§2m§;
   import §4'§.§4$&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §7$t§.§^$E§;
   import §8#`§.§#%r§;
   import §9%W§.§&!P§;
   import §9%W§.§`"y§;
   import §;$%§.§'%W§;
   import §<!W§.§!"+§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §=7§.§?%4§;
   import §>!_§.ClanMemberIntroHint;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@$§.§+%>§;
   import §@$§.§;F§;
   import §@$f§.§2U§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.TweenLite;
   import com.greensock.easing.Linear;
   import com.greensock.loading.*;
   import com.inreflected.ui.touchScroll.VelocityCalculator;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.PumpReactionRates;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.messages.server.UserIsBanned;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.§8J§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpDropPlayer;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §+!h§ extends §`&-§ implements §0$L§, §^c§
   {
      
      protected var avatar:§3L§;
      
      protected var addBtn:DisplayObject;
      
      private var §8!z§:uint;
      
      protected var §&%E§:Boolean = true;
      
      private var §]9§:Vector.<MovieClip>;
      
      public function §+!h§(param1:MovieClip)
      {
         super(param1);
         this.avatar = new §3L§(getChildByName("avatar") as MovieClip);
         §^"P§(this.avatar.getContainer(),MouseEvent.CLICK,this.§'$9§);
         this.addBtn = getChildByName("addBtn");
         this.avatar.§!%'§();
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §@$j§ = § "N§.§&$q§;
      }
      
      private function §'$9§(param1:MouseEvent) : void
      {
         var _loc2_:§+%>§ = null;
         if(!this.§&%E§)
         {
            return;
         }
         _loc2_ = §;F§.create(this.avatar.§?&1§());
         _loc2_.§<"b§ = true;
         _loc2_.§<$8§(param1.stageX,param1.stageY);
      }
      
      public function §4%8§(param1:Boolean) : void
      {
         this.§&%E§ = param1;
      }
      
      public function setItem(param1:Object) : void
      {
         if(param1)
         {
            this.avatar.§3%,§(UserProfile(param1));
         }
         this.avatar.setVisible(param1 != null);
         if(this.addBtn)
         {
            this.addBtn.visible = param1 == null;
         }
      }
      
      public function §!=§(param1:String) : void
      {
         this.avatar.§!=§(param1);
      }
      
      public function getItem() : Object
      {
         return this.avatar.§?&1§();
      }
      
      public function setSelected(param1:Boolean) : void
      {
      }
      
      public function §`%D§() : Boolean
      {
         return false;
      }
      
      public function §;b§(param1:Boolean) : void
      {
      }
      
      public function §,$K§() : Boolean
      {
         return false;
      }
      
      public function §?#y§(param1:uint) : void
      {
         this.§8!z§ = param1;
      }
      
      public function getCellIndex() : uint
      {
         return this.§8!z§;
      }
      
      public function §>!V§(param1:Boolean) : void
      {
      }
      
      public function §#&-§() : Boolean
      {
         return false;
      }
      
      public function §^3§(param1:uint) : void
      {
      }
      
      public function §^"r§() : uint
      {
         return 0;
      }
      
      public function playAnimations() : void
      {
         if(!this.§]9§)
         {
            this.§]9§ = §3!3§.§#"R§(getContainer() as MovieClip);
         }
         §3!3§.§<%W§(this.§]9§);
      }
      
      public function stopAnimations() : void
      {
         if(!this.§]9§)
         {
            this.§]9§ = §3!3§.§#"R§(getContainer() as MovieClip);
         }
         §3!3§.§>!j§(this.§]9§);
      }
      
      override public function setVisible(param1:Boolean) : void
      {
         super.setVisible(param1);
         if(param1)
         {
            this.playAnimations();
         }
         else
         {
            this.stopAnimations();
         }
      }
      
      override public function destroy() : void
      {
         this.avatar.§3%,§(null);
         this.avatar.destroy();
         this.stopAnimations();
         super.destroy();
      }
   }
}

