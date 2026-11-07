package §7!B§
{
   import § #9§.§"$t§;
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §!#g§.*;
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §"!C§.§3#n§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §&!m§.§-$6§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'"N§.§4&5§;
   import §'%!§.§@!Z§;
   import §+$=§.*;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"v§.*;
   import §2#W§.PvpChestBox;
   import §2#x§.*;
   import §2o§.§]#@§;
   import §4$b§.§6!G§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §6",§.§[%w§;
   import §7$t§.§&!e§;
   import §8#o§.§1@§;
   import §8$V§.§`"k§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<!W§.§;#A§;
   import §<"L§.*;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§[$+§;
   import §=;§.§>%>§;
   import §?#g§.Race;
   import §?>§.§0!7§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%§.*;
   import §]#[§.*;
   import §]^§.§-$T§;
   import §]^§.§5" §;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §^4§.§]"8§;
   import §`%&§.§8U§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §&"T§ extends EventDispatcher
   {
      
      public static const §8! §:Number = 6;
      
      public static const §0%V§:Number = 2;
      
      public static const §[$i§:Number = 10;
      
      protected static const §>!P§:Array = [§`!v§.WATER_SPLASH1,§`!v§.WATER_SPLASH2,§`!v§.WATER_SPLASH3];
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      public var §]$Y§:int = 0;
      
      public var §@!^§:int = 0;
      
      public var §8%w§:int = 0;
      
      public var §+S§:int = -1;
      
      public var killerWeaponId:int = 0;
      
      public var physicModel:§[$+§;
      
      public var physParams:§9%1§;
      
      public var §-#@§:Boolean = false;
      
      public var canBeDamaged:Boolean = false;
      
      protected var §!f§:Number = 6;
      
      protected var §8%'§:Number = 0;
      
      protected var id:uint;
      
      protected var frames:int = 0;
      
      protected var §@#T§:§@N§;
      
      protected var §!%8§:MovieClip;
      
      protected var §5$s§:Point = new Point(0,0);
      
      protected var §-$[§:uint = 1;
      
      protected var §4!<§:uint = 1;
      
      protected var §&$C§:uint = 1;
      
      protected var §&%L§:uint = 1;
      
      protected var §9!F§:§6#I§;
      
      protected var §0#D§:Object;
      
      protected var §8%g§:§9"u§;
      
      protected var §,q§:Vector.<§-&§> = new Vector.<§-&§>(0);
      
      protected var §-"e§:Boolean = false;
      
      protected var §+!x§:Boolean = false;
      
      protected var §7#6§:Boolean = true;
      
      protected var § %o§:Boolean = true;
      
      private var lastX:int = 0;
      
      private var §8$<§:int = 0;
      
      public function §&"T§(param1:Boolean = false, param2:§@N§ = null)
      {
         super();
         this.id = !param1 ? Application.scene.§@$I§.§@I§() : 0;
         this.§@#T§ = param2 || §@N§.§[!i§;
         this.§+_§();
         this.physicModel.addEventListener(§0%v§.§^$3§,this.§1$Z§);
         this.physicModel.addEventListener(§0%v§.§+&=§,this.§%$e§);
         this.physicModel.addEventListener(§0%v§.§`"S§,this.§6&@§);
         addEventListener(§0%v§.DISPOSED,this.§[$u§);
      }
      
      public static function §="j§(param1:§&"T§, param2:§&"T§ = null) : Number
      {
         var _loc3_:Number = param1 ? param1.§6&5§() : 0;
         if(Boolean(param1 && param2 && param2 is §]"8§ && §]"8§(param2).paramSet) && Boolean(§]"8§(param2).paramSet.ammosByShot) && §]"8§(param2).paramSet.ammosByShot.value > 1)
         {
            _loc3_ /= §]"8§(param2).paramSet.ammosByShot.value;
         }
         return Math.min(§[$i§,_loc3_);
      }
      
      public function getId() : uint
      {
         return this.id;
      }
      
      protected function §+_§() : void
      {
         this.physParams = new §9%1§(§<#`§.NONE);
         this.physicModel = new §;$S§(this.physParams);
      }
      
      public function get x() : int
      {
         return this.physicModel ? this.physicModel.x : this.lastX;
      }
      
      public function set x(param1:int) : void
      {
         this.physicModel.x = param1;
      }
      
      public function get y() : int
      {
         return this.physicModel ? this.physicModel.y : this.§8$<§;
      }
      
      public function set y(param1:int) : void
      {
         this.physicModel.y = param1;
      }
      
      public function get height() : int
      {
         return this.§4!<§;
      }
      
      public function get width() : int
      {
         return this.§-$[§;
      }
      
      public function get §4!?§() : uint
      {
         return this.§&$C§;
      }
      
      public function get §,#u§() : uint
      {
         return this.§&%L§;
      }
      
      public function get angle() : Number
      {
         return this.physicModel.angle;
      }
      
      public function get rotation() : Number
      {
         return this.physicModel.rotation;
      }
      
      public function get disposed() : Boolean
      {
         return this.physicModel ? this.physParams.disposed : true;
      }
      
      public function set disposed(param1:Boolean) : void
      {
         this.physParams.disposed = param1;
         if(param1 && !this.physParams.disposed)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"disposal hacked"));
         }
      }
      
      public function get stable() : Boolean
      {
         return Boolean(this.physicModel) && this.physicModel.stable;
      }
      
      public function set stable(param1:Boolean) : void
      {
         this.physicModel.stable = param1;
      }
      
      public function §^"F§(param1:Number, param2:Number) : void
      {
         this.physicModel.§^"F§(param1,param2);
      }
      
      public function §6"O§(param1:Number, param2:Number) : void
      {
         this.physicModel.§6"O§(param1,param2);
      }
      
      public function setSpeedXY(param1:Number, param2:Number) : void
      {
         this.physicModel.setSpeedXY(param1,param2);
      }
      
      public function §5!?§(param1:Number, param2:Number) : void
      {
         this.physicModel.§5!?§(param1,param2);
      }
      
      public function get speedX() : Number
      {
         return this.physicModel.speedX;
      }
      
      public function get speedY() : Number
      {
         return this.physicModel.speedY;
      }
      
      public function get speed() : Number
      {
         return this.physicModel.speed;
      }
      
      protected function §-b§(param1:int, param2:int) : void
      {
         this.§5$s§.x = param1;
         this.§5$s§.y = param2;
      }
      
      public function §!!>§() : void
      {
         ++this.frames;
         this.physicModel.§!!>§();
         if(this.§!%8§ != null)
         {
            this.§!%8§.x = this.physicModel.x + this.§5$s§.x;
            this.§!%8§.y = this.physicModel.y + this.§5$s§.y;
         }
      }
      
      public function get clip() : MovieClip
      {
         return this.§!%8§;
      }
      
      public function set clip(param1:MovieClip) : void
      {
         this.§!%8§ = param1;
         this.§-$[§ = this.§!%8§.width;
         this.§4!<§ = this.§!%8§.height;
         this.§&$C§ = this.§-$[§ >> 1;
         this.§&%L§ = this.§4!<§ >> 1;
         this.§!%8§.mouseChildren = this.§!%8§.mouseEnabled = false;
      }
      
      public function set scale(param1:Number) : void
      {
         if(this.§!%8§)
         {
            this.§!%8§.scaleX = this.§!%8§.scaleY = param1;
         }
      }
      
      public function §;s§(param1:Boolean) : void
      {
         if(this.§!%8§)
         {
            this.§!%8§.mouseChildren = this.§!%8§.mouseEnabled = param1;
         }
      }
      
      public function §+%;§() : void
      {
         var _loc1_:Rectangle = null;
         if(this.§!%8§)
         {
            _loc1_ = this.§!%8§.getRect(this.§!%8§);
            this.physParams.§0%m§(Math.round((_loc1_.left + _loc1_.right) / 2),Math.round(_loc1_.bottom));
         }
      }
      
      public function swapClip(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         if(this.disposed)
         {
            return;
         }
         if(this.§!%8§)
         {
            param1.rotation = this.§!%8§.rotation;
            _loc2_ = Application.scene.§=P§(this.§@#T§).getChildIndex(this.§!%8§);
            Application.scene.§=P§(this.§@#T§).removeChild(this.§!%8§);
            Application.scene.§=P§(this.§@#T§).addChildAt(param1,_loc2_);
         }
         else
         {
            Application.scene.§=P§(this.§@#T§).addChild(param1);
         }
         this.§!%8§ = param1;
      }
      
      public function get layer() : §@N§
      {
         return this.§@#T§;
      }
      
      public function get §8!m§() : §6#I§
      {
         return this.§9!F§;
      }
      
      public function set §8!m§(param1:§6#I§) : void
      {
         this.§9!F§ = param1;
      }
      
      public function get §2"M§() : Object
      {
         return this.§0#D§;
      }
      
      public function get attributes() : §9"u§
      {
         return this.§8%g§;
      }
      
      public function get §#%O§() : Boolean
      {
         return this.§-"e§;
      }
      
      public function set §#%O§(param1:Boolean) : void
      {
         this.§-"e§ = param1;
      }
      
      public function set disabled(param1:Boolean) : void
      {
         this.§+!x§ = param1;
      }
      
      public function get disabled() : Boolean
      {
         return this.§+!x§;
      }
      
      public function get §'%y§() : Boolean
      {
         return this.§7#6§;
      }
      
      public function set §'%y§(param1:Boolean) : void
      {
         this.§7#6§ = param1;
      }
      
      public function §5%g§(param1:§-&§) : Boolean
      {
         return this.§,q§.indexOf(param1) != -1;
      }
      
      public function §!!=§(param1:§-&§) : Boolean
      {
         if(this.§,q§.indexOf(param1) == -1)
         {
            this.§,q§.push(param1);
            return true;
         }
         return false;
      }
      
      public function §""0§(param1:DamageEvent) : void
      {
         var _loc2_:int = 0;
         _loc2_ = param1.victim.x - param1.source.x;
         var _loc3_:int = param1.victim.y - param1.source.y;
         var _loc4_:Number = _loc2_ != 0 ? Math.atan2(_loc3_,_loc2_) : -PI_HALF;
         this.§9!F§ = param1.source;
         this.§0#D§ = param1.customSource;
         var _loc5_:Number = param1.source.damageType == §&!E§.FIRE ? 0 : §="j§(param1.source.owner,param1.source);
         var _loc6_:Number = Math.max(§0%V§,param1.power / this.§!f§ + _loc5_);
         this.§6"O§(_loc4_,_loc6_);
         this.physicModel.stable = false;
      }
      
      public function §[$u§(param1:Event) : void
      {
         this.lastX = this.physicModel.x;
         this.§8$<§ = this.physicModel.y;
         this.physicModel.clear();
         this.physicModel = null;
         if(this.§!%8§)
         {
            §3!3§.§>!j§(§3!3§.§#"R§(this.§!%8§));
         }
      }
      
      protected function §1$Z§(param1:Event) : void
      {
         if(this.y > 0)
         {
            §@%;§.play(§`!v§.§=%2§(§>!P§));
            §1"-§.§8%8§(this.x,this.y,20);
         }
         this.§-#@§ = true;
         this.disposed = true;
         dispatchEvent(param1);
      }
      
      protected function §%$e§(param1:CollisionEvent) : void
      {
         dispatchEvent(param1);
      }
      
      protected function §6&@§(param1:BeforeHitEvent) : void
      {
         param1.§^w§ = this;
         var _loc2_:BeforeHitEvent = param1.clone() as BeforeHitEvent;
         if(param1.subject)
         {
            param1.subject.dispatchEvent(_loc2_);
         }
         if(_loc2_.cancelCollision)
         {
            param1.cancelCollision = true;
         }
      }
      
      public function §%t§(param1:Number) : void
      {
         this.§!f§ = param1;
      }
      
      public function §&"u§(param1:Number) : void
      {
         this.§8%'§ = param1;
      }
      
      public function §6&5§() : Number
      {
         return this.§8%'§;
      }
      
      public function get §5!5§() : Boolean
      {
         return this.§ %o§;
      }
   }
}

