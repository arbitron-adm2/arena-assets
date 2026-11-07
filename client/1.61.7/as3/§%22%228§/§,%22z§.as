package §""8§
{
   import §!L§.§+"'§;
   import §"$+§.*;
   import §##y§.CollisionEvent;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §<"L§.*;
   import §<$q§.*;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§,%§;
   import flash.display.Sprite;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.QuitClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterPaymentResult;
   
   public class §,"z§ extends §6#I§
   {
      
      protected var §=#Y§:Boolean = false;
      
      protected var trail:Sprite;
      
      protected var §^%$§:int = 5;
      
      protected var §;L§:int = 6;
      
      protected var §<!2§:uint = 8421504;
      
      protected var §;$A§:uint = 10526880;
      
      public function §,"z§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:int = -1)
      {
         super(param1,param1.x,param1.y,false,param5);
         canBeDamaged = true;
         initialize(§"$C§(param3,0),param2.ammoClassName);
         §^"F§(param3,param4);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §5$=§;
         Application.scene.§@$I§.§1$+§(this);
         this.attachTrail();
      }
      
      public function attachTrail() : void
      {
         if(§8"%§.§&S§.§-p§())
         {
         }
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         x = param1.point.x;
         y = param1.point.y;
         physicModel.stop();
         setSpeedXY(0,0);
         stable = true;
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new §7%[§(physParams);
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

