package §7$t§
{
   import § $q§.§-%f§;
   import §!$Z§.§7$2§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"Z§.§'$2§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §1#p§.§"Z§;
   import §2#8§.§2!?§;
   import §2#V§.§-#U§;
   import §5!9§.§6$,§;
   import §6"'§.§=$@§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §^$E§ extends §=?§
   {
      
      private var §=!I§:String;
      
      public var hideHair:Boolean;
      
      public var hideFeatures:Array;
      
      public var upFeatures:Array;
      
      private var §+P§:Number;
      
      private var §=!1§:int = 0;
      
      private var §8!;§:int = 0;
      
      private var §-$[§:int = 0;
      
      private var §4!<§:int = 0;
      
      private var §`$E§:int = 0;
      
      public function §^$E§()
      {
         super(§]$q§.HAT);
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         super.initFromConfig(param1);
         if(param1.charName)
         {
            this.§=!I§ = param1.charName;
         }
         if(param1.scale)
         {
            this.§+P§ = param1.scale;
         }
         if(param1.hideFeatures)
         {
            this.hideFeatures = param1.hideFeatures;
         }
         if(param1.upFeatures)
         {
            this.upFeatures = param1.upFeatures;
         }
         if(param1.hideHair)
         {
            this.hideHair = param1.hideHair;
         }
         if(param1.rotation)
         {
            this.§`$E§ = param1.rotation;
         }
         if(param1.width)
         {
            this.§-$[§ = param1.width;
         }
         if(param1.height)
         {
            this.§4!<§ = param1.height;
         }
         if(param1.x)
         {
            this.§=!1§ = param1.x;
         }
         if(param1.y)
         {
            this.§8!;§ = param1.y;
         }
      }
      
      override public function §%&9§(param1:Object) : void
      {
         var _loc2_:Object = null;
         super.§%&9§(param1);
         if(Boolean(param1) && Boolean(param1.charConfig))
         {
            _loc2_ = param1.charConfig[0];
            if(_loc2_.iconClassName)
            {
               §""y§(_loc2_.iconClassName);
            }
            if(_loc2_.charName)
            {
               this.§=!I§ = _loc2_.charName;
            }
            if(_loc2_.hideFeatures)
            {
               this.hideFeatures = _loc2_.hideFeatures;
            }
            if(_loc2_.upFeatures)
            {
               this.upFeatures = _loc2_.upFeatures;
            }
            if(_loc2_.hideHair)
            {
               this.hideHair = _loc2_.hideHair;
            }
            if(_loc2_.scale)
            {
               this.§+P§ = _loc2_.scale;
            }
            if(_loc2_.rotation)
            {
               this.§`$E§ = _loc2_.rotation;
            }
            if(_loc2_.width)
            {
               this.§-$[§ = _loc2_.width;
            }
            if(_loc2_.height)
            {
               this.§4!<§ = _loc2_.height;
            }
            if(_loc2_.x)
            {
               this.§=!1§ = _loc2_.x;
            }
            if(_loc2_.y)
            {
               this.§8!;§ = _loc2_.y;
            }
         }
      }
      
      public function getCharName() : String
      {
         return this.§=!I§;
      }
      
      public function §4"'§() : Number
      {
         return this.§+P§ ? this.§+P§ : 1;
      }
      
      public function get x() : int
      {
         return this.§=!1§;
      }
      
      public function get y() : int
      {
         return this.§8!;§;
      }
      
      public function get width() : int
      {
         return this.§-$[§;
      }
      
      public function get height() : int
      {
         return this.§4!<§;
      }
      
      public function get rotation() : int
      {
         return this.§`$E§;
      }
      
      public function §"%I§() : Boolean
      {
         return this.hideFeatures ? true : false;
      }
      
      public function §9"a§() : Array
      {
         return this.hideFeatures ? this.hideFeatures : [];
      }
      
      public function §>!b§() : Boolean
      {
         return this.upFeatures ? true : false;
      }
      
      public function §0";§() : Array
      {
         return this.upFeatures ? this.upFeatures : [];
      }
   }
}

