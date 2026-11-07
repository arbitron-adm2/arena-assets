package §7$1§
{
   import §"%H§.§'%u§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#V§.§-#U§;
   import §3#T§.§5!M§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §1&0§ extends §=!?§
   {
      
      private static const §^;§:int = 0;
      
      private static const §5%f§:int = 33;
      
      private var §1!-§:Boolean = false;
      
      private var §'%k§:Point;
      
      private var dummy:§&"T§;
      
      private var checked:Boolean;
      
      public function §1&0§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Boolean = true)
      {
         super(param1,param2,param3,param4,param5);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         addEventListener(§0%v§.MINE_SET_UP,this.§8!Z§);
         §%%7§ = §^;§;
         §!"%§ = §5%f§;
         this.dummy = Application.scene.§,$z§();
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(§<#g§ || this.§1!-§)
         {
            if(!this.§'%k§ && physParams.§7!3§ && §>#9§.§+%Y§(x,y,10))
            {
               this.§'%k§ = new Point(x,y);
               physParams.removeAllForces();
            }
            else
            {
               if(!physParams.hasForce(§]%G§.§="u§))
               {
                  physParams.addForce(§]%G§.§5$r§);
               }
               this.§'%k§ = null;
            }
         }
         if(this.§'%k§)
         {
            stable = true;
            setSpeedXY(0,0);
            x = this.§'%k§.x;
            y = this.§'%k§.y;
         }
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         if(!§<#g§)
         {
            setSpeedXY(0,0);
            §@%;§.play(§`!v§.§-$z§);
            if(!this.§1!-§)
            {
               this.§1!-§ = true;
               §#g§ = true;
               this.§@$!§();
            }
            if(§"%K§)
            {
               stable = true;
            }
            else
            {
               physParams.removeAllForces();
               physicModel.stop();
            }
         }
      }
      
      protected function §8!Z§(param1:MineSetUpEvent) : void
      {
         if(this.§1!-§ && !param1.triggered)
         {
            physParams.removeAllForces();
            physParams.addForce(§]%G§.§5$r§);
            setSpeedXY(0,0);
            stable = true;
         }
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new §7%[§(physParams);
      }
      
      override protected function §@$!§() : void
      {
         super.§@$!§();
         if(Boolean(§"%K§) && Boolean(this.dummy) && !this.checked)
         {
            this.checked = true;
            §8$a§.§%!E§(1,function():void
            {
               dummy.disposed = true;
               dummy = null;
            });
         }
      }
      
      override protected function §#%h§() : void
      {
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         removeEventListener(§0%v§.MINE_SET_UP,this.§8!Z§);
         if(this.dummy)
         {
            this.dummy.disposed = true;
            this.dummy = null;
         }
      }
   }
}

