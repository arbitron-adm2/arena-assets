package §4%_§
{
   import § K§.§^#V§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§ G§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%Q§.§+$#§;
   import §+%S§.§?3§;
   import §,"v§.§9%d§;
   import §-!U§.§&%j§;
   import §-"Q§.*;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.*;
   import §0%j§.*;
   import §0%z§.§?$E§;
   import §0&F§.§0%v§;
   import §1A§.§#"§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §2B§.§#&E§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §4$b§.§2m§;
   import §4'§.§`"q§;
   import §4^§.§'!u§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §8#`§.§8!&§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$Z§.*;
   import §9![§.§#$k§;
   import §9$-§.§!$W§;
   import §<!W§.§#&#§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=&6§.§8c§;
   import §=1§.*;
   import §>!_§.§'!&§;
   import §>%S§.§^!V§;
   import §?"[§.§6#o§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[#q§.§",§;
   import §[$<§.§;"E§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§@&,§;
   import §`v§.§!V§;
   import §`v§.§2&H§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.common.post.§##Z§;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterMobilePayment;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3#3§ extends §&"T§
   {
      
      public static const DAMAGE:§&$2§ = new §&$2§(4);
      
      private static const §0"w§:int = 140;
      
      private static const §3$Y§:int = 80;
      
      private static const §^&9§:int = 120;
      
      private var §-!C§:MovieClip;
      
      private var §2%?§:MovieClip;
      
      private var §'"W§:MovieClip;
      
      protected var owner:§+%]§;
      
      private var §>&7§:Boolean = false;
      
      private var active:Boolean = false;
      
      private var target:§+%]§ = null;
      
      private var §]$6§:MovieClip;
      
      private var §#$^§:Vector.<§+%]§>;
      
      private var §<"V§:uint;
      
      private var §`&I§:§#"§;
      
      private var §>";§:§7#P§;
      
      public function §3#3§(param1:§+%]§, param2:int, param3:int)
      {
         super();
         this.owner = param1;
         var _loc4_:String = param1.graphics.§5"L§().§^#;§();
         this.§-!C§ = §6#A§.§!&6§(_loc4_ + "DroneDeactivate");
         this.§2%?§ = §6#A§.§!&6§(_loc4_ + "DroneActive");
         this.§'"W§ = §6#A§.§!&6§(_loc4_ + "DroneAiming");
         this.§?#M§([this.§-!C§,this.§2%?§,this.§'"W§]);
         this.clip = this.§-!C§;
         this.x = param2;
         this.y = param3;
         this.stable = true;
         canBeDamaged = true;
         §@%;§.play(§`!v§.EMERGENCY_TELEPORT);
         Application.scene.addEventListener(§0%v§.SOT,this.§@$'§);
         addEventListener(§0%v§.§&!D§,this.§""0§);
         Application.scene.§@$I§.§1$+§(this,true);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physicModel = new §;$S§(physParams);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(this.active && !disposed)
         {
            if(this.§<"V§ == 0)
            {
               this.§<+§();
            }
            else
            {
               --this.§<"V§;
            }
            this.§2!r§();
            if(this.target != null)
            {
               if(this.§'$l§(this.target))
               {
                  if(this.§`&I§.tick())
                  {
                     this.attack(this.target);
                     this.§2#$§();
                     if(this.owner.squad.isLocal())
                     {
                        §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§!#§);
                     }
                  }
               }
               else
               {
                  swapClip(this.§2%?§);
                  this.§2#$§();
               }
            }
            else
            {
               this.target = this.§^#d§();
               if(this.target != null)
               {
                  swapClip(this.§'"W§);
                  this.§`&I§ = new §#"§(§3$Y§);
                  this.§`&I§.update();
                  this.§]$6§ = §6#A§.§!&6§(§+"'§.§;"y§);
                  this.target.graphics.§5$#§(§2m§.§-w§,this.§]$6§);
                  this.§>";§ = §`!v§.§[!o§(§`!v§.§^%§,true);
               }
            }
         }
      }
      
      private function §+#x§(param1:Event) : void
      {
         param1.target.removeEventListener(Event.SOUND_COMPLETE,this.§+#x§);
         if(this.§>";§)
         {
            this.§>";§ = §`!v§.§[!o§(§`!v§.§^%§);
            this.§>";§.addEventListener(Event.SOUND_COMPLETE,this.§+#x§);
         }
      }
      
      protected function §2#$§() : void
      {
         if(this.target)
         {
            if(!this.target.disposed)
            {
               this.target.graphics.detachClip(this.§]$6§,§2m§.§-w§);
            }
            this.§]$6§ = null;
            this.target = null;
            this.§`&I§ = null;
            if(this.§>";§)
            {
               this.§>";§.removeEventListener(Event.SOUND_COMPLETE,this.§+#x§);
               this.§>";§.stop();
               this.§>";§ = null;
            }
         }
      }
      
      private function activate() : void
      {
         swapClip(this.§2%?§);
         §@%;§.play(§`!v§.§@v§);
         this.§>&7§ = true;
         this.active = true;
         this.§<"V§ = §^&9§;
         this.§#$^§ = this.§=$6§(§0"w§);
         Application.scene.addEventListener(§0%v§.EOT,this.§]0§);
      }
      
      private function attack(param1:§+%]§) : void
      {
         §'"$§.§]#I§(this.owner,param1.x,param1.y,param1,DAMAGE.value,0,0,false,false,§&!E§.§=$-§);
         §1"-§.explode(§;n§.§1"E§,this.x,this.y,§0"w§ - 50,§`!v§.§@S§);
         disposed = true;
      }
      
      private function §'$l§(param1:§+%]§, ... rest) : Boolean
      {
         return !param1.disposed && §<H§.§8!P§(param1,x,y,§0"w§,true);
      }
      
      private function §2!r§() : void
      {
         if(this.§#$^§.length > 0)
         {
            this.§#$^§ = this.§#$^§.filter(this.§'$l§);
         }
      }
      
      private function §<+§() : void
      {
         var _loc1_:uint = 0;
         if(this.§#$^§.length > 0)
         {
            _loc1_ = this.§#$^§.indexOf(§8"%§.§?!W§.§4"m§.activeUnit);
            if(_loc1_ != -1)
            {
               this.§#$^§.splice(_loc1_,1);
            }
         }
      }
      
      private function §^#d§() : §+%]§
      {
         var enemies:Vector.<§+%]§> = this.§=$6§(§0"w§).filter(function(param1:§+%]§, ... rest):Boolean
         {
            return §#$^§.indexOf(param1) == -1;
         });
         return enemies.length > 0 ? enemies[0] : null;
      }
      
      protected function §]0§(param1:Event) : void
      {
         if(this.active)
         {
            swapClip(this.§-!C§);
            this.active = false;
            this.§2#$§();
         }
      }
      
      protected function §@$'§(param1:Event) : void
      {
         var _loc2_:§+%]§ = §8"%§.§?!W§.§4"m§.activeUnit;
         if(this.§>&7§ && _loc2_ == this.owner)
         {
            disposed = true;
         }
         else if(!this.active && _loc2_.squad.getTeamId() != this.owner.squad.getTeamId())
         {
            this.activate();
         }
      }
      
      protected function §=$6§(param1:uint) : Vector.<§+%]§>
      {
         var radius:uint = param1;
         var unitsInCircle:Vector.<§+%]§> = §<H§.§5"]§(x,y,radius);
         return unitsInCircle.filter(function(param1:§+%]§, ... rest):Boolean
         {
            return param1.squad.getTeamId() != owner.squad.getTeamId();
         });
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         §1"-§.explode(§;n§.§1"E§,this.x,this.y,20,§`!v§.§@S§);
         this.§2#$§();
         Application.scene.removeEventListener(§0%v§.SOT,this.§@$'§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§]0§);
         super.§[$u§(param1);
      }
      
      private function §?#M§(param1:Array) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc2_:int = §5%8§.§+#_§(this.owner.squad.getNumber());
         for each(_loc3_ in param1)
         {
            _loc4_ = 0;
            while(_loc4_ <= 3)
            {
               if(_loc4_ != _loc2_)
               {
                  _loc3_.getChildByName("anim" + _loc4_).visible = false;
               }
               _loc4_++;
            }
         }
      }
   }
}

