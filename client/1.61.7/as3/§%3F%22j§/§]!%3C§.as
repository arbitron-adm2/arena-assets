package §?"j§
{
   import §##j§.§0m§;
   import §##j§.§7,§;
   import §##y§.§9§;
   import §%$!§.§@!o§;
   import §+$=§.§6#A§;
   import §1#p§.*;
   import §7$t§.§??§;
   import §9![§.§^§;
   import §?#g§.§"&>§;
   import config.§28§;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §]!<§ extends §??§
   {
      
      public var configName:String = "";
      
      public var racePrefix:String = "";
      
      public var raceId:String = "";
      
      public var staticClip:String = "";
      
      public var stayClip:String = "";
      
      public var goClip:String = "";
      
      public var prepareToJumpClip:String = "";
      
      public var endJumpClip:String = "";
      
      public var jumpClip:String = "";
      
      public var jumpBackClip:String = "";
      
      public var jetpack:String = "";
      
      public var jetpackStay:String = "";
      
      public var breathClip:String = "";
      
      public var clapClip:String = "";
      
      public var sadClip:String = "";
      
      public var damaged:String = "";
      
      public var roar:String = "";
      
      public var happy:String = "";
      
      public var pieceClip:String = "";
      
      public var hammer:String = "";
      
      public var bat:String = "";
      
      public var rope:String = "";
      
      public var stateActions:Array = [];
      
      public var stateActionsInHat:Array = [];
      
      public var hatClip:String = "";
      
      public var eyesClip:String = "";
      
      public var leftHand:String = "";
      
      public var rightHand:String = "";
      
      public var shocker:String = "";
      
      public var defrost:String = "";
      
      public var antifrost:String = "";
      
      public var defrostAttack:String = "";
      
      public var defrostArmory:String = "";
      
      public var bannerAura:String = "";
      
      public var darkAura:String = "";
      
      public var featureClips:Array = [];
      
      public var modify:Vector.<§"&>§> = new Vector.<§"&>§>(0);
      
      public function §]!<§()
      {
         super();
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         var _loc2_:Object = null;
         super.initFromConfig(param1);
         §-!W§(param1.raceId);
         this.raceId = param1.raceId;
         this.racePrefix = param1.racePrefix;
         this.configName = param1.configName;
         name = §0$N§.§<N§(param1.name);
         requiredLevel = param1.requiredLevel;
         this.§#$r§(§28§.§#%5§);
         if(param1.rewriteCommonClips)
         {
            this.§#$r§(param1.rewriteCommonClips);
         }
         this.featureClips = param1.featureClips;
         if(param1.modify)
         {
            for each(_loc2_ in param1.modify)
            {
               this.modify.push(new §"&>§(_loc2_));
            }
         }
      }
      
      public function §#$r§(param1:Object) : void
      {
         var _loc2_:String = null;
         if(param1.staticClip)
         {
            this.staticClip = this.racePrefix + param1.staticClip;
         }
         if(param1.stayClip)
         {
            this.stayClip = this.racePrefix + param1.stayClip;
         }
         if(param1.goClip)
         {
            this.goClip = this.racePrefix + param1.goClip;
         }
         if(param1.prepareToJumpClip)
         {
            this.prepareToJumpClip = this.racePrefix + param1.prepareToJumpClip;
         }
         if(param1.endJumpClip)
         {
            this.endJumpClip = this.racePrefix + param1.endJumpClip;
         }
         if(param1.jumpClip)
         {
            this.jumpClip = this.racePrefix + param1.jumpClip;
         }
         if(param1.jumpBackClip)
         {
            this.jumpBackClip = this.racePrefix + param1.jumpBackClip;
         }
         if(param1.jetpack)
         {
            this.jetpack = this.racePrefix + param1.jetpack;
         }
         if(param1.jetpackStay)
         {
            this.jetpackStay = this.racePrefix + param1.jetpackStay;
         }
         if(param1.breathClip)
         {
            this.breathClip = this.racePrefix + param1.breathClip;
         }
         if(param1.clapClip)
         {
            this.clapClip = this.racePrefix + param1.clapClip;
         }
         if(param1.sadClip)
         {
            this.sadClip = this.racePrefix + param1.sadClip;
         }
         if(param1.damaged)
         {
            this.damaged = this.racePrefix + param1.damaged;
         }
         if(param1.roar)
         {
            this.roar = this.racePrefix + param1.roar;
         }
         if(param1.happy)
         {
            this.happy = this.racePrefix + param1.happy;
         }
         if(param1.pieceClip)
         {
            this.pieceClip = this.racePrefix + param1.pieceClip;
         }
         if(param1.hammer)
         {
            this.hammer = this.racePrefix + param1.hammer;
         }
         if(param1.rope)
         {
            this.rope = this.racePrefix + param1.rope;
         }
         if(param1.bat)
         {
            this.bat = this.racePrefix + param1.bat;
         }
         if(param1.stateActions)
         {
            for each(_loc2_ in param1.stateActions)
            {
               this.stateActions.push(this.racePrefix + _loc2_);
            }
         }
         if(param1.stateActionsInHat)
         {
            for each(_loc2_ in param1.stateActionsInHat)
            {
               this.stateActionsInHat.push(this.racePrefix + _loc2_);
            }
         }
         if(param1.hatClip)
         {
            this.hatClip = param1.hatClip;
         }
         if(param1.eyesClip)
         {
            this.eyesClip = param1.eyesClip;
         }
         if(param1.leftHand)
         {
            this.leftHand = param1.leftHand;
         }
         if(param1.rightHand)
         {
            this.rightHand = param1.rightHand;
         }
         if(param1.shocker)
         {
            this.shocker = param1.shocker;
         }
         if(param1.defrost)
         {
            this.defrost = param1.defrost;
         }
         if(param1.antifrost)
         {
            this.antifrost = param1.antifrost;
         }
         if(param1.defrostAttack)
         {
            this.defrostAttack = param1.defrostAttack;
         }
         if(param1.defrostArmory)
         {
            this.defrostArmory = param1.defrostArmory;
         }
         if(param1.bannerAura)
         {
            this.bannerAura = param1.bannerAura;
         }
         if(param1.darkAura)
         {
            this.darkAura = param1.darkAura;
         }
      }
      
      public function §5Y§() : Vector.<String>
      {
         var _loc2_:String = null;
         var _loc1_:Vector.<String> = new <String>[this.staticClip,this.stayClip,this.goClip,this.prepareToJumpClip,this.jumpClip,this.endJumpClip,this.jumpBackClip,this.breathClip,this.clapClip,this.jetpack,this.jetpackStay,this.hammer,this.bat,this.rope,this.sadClip,this.happy,this.damaged,this.roar,this.pieceClip];
         for each(_loc2_ in this.stateActions)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
   }
}

