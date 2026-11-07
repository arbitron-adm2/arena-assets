package §7$t§
{
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&&6§.§>V§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §0"L§.*;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#x§.*;
   import §4#2§.*;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §9&+§.§6&=§;
   import §9&+§.§6B§;
   import §<!W§.§4!I§;
   import §<!W§.§;!`§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §=#g§.*;
   import §>"l§.§#!Y§;
   import §>%S§.§^!V§;
   import §@!N§.§,"J§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[$<§.*;
   import §^#[§.§&$2§;
   import com.greensock.motionPaths.PathFollower;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.globalization.DateTimeFormatter;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;#_§ extends §&!e§
   {
      
      public static const §+Y§:§&$2§ = new §&$2§(10);
      
      private static const §-#`§:uint = 15;
      
      private static const §9%5§:uint = 45;
      
      private var §3%Z§:String;
      
      private var hint:String = "";
      
      private var titleIcon:Array;
      
      public var §=%i§:Class;
      
      private var refId:uint = 0;
      
      private var dropWeight:uint = 0;
      
      private var dropQuantity:int = 0;
      
      private var dropMinLevel:uint = 1;
      
      private var dropMaxLevel:uint = 30;
      
      private var render:Object = {};
      
      private var §3%e§:Object = {};
      
      public var §<$4§:§5$n§;
      
      public var §^%1§:§5$n§;
      
      private var weapon:§,%r§;
      
      public var §7#U§:uint = 0;
      
      public var §#"8§:uint = 0;
      
      private var maxShots:§&$2§ = new §&$2§(0);
      
      public var shotsPerTurn:§&$2§ = new §&$2§(1);
      
      private var §`"H§:Boolean = false;
      
      public var firstShotDelay:int = -1;
      
      public var cooldown:int = -1;
      
      public var bossWeapon:Boolean = false;
      
      public var property:Object = {};
      
      private var temporal:Boolean = false;
      
      public function §;#_§()
      {
         super();
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         super.initFromConfig(param1);
         if(!§9#p§())
         {
            §9p§(§+Y§.value);
         }
         if(param1.titleIcon)
         {
            if(param1.titleIcon is String)
            {
               this.§`#I§([param1.titleIcon]);
            }
            else if(param1.titleIcon is Array)
            {
               this.§`#I§(param1.titleIcon);
            }
         }
         if(param1.refId)
         {
            this.refId = param1.refId;
         }
         if(param1.dropWeight)
         {
            this.dropWeight = param1.dropWeight;
         }
         if(param1.dropMinLevel)
         {
            this.dropMinLevel = param1.dropMinLevel;
         }
         if(param1.dropMaxLevel)
         {
            this.dropMaxLevel = param1.dropMaxLevel;
         }
         if(param1.dropQuantity)
         {
            this.dropQuantity = param1.dropQuantity;
         }
         if(param1.maxdamage)
         {
            this.§3%Z§ = §0$N§.§<N§(param1.maxdamage);
         }
         if(Boolean(param1.hint) || param1.hint == "")
         {
            this.hint = §0$N§.§<N§(param1.hint);
         }
         if(param1.bossWeapon)
         {
            this.bossWeapon = true;
         }
         var _loc2_:String = this.bossWeapon ? "ru.pragmatix.wormix.weapons.boss." : "ru.pragmatix.wormix.weapons.";
         if(param1.classname)
         {
            this.§=%i§ = getDefinitionByName(_loc2_ + param1.classname) as Class;
         }
         if(param1.render)
         {
            this.§!!k§(param1.render,param1.render.secondaryClip);
         }
         if(param1.shotPower)
         {
            if(param1.shotPower is Object)
            {
               if(param1.shotPower.min)
               {
                  this.§7#U§ = param1.shotPower.min;
               }
               if(param1.shotPower.max)
               {
                  this.§#"8§ = param1.shotPower.max;
               }
            }
            else
            {
               this.§7#U§ = this.§#"8§ = parseInt(param1.shotPower);
            }
         }
         if(param1.params)
         {
            if(!this.§<$4§)
            {
               this.§<$4§ = new §5$n§();
            }
            for(_loc3_ in param1.params)
            {
               this.§<$4§[_loc3_] = param1.params[_loc3_];
            }
         }
         if(param1.secondaryParams)
         {
            if(!this.§^%1§)
            {
               this.§^%1§ = new §5$n§();
            }
            for(_loc4_ in param1.secondaryParams)
            {
               this.§^%1§[_loc4_] = param1.secondaryParams[_loc4_];
            }
         }
         if(param1.infinite)
         {
            if(!(param1.infinite is Boolean))
            {
               this.maxShots.value = param1.infinite.maxShots;
            }
            this.dropQuantity = -1;
         }
         if(param1.maxShots)
         {
            this.maxShots.value = param1.maxShots;
         }
         if(param1.shotsPerTurn)
         {
            this.shotsPerTurn.value = param1.shotsPerTurn;
         }
         if(param1.isComplex)
         {
            this.§`"H§ = true;
         }
         if(param1.firstShotDelay)
         {
            this.firstShotDelay = param1.firstShotDelay;
         }
         if(param1.cooldown)
         {
            this.cooldown = param1.cooldown;
         }
         if(param1.property)
         {
            for(_loc5_ in param1.property)
            {
               this.property[_loc5_] = param1.property[_loc5_];
            }
         }
         if(param1.temporal)
         {
            this.temporal = param1.temporal;
         }
      }
      
      public function §`#I§(param1:Array) : void
      {
         this.titleIcon = param1;
      }
      
      public function §<"Y§() : Array
      {
         return this.titleIcon;
      }
      
      public function getRefId() : uint
      {
         return this.refId;
      }
      
      public function §!$R§() : uint
      {
         return this.dropWeight;
      }
      
      public function § n§() : uint
      {
         return this.dropMinLevel;
      }
      
      public function §1"K§() : uint
      {
         return this.dropMaxLevel;
      }
      
      public function §-$O§() : String
      {
         return this.§3%Z§;
      }
      
      public function §]"1§() : Object
      {
         return this.render;
      }
      
      public function §9%f§() : Object
      {
         return this.§3%e§;
      }
      
      public function §!!k§(param1:Object, param2:Object) : void
      {
         this.render = §,"J§.§0$ §(this.render,param1);
         this.§3%e§ = §,"J§.§0$ §(this.§3%e§,param2);
      }
      
      public function §&k§() : String
      {
         return this.hint;
      }
      
      public function getWeapon() : §,%r§
      {
         if(this.weapon == null)
         {
            this.§2X§();
         }
         return this.weapon;
      }
      
      public function §&%N§() : void
      {
         if(this.weapon)
         {
            this.weapon.reset();
            this.weapon = null;
         }
      }
      
      public function getDropQuantity() : int
      {
         return this.dropQuantity;
      }
      
      public function §]!C§() : uint
      {
         return this.maxShots ? uint(this.maxShots.value) : 0;
      }
      
      public function getMaxLevel() : uint
      {
         return this.§`"H§ ? uint(this.maxShots.value) : 1;
      }
      
      public function §[#F§() : Boolean
      {
         return this.refId > 0;
      }
      
      public function §-%g§() : Boolean
      {
         return this.temporal;
      }
      
      public function isComplex() : Boolean
      {
         return this.§`"H§;
      }
      
      private function §2X§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         this.weapon = §,%r§(new this.§=%i§());
         if(this.property)
         {
            this.weapon.§""2§(this.property);
         }
         this.weapon.recordId = new §&$2§(getId());
         this.weapon.§<$U§(this.hint);
         if(this.§<$4§)
         {
            this.weapon.§ #Z§(this.§<$4§);
         }
         if(this.§^%1§)
         {
            this.weapon.§2">§(this.§^%1§);
         }
         this.weapon.§#w§(this.§7#U§,this.§#"8§);
         this.weapon.clipClassName = getClipClassName();
         if(this.render.type == "clip")
         {
            _loc1_ = this.render.clipClass ? this.render.clipClass : null;
            _loc2_ = Boolean(this.§3%e§) && Boolean(this.§3%e§.clipClass) ? this.§3%e§.clipClass : null;
            _loc3_ = this.§3%e§ ? this.§3%e§.charParams : null;
            this.weapon.§8$#§(new §6&=§(this.weapon,_loc1_,this.render.charParams,_loc2_,_loc3_));
         }
         else if(this.render.type == "graphics")
         {
            this.weapon.§8$#§(new §6B§(this.render.action));
         }
         this.weapon.shots.value = this.shotsPerTurn.value;
         this.weapon.§2#v§();
      }
      
      public function clone() : §;#_§
      {
         var _loc1_:§;#_§ = new §;#_§();
         _loc1_.§-!W§(getId());
         _loc1_.§9p§(§9#p§());
         _loc1_.name = name;
         _loc1_.description = description;
         _loc1_.note = note;
         _loc1_.menuIcon = menuIcon;
         _loc1_.titleIcon = this.titleIcon;
         _loc1_.alignMenuIcon = alignMenuIcon;
         _loc1_.§3%Z§ = this.§3%Z§;
         _loc1_.hint = this.hint;
         _loc1_.§=%i§ = this.§=%i§;
         _loc1_.§8&;§(§%"]§().ingamePrice,§%"]§().realPrice);
         _loc1_.§?$+§ = §?$+§;
         _loc1_.setState(§##m§(),§,!H§());
         _loc1_.refId = this.refId;
         _loc1_.dropWeight = this.dropWeight;
         _loc1_.dropMinLevel = this.dropMinLevel;
         _loc1_.dropMaxLevel = this.dropMaxLevel;
         _loc1_.dropQuantity = this.dropQuantity;
         _loc1_.requiredFriends = requiredFriends;
         _loc1_.requiredLevel = requiredLevel;
         _loc1_.requiredScenario = requiredScenario;
         _loc1_.§7#U§ = this.§7#U§;
         _loc1_.§#"8§ = this.§#"8§;
         _loc1_.maxShots.value = this.maxShots.value;
         _loc1_.shotsPerTurn.value = this.shotsPerTurn.value;
         _loc1_.§<$4§ = this.§<$4§ ? this.§<$4§.clone() : null;
         _loc1_.§^%1§ = this.§^%1§ ? this.§^%1§.clone() : null;
         _loc1_.property = §,"J§.§##A§(this.property);
         _loc1_.firstShotDelay = this.firstShotDelay;
         _loc1_.cooldown = this.cooldown;
         _loc1_.hideInShop = hideInShop;
         _loc1_.clipClassName = clipClassName;
         _loc1_.§!!k§(§,"J§.§##A§(this.§]"1§()),§,"J§.§##A§(this.§9%f§()));
         _loc1_.infinite = infinite;
         _loc1_.bossWeapon = this.bossWeapon;
         _loc1_.temporal = this.temporal;
         return _loc1_;
      }
   }
}

