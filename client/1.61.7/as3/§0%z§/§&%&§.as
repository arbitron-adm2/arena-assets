package §0%z§
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"$+§.§^$`§;
   import §#"V§.§<"4§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%&3§.§'C§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §4!!§.§#Z§;
   import §4u§.§@#+§;
   import §5%S§.§>&-§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=$#§.§`%u§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[%§.*;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.TweenMax;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.user.§!>§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §&%&§ extends §<"4§ implements §^c§
   {
      
      public static const §+%N§:String = "longOn";
      
      public static const §'%8§:String = "longOff";
      
      public static const §;"6§:String = "shortOn";
      
      public static const § "y§:String = "shortOff";
      
      public static const §;!v§:int = 0;
      
      public static const §8#$§:int = 1;
      
      public static const §&$7§:int = 2;
      
      public static const §9#3§:int = 3;
      
      public static const §<e§:int = 4;
      
      private var hint:§@#+§;
      
      private var item:§&!e§;
      
      private var §,!'§:MovieClip;
      
      private var §?!m§:MovieClip;
      
      private var §2%Y§:MovieClip;
      
      private var §8$l§:MovieClip;
      
      private var state:int = 0;
      
      private var § $B§:MovieClip;
      
      private var §!#R§:Vector.<MovieClip>;
      
      public function §&%&§(param1:int)
      {
         super(§6#A§.§!&6§("AwardCell"));
         this.§?!m§ = §'$a§("active");
         this.§,!'§ = §'$a§("disable");
         this.§2%Y§ = §'$a§("select");
         this.§8$l§ = §'$a§("selected");
         this.§ $B§ = §'$a§("arrows");
         this.§ $B§.visible = false;
         this.item = §<$c§.§8&E§(param1,Application.userProfile.getRace());
         this.hint = new §@#+§(§'$a§("icon"),true);
         this.hint.setItem(this.item);
         this.§!#R§ = §3!3§.§#"R§(this.§?!m§);
         this.§!#R§ = this.§!#R§.concat(§3!3§.§#"R§(this.§2%Y§));
      }
      
      public function §%%S§(param1:int, param2:int, param3:String) : void
      {
         if(param3 == Application.userProfile.§"%D§())
         {
            this.hint.update(this.state,param1,param2);
         }
         else
         {
            this.hint.update(§8#$§,param1,param2);
         }
      }
      
      public function §="p§() : void
      {
         this.§?!m§.visible = false;
         this.§2%Y§.visible = false;
         this.§8$l§.visible = false;
         this.§,!'§.visible = true;
         this.§3$g§(true);
         this.setState(§;!v§);
         this.stopAnimations();
      }
      
      private function §3$g§(param1:Boolean) : void
      {
         TweenMax.to(this.hint.getContainer(),0,{"colorMatrixFilter":{"saturation":!param1}});
      }
      
      public function setActive() : void
      {
         this.§?!m§.visible = true;
         this.§2%Y§.visible = false;
         this.§8$l§.visible = false;
         this.§,!'§.visible = false;
         this.§3$g§(false);
         this.setState(§8#$§);
         this.playAnimations();
      }
      
      public function §0$§() : void
      {
         this.§?!m§.visible = false;
         this.§2%Y§.visible = true;
         this.§8$l§.visible = false;
         this.§,!'§.visible = false;
         this.§3$g§(false);
         this.setState(§&$7§);
      }
      
      public function setSelected() : void
      {
         this.§?!m§.visible = false;
         this.§2%Y§.visible = true;
         this.§8$l§.visible = true;
         this.§,!'§.visible = false;
         this.§3$g§(false);
         this.setState(§9#3§);
         this.playAnimations();
      }
      
      public function §6q§() : void
      {
         this.§?!m§.visible = false;
         this.§2%Y§.visible = false;
         this.§8$l§.visible = true;
         this.§,!'§.visible = true;
         this.§3$g§(false);
         this.setState(§<e§);
      }
      
      public function §##m§() : int
      {
         return this.state;
      }
      
      private function setState(param1:int) : void
      {
         this.state = param1;
         this.hint.update(this.state);
      }
      
      public function getItem() : §&!e§
      {
         return this.item;
      }
      
      public function setItem(param1:§&!e§) : void
      {
         this.item = param1;
         this.hint.setItem(this.item);
      }
      
      public function §^"z§(param1:String, param2:Boolean) : void
      {
         var _loc3_:MovieClip = this.§ $B§.getChildByName(§'%8§) as MovieClip;
         var _loc4_:MovieClip = this.§ $B§.getChildByName(§ "y§) as MovieClip;
         _loc3_.visible = §'%8§ == param1 && param2;
         _loc4_.visible = § "y§ == param1 && param2;
         this.§ $B§.getChildByName(§+%N§).visible = §+%N§ == param1 && param2;
         this.§ $B§.getChildByName(§;"6§).visible = §;"6§ == param1 && param2;
         if(param2 && (_loc3_.visible || _loc4_.visible))
         {
            this.§ $B§.visible = true;
         }
      }
      
      public function playAnimations() : void
      {
         if(isVisible())
         {
            §3!3§.§<%W§(this.§!#R§);
         }
      }
      
      public function stopAnimations() : void
      {
         §3!3§.§>!j§(this.§!#R§);
      }
   }
}

