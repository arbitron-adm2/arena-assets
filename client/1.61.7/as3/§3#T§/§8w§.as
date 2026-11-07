package §3#T§
{
   import § $q§.SelectMapMenu;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"%H§.§1! §;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%!§.§@!Z§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#x§.*;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §8$V§.*;
   import §9%W§.§!"G§;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §8w§ extends §6#I§
   {
      
      private static const §##@§:§&$2§ = new §&$2§(4);
      
      private var §5&1§:uint = §##@§.value + 1;
      
      private var paramSet:§5$n§;
      
      private var damage:uint;
      
      private var §2%u§:uint;
      
      public function §8w§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:int)
      {
         super(param1,param1.x,param1.y);
         §,%S§ = true;
         §6""§ = true;
         this.paramSet = param2;
         §-"e§ = false;
         this.damage = param2.damage.value;
         this.§2%u§ = param5 / §##@§.value;
         initialize(§"$C§(param3,0),param2.ammoClassName);
         this.clip.rotation = param3 * 180 / Math.PI;
         §^"F§(param3,param4);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         §@%;§.play(§`!v§.§3"Q§);
         §1"-§.attachTrail(this,7,6,14606046,16777215,1);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:Number = NaN;
         if(param1.other != null || --this.§5&1§ <= 0)
         {
            this.explode(param1.other);
         }
         else
         {
            this.damage += this.§2%u§;
            _loc2_ = §<H§.§3"j§(x,y) * 2 - angle;
            x = param1.point.x;
            y = param1.point.y;
            §^"F§(_loc2_,-speed);
            physicModel.stop();
            §@%;§.play(§`!v§.§;!?§);
         }
      }
      
      private function explode(param1:§&"T§) : void
      {
         inflictDamage(param1,this.damage,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
         disposed = true;
         §1"-§.§&!C§(x,y,16);
         §1"-§.explode(§;n§.MEDIUM,x,y,this.paramSet.damageRadius.value,§`!v§.§4"t§);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         super.§[$u§(param1);
      }
   }
}

