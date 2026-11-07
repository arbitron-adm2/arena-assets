package §%&3§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §"!C§.§2v§;
   import §"$+§.§@C§;
   import §#",§.ChooseFriendMenu;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'$Z§.§2#f§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §-%B§.*;
   import §-&5§.*;
   import §-@§.*;
   import §0&F§.§0%v§;
   import §2!-§.NewUnitEvent;
   import §2#i§.§+%z§;
   import §3#T§.§5!M§;
   import §3%J§.BuyBattleTokensDialog;
   import §4!!§.§]#k§;
   import §4#`§.*;
   import §4'§.§`"q§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$Z§.§9!&§;
   import §9%W§.§&!P§;
   import §<!W§.§=!6§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.§9%1§;
   import §=#g§.§&%5§;
   import §?#g§.*;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import §`#x§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import com.inreflected.ui.touchScroll.*;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.Font;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpRetryCommandRequestServer;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §'C§ extends §]"e§
   {
      
      private static const §%"l§:uint = 30;
      
      private static const §%&<§:uint = 10;
      
      private var power:uint;
      
      private var targets:Array;
      
      private var §8$L§:Point;
      
      private var §4&7§:§]#k§;
      
      private var §"!c§:§5$n§;
      
      public function §'C§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint, param6:Point, param7:uint, param8:int = 1)
      {
         var _loc9_:int = 0;
         §@!+§ = §7#c§ * 2.4;
         §,!8§ = §`!v§.§;$N§;
         explosionSound = §`!v§.§>l§;
         this.power = param5;
         this.§"!c§ = param3.clone();
         this.§"!c§.clipClassName = "PaperPlaneTilt";
         super(param1,param2,param3,param4,this.power,param6,param8);
         §&"$§ = false;
         §##[§ = §@!+§ + 1;
         homingFeat.§<$1§ = §6"m§ * 2;
         homingFeat.ammoSpeed = this.power * 1.6;
         homingFeat.§7"m§ = true;
         §'""§ = false;
         §>$3§ = §%&<§;
         §[",§ = §%"l§;
         _damageType = §&!E§.AIR;
         §`c§ = true;
         if(param7)
         {
            §!%8§.visible = false;
            this.§4&7§ = new §]#k§(param1,x,y,this.§"!c§,param4,param5,param7);
            this.§4&7§.addEventListener(§0%v§.DISPOSED,this.§1!,§);
            physParams.§5N§ = §9%1§.§>#T§;
            physParams.ignoresTerrain = true;
         }
         else if(§8"%§.§&S§.§-p§())
         {
            _loc9_ = 10;
            §1"-§.attachTrail(this,_loc9_,6,11468799,16777215,1,true,0.5);
         }
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:§8!U§ = null;
         var _loc3_:§%%2§ = null;
         super.§!!>§();
         if(!this.targets)
         {
            return;
         }
         if(this.§8$L§)
         {
            _loc1_ = §<H§.§8!P§(this,this.§8$L§.x,this.§8$L§.y,§<H§.§-#C§,false);
            if(_loc1_)
            {
               this.§4$D§();
            }
            else if(this.§4&7§)
            {
               if(homingFeat.isHoming)
               {
                  this.§4&7§.§'"§(angle);
               }
               if(!homingFeat.isHoming && homingFeat.§-%§())
               {
                  this.§4&7§.§!!>§();
               }
            }
         }
         else
         {
            if(this.§8$L§)
            {
               this.§4$D§();
            }
            if(homingFeat.§`"%§() == null)
            {
            }
            if(§=l§.length < 2)
            {
               §=l§.length = 0;
               _loc2_ = new §8!U§(this,200,1);
               _loc3_ = new §%%2§(this,20,Math.PI / 30);
               _loc3_.§!$s§(_loc2_);
               §=l§.push(_loc2_,_loc3_);
               §>";§ = §@%;§.play(§`!v§.§]%2§,true);
            }
         }
         if(this.§4&7§)
         {
            this.§4&7§.§'"§(angle);
         }
      }
      
      private function §4$D§() : void
      {
         if(this.targets.length > 0)
         {
            this.§#U§();
         }
         else if(this.§8$L§)
         {
            this.§8$L§ = null;
            homingFeat.§>^§();
            physParams.addForce(§]%G§.§5$r§);
         }
      }
      
      private function §#U§(param1:Boolean = true) : void
      {
         var _loc2_:Object = this.targets.shift();
         this.§8$L§ = new Point(_loc2_.x,_loc2_.y);
         if(param1)
         {
            homingFeat.§0!F§(this.§8$L§);
            if(!homingFeat.isHoming)
            {
               homingFeat.isHoming = true;
            }
         }
      }
      
      public function §!;§(param1:Array) : void
      {
         this.targets = param1;
         this.§#U§(false);
      }
      
      override protected function §7$=§() : void
      {
         §^#S§.restart(§@!+§);
         §`4§ = §]$S§;
         if(this.§8$L§)
         {
            homingFeat.§0!F§(this.§8$L§);
         }
         else
         {
            this.§#U§();
         }
      }
      
      override protected function explode(param1:§&"T§) : void
      {
         super.explode(param1);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         this.targets.length = 0;
      }
      
      private function §1!,§(param1:Event) : void
      {
         this.§4&7§.removeEventListener(§0%v§.DISPOSED,this.§1!,§);
         this.§4&7§ = null;
         disposed = true;
      }
   }
}

