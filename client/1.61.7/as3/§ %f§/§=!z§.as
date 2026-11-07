package § %f§
{
   import § !8§.§`!d§;
   import § #k§.*;
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&"c§.§5$n§;
   import §&&6§.§'%"§;
   import §'!Z§.§1"-§;
   import §+%Q§.§#%9§;
   import §-%B§.§-"o§;
   import §0%[§.§%"'§;
   import §0%[§.Cookie;
   import §0%j§.§0$+§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§6#I§;
   import §8#`§.§#%r§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §=1§.*;
   import §?#g§.*;
   import §@!i§.§5&4§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §`"p§.*;
   import §`%&§.§`§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §=!z§ extends §6#I§
   {
      
      protected var bounceCoeff:Number;
      
      protected var paramSet:§5$n§;
      
      protected var §=s§:int;
      
      protected var §2#J§:Array = [§`!v§.§1#[§];
      
      protected var §5L§:§=#?§ = §`!v§.§=!5§;
      
      protected var §=#Y§:Boolean;
      
      protected var trail:Sprite;
      
      protected var §^%$§:int = 5;
      
      protected var §;L§:int = 4;
      
      protected var §<!2§:uint = 8421504;
      
      protected var §;$A§:uint = 10526880;
      
      protected var §]$I§:§,$n§;
      
      public function §=!z§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:uint, param7:Number, param8:int = 0, param9:int = 300)
      {
         this.bounceCoeff = param7;
         this.§=s§ = param8;
         super(param1,param2,param3,false,param9);
         canBeDamaged = true;
         this.paramSet = param4;
         initialize(new Point(param2,param3),param4.ammoClassName);
         this.clip.rotation = 200;
         §^"F§(param5,param6);
         §`4§ = §5$=§;
         Application.scene.§@$I§.§1$+§(this);
         this.attachTrail();
      }
      
      public function attachTrail() : void
      {
         if(this.trail)
         {
            return;
         }
         if(!this.§=#Y§)
         {
            return;
         }
         if(!§8"%§.§&S§.§-p§())
         {
            return;
         }
         this.trail = §1"-§.attachTrail(this,this.§^%$§,this.§;L§,this.§<!2§,this.§;$A§,1);
      }
      
      public function §%& §() : void
      {
         if(Boolean(this.trail) && Boolean(this.trail.parent))
         {
            this.trail.parent.removeChild(this.trail);
         }
      }
      
      public function §6"9§() : void
      {
         this.§%& §();
         this.attachTrail();
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new § "H§(physParams,this.bounceCoeff,this.§=s§);
         physicModel.addEventListener(§9#1§.§@"-§,this.§^$e§);
         physicModel.addEventListener(§9#1§.§##n§,this.§>%?§);
      }
      
      protected function §>%?§(param1:Event) : void
      {
         if(this.§2#J§ != null && this.§2#J§.length > 0 && physicModel.movedOnLastFrame)
         {
            §@%;§.play(§`!v§.§=%2§(this.§2#J§));
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(physicModel.hasEventListener(§9#1§.§##n§))
         {
            physicModel.removeEventListener(§9#1§.§##n§,this.§>%?§);
         }
         if(physicModel.hasEventListener(§9#1§.§@"-§))
         {
            physicModel.removeEventListener(§9#1§.§@"-§,this.§^$e§);
         }
         if(this.trail)
         {
            this.trail = null;
         }
         super.§[$u§(param1);
      }
      
      protected function §^$e§(param1:Event) : void
      {
         physParams.removeAllForces();
         physParams.addForce(§]%G§.§5$r§);
         §`4§ = §+#G§;
         if(this.§5L§ != null)
         {
            §@%;§.play(this.§5L§);
         }
         physicModel.removeEventListener(§9#1§.§@"-§,this.§^$e§);
      }
      
      public function explode() : void
      {
      }
      
      public function set bounceSounds(param1:Array) : void
      {
         this.§2#J§ = param1;
      }
      
      public function set trailLength(param1:int) : void
      {
         this.§=#Y§ = true;
         this.§^%$§ = param1;
      }
      
      public function set trailWidth(param1:int) : void
      {
         this.§=#Y§ = true;
         this.§;L§ = param1;
      }
      
      public function set trailColor(param1:uint) : void
      {
         this.§=#Y§ = true;
         this.§<!2§ = param1;
      }
      
      public function set §?$z§(param1:uint) : void
      {
         this.§=#Y§ = true;
         this.§;$A§ = param1;
      }
   }
}

