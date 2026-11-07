package §4!!§
{
   import § !P§.§]z§;
   import § #m§.§;#^§;
   import § &5§.§!$#§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§#N§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §8#<§.§!#^§;
   import §8#a§.§>!o§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §=&!§.§<$Z§;
   import §@!N§.§&#Z§;
   import §@!N§.§3!3§;
   import §@!i§.§<#&§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import config.achievements.§!$L§;
   import config.achievements.§"!&§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§5$t§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §76§ extends §'$V§
   {
      
      private static const §>"U§:Number = 16;
      
      protected var §!$&§:Number = 16;
      
      private var damage:uint = 0;
      
      public function §76§(param1:§+%]§, param2:int, param3:int, param4:§&"T§, param5:String, param6:int = -1, param7:uint = 0, param8:Function = null)
      {
         if(param6 == -1)
         {
            param6 = 20;
         }
         this.callback = param8;
         this.damage = param7;
         super(param1,param2,param3,true,param4,0,0,param6);
         this.§8&8§(§6#A§.§!&6§(param5));
         §3$1§ = true;
         homingFeat.§<&E§ = 1;
      }
      
      override protected function §0$J§(param1:uint, param2:uint) : void
      {
      }
      
      public function §8&8§(param1:MovieClip) : void
      {
         this.clip = param1;
         Application.scene.§=P§(layer).addChild(param1);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         this.§6"4§();
         if(!disposed)
         {
            this.§6$d§();
         }
      }
      
      private function §6"4§() : void
      {
         var _loc1_:Number = NaN;
         if(!disposed && !target.disposed)
         {
            _loc1_ = §-q§.distance(x,y,target.x,target.y);
            if(_loc1_ < this.§!$&§)
            {
               this.§;&;§();
               clear();
            }
         }
         else
         {
            clear();
         }
      }
      
      private function §6$d§() : void
      {
         var _loc1_:Number = §-q§.§%%>§(angle);
         clip.scaleY = Math.abs(_loc1_) > 90 ? -1 : 1;
         clip.rotation = _loc1_;
      }
      
      override protected function §;&;§() : void
      {
         super.§;&;§();
         if(this.damage > 0)
         {
            inflictDamage(target,this.damage,0,0,false);
         }
      }
   }
}

