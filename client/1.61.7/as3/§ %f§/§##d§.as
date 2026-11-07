package § %f§
{
   import § !8§.§`!d§;
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §#5§.§!&"§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+%S§.§?3§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §3"@§.§##L§;
   import §4'§.§#"l§;
   import §5#`§.§7%g§;
   import §6_§.*;
   import §7!B§.§1"?§;
   import §7$1§.§;$n§;
   import §7$t§.§2"y§;
   import §8$V§.TeamController;
   import §9"-§.§?!s§;
   import §<%k§.§`!v§;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §?#g§.Race;
   import §@!i§.§!m§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.TweenLite;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §##d§ extends §=!z§
   {
      
      private static const §-!B§:uint = 2;
      
      private var §#$0§:Boolean;
      
      private var §<&B§:Boolean;
      
      private var §'$X§:Boolean;
      
      public function §##d§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param1.x,param1.y,param2,param3,param4,0.3,180);
         §@%;§.play(§`!v§.§"!T§);
         §2#J§ = [§`!v§.VINTAGE_CANNONBALL_HIT_01,§`!v§.VINTAGE_CANNONBALL_HIT_02,§`!v§.VINTAGE_CANNONBALL_HIT_03];
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         super.§^$e§(param1);
         this.explode();
      }
      
      override public function explode() : void
      {
         if(disposed)
         {
            return;
         }
         inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
         §1"-§.§&!C§(x,y,30);
         §1"-§.explode(§;n§.§@%d§,x,y,paramSet.damageRadius.value,§`!v§.§4&3§);
         §'!j§.go(paramSet.damage.value);
         if(this.§#$0§)
         {
            §7%g§.§,O§(x,y,paramSet.damageRadius.value,§-!B§);
         }
         disposed = true;
      }
      
      override protected function §>%?§(param1:Event) : void
      {
         if(!this.§'$X§)
         {
            super.§>%?§(param1);
            return;
         }
         physicModel.removeEventListener(§9#1§.§##n§,this.§>%?§);
         §8$a§.§%!E§(34,this.explode);
         §!%8§.gotoAndPlay(0);
         if(!this.§<&B§)
         {
            §@%;§.play(§`!v§.§-$z§);
            this.§<&B§ = true;
         }
         physParams.removeAllForces();
         physicModel.setSpeedXY(0,0);
         stable = false;
      }
      
      public function §9#-§() : void
      {
         this.§#$0§ = true;
      }
      
      public function §0#d§() : void
      {
         this.§'$X§ = true;
      }
   }
}

