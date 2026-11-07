package §7!B§
{
   import §!!i§.§@&&§;
   import §"#x§.§'"$§;
   import §#",§.§?§;
   import §%"1§.§=#?§;
   import §%"Z§.§'$2§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.HpChangeEvent;
   import §2"L§.§^$y§;
   import §4$b§.*;
   import §4u§.ReagentHint;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§;#L§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^#o§.§[&7§;
   import §`#x§.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpLogin;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §6#I§ extends §&"T§
   {
      
      public static const §&i§:uint = 300;
      
      protected static const §+#G§:int = 0;
      
      protected static const §]$S§:int = 1;
      
      protected static const §5$=§:int = 2;
      
      private var §]B§:int = 0;
      
      private var §[$a§:int;
      
      private var §]#-§:int;
      
      private var §7$^§:Boolean = false;
      
      private var §@V§:Boolean = false;
      
      protected var §##[§:int;
      
      protected var §`4§:int = 0;
      
      protected var _damageType:§&!E§;
      
      protected var §3$1§:Boolean = true;
      
      protected var §9#B§:Boolean = true;
      
      protected var § &%§:Boolean = true;
      
      protected var §&!$§:Boolean = true;
      
      protected var §`^§:Boolean = true;
      
      protected var § $d§:Boolean = true;
      
      protected var §;h§:Boolean = true;
      
      protected var §@#!§:Boolean = true;
      
      protected var §=l§:Vector.<§[&7§> = new Vector.<§[&7§>(0);
      
      public var owner:§+%]§;
      
      public var §`#=§:int = 0;
      
      protected var §1#t§:§=#?§;
      
      protected var _customSource:§;#_§;
      
      public function §6#I§(param1:§+%]§, param2:int, param3:int, param4:Boolean = false, param5:int = 300, param6:§&!E§ = null)
      {
         var _loc7_:§,%r§ = null;
         this.owner = param1;
         if(param1 != null)
         {
            _loc7_ = param1.weapon != null ? param1.weapon : param1.lastWeapon;
            if(_loc7_ != null)
            {
               this.§`#=§ = int(_loc7_.recordId.value);
            }
         }
         this.§]B§ = param1 != null ? param1.direction : 0;
         this.§[$a§ = param2;
         this.§]#-§ = param3;
         this._damageType = param6 == null ? §&!E§.§!?§ : param6;
         this.§1#t§ = §`!v§.§>l§;
         super(param4);
         §-"e§ = true;
         physicModel.keepUnstable = true;
         addEventListener(§0%v§.§&!D§,§""0§);
         this.§##[§ = param5;
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§ + §9%1§.§@%h§;
         physicModel = new §7%[§(physParams);
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:§[&7§ = null;
         super.§!!>§();
         for each(_loc1_ in this.§=l§)
         {
            _loc1_.§!!>§(frames);
         }
         this.§[$W§();
         this.§,#U§();
      }
      
      protected function initialize(param1:Point, param2:String = null) : void
      {
         var clip:MovieClip = null;
         var base:Point = param1;
         var clipClassName:String = param2;
         try
         {
            if(clipClassName != null && clipClassName != "")
            {
               clip = §6#A§.§!&6§(clipClassName);
               this.clip = clip;
               this.clip.name = clipClassName;
            }
            this.x = base.x;
            this.y = base.y;
         }
         catch(e:ArgumentError)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"ammo init hack"));
         }
      }
      
      protected function §"$C§(param1:Number, param2:uint = 25, param3:Point = null) : Point
      {
         var _loc4_:Point = param3 == null ? new Point(this.owner.x,this.owner.y) : param3.clone();
         _loc4_.x += Math.cos(param1) * param2;
         _loc4_.y += Math.sin(param1) * param2;
         return _loc4_;
      }
      
      public function §<!K§(param1:Boolean, param2:Boolean) : void
      {
         this.§`^§ = param1;
         this.§ $d§ = param2;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         removeEventListener(§0%v§.§&!D§,§""0§);
         super.§[$u§(param1);
      }
      
      public function inflictDamage(param1:§&"T§, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Boolean = false, param7:Boolean = true, param8:Object = null) : void
      {
         var victim:§&"T§ = param1;
         var damage:Number = param2;
         var damageRadius:Number = param3;
         var expRadius:Number = param4;
         var selfHit:Boolean = param5;
         var pure:Boolean = param6;
         var canCrit:Boolean = param7;
         var customSource:Object = param8;
         try
         {
            §'"$§.inflictDamage(this,victim,damage,damageRadius,expRadius,selfHit,pure,customSource);
         }
         catch(e:ArgumentError)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"explosion hack 2"));
         }
      }
      
      protected function §[$W§() : void
      {
         if(clip == null)
         {
            return;
         }
         if(this.§`4§ == §]$S§)
         {
            this.clip.rotation = this.angle * 180 / Math.PI;
         }
         else if(this.§`4§ == §5$=§)
         {
            if((Math.abs(speedX) > 0.1 || Math.abs(speedY) > 0.1) && physicModel.movedOnLastFrame)
            {
               this.clip.rotation += Math.max(Math.abs(speed),7) * §^$y§.sign(speedX);
            }
         }
      }
      
      protected function §,#U§() : void
      {
         if(this.§##[§ > 0)
         {
            if(!disposed && --this.§##[§ == 0)
            {
               if(clip != null)
               {
                  §1"-§.explode(§;n§.§7q§,x,y,clip.width,this.§1#t§);
               }
               disposed = true;
            }
         }
      }
      
      public function repell() : void
      {
      }
      
      public function get damageType() : §&!E§
      {
         return this._damageType;
      }
      
      public function set damageType(param1:§&!E§) : void
      {
         this._damageType = param1;
      }
      
      public function get §4M§() : Boolean
      {
         return this.§3$1§;
      }
      
      public function set §4M§(param1:Boolean) : void
      {
         this.§3$1§ = param1;
      }
      
      public function get §5#C§() : Boolean
      {
         return this.§9#B§;
      }
      
      public function set §5#C§(param1:Boolean) : void
      {
         this.§9#B§ = param1;
      }
      
      public function get §1!e§() : Boolean
      {
         return this.§ &%§;
      }
      
      public function set §1!e§(param1:Boolean) : void
      {
         this.§ &%§ = param1;
      }
      
      public function set §=#3§(param1:Boolean) : void
      {
         this.§&!$§ = param1;
      }
      
      public function get §=#3§() : Boolean
      {
         return this.§&!$§;
      }
      
      public function get mindAttack() : Boolean
      {
         return this.§;h§;
      }
      
      public function set mindAttack(param1:Boolean) : void
      {
         this.§;h§ = param1;
      }
      
      public function get §5!4§() : Boolean
      {
         return this.§@#!§;
      }
      
      public function set §5!4§(param1:Boolean) : void
      {
         this.§@#!§ = param1;
      }
      
      public function get §-$§() : int
      {
         return this.§]B§;
      }
      
      public function get §'#=§() : int
      {
         return this.§[$a§;
      }
      
      public function get §[#B§() : int
      {
         return this.§]#-§;
      }
      
      public function get §,%S§() : Boolean
      {
         return this.§7$^§;
      }
      
      public function set §,%S§(param1:Boolean) : void
      {
         this.§7$^§ = param1;
      }
      
      public function get §6""§() : Boolean
      {
         return this.§@V§;
      }
      
      public function set §6""§(param1:Boolean) : void
      {
         this.§@V§ = param1;
      }
      
      public function set customSource(param1:§;#_§) : void
      {
         this._customSource = param1;
      }
   }
}

