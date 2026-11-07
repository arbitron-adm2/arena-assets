package § !8§
{
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#%!§.§ §;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §&!?§.§"_§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0!§.§9"u§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1&-§.§-#B§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§??§;
   import §9%W§.§&!P§;
   import §<!^§.MeteorShard;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §?#g§.*;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §@c§.*;
   import §^"y§.§[$>§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.*;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §`!d§ extends §??§ implements §[$>§
   {
      
      public var fraction:int = 0;
      
      public var bonus:Array = [];
      
      private var titleIcon:Array;
      
      private var abilities:Vector.<§-!k§>;
      
      public var configName:String = "";
      
      private var className:Class;
      
      public var graveType:String = "";
      
      public var soulType:String = "";
      
      private var §8<§:§]$q§ = new §]$q§(§]$q§.RACE);
      
      public var playable:Boolean;
      
      public function §`!d§()
      {
         super();
      }
      
      public function toString() : String
      {
         return "RaceRecord{" + "id=" + getId() + ",name=" + §7%z§() + ",level=" + §,X§() + "}";
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         var _loc2_:§-!k§ = null;
         super.initFromConfig(param1);
         §-!W§(param1.id);
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
         name = §0$N§.§<N§(param1.name);
         description = §0$N§.§<N§(param1.descr);
         requiredLevel = param1.requiredLevel;
         this.configName = param1.configName;
         this.fraction = param1.fraction;
         hideInShop = param1.hideInShop;
         this.graveType = param1.graveType;
         this.soulType = param1.soulType;
         this.className = param1.className;
         this.§#"4§(param1.bonus);
         this.abilities = param1.abilities;
         for each(_loc2_ in this.abilities)
         {
            _loc2_.§6%]§(param1.bonus);
         }
         this.playable = param1.playable;
         if(param1.shopState)
         {
            setState(param1.shopState);
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
      
      public function getClass() : Class
      {
         return this.className;
      }
      
      public function getBonusList(param1:Boolean = false) : §]$q§
      {
         return this.§8<§;
      }
      
      public function §+%t§() : Vector.<§-!k§>
      {
         return this.abilities;
      }
      
      public function §#"4§(param1:Object) : void
      {
         §#&>§.§%%Q§(this.§8<§,param1);
      }
      
      public function §%§(param1:String) : §-!k§
      {
         var _loc2_:§-!k§ = null;
         for each(_loc2_ in this.abilities)
         {
            if(_loc2_.§0J§() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}

