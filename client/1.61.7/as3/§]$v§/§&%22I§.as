package §]$v§
{
   import §!$D§.§2$^§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §3"@§.§##L§;
   import §4'§.§#"l§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §;$8§.§6"E§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §&"I§ extends §6#I§
   {
      
      private static const §7!§:uint = 60;
      
      private static const §;"F§:uint = 35;
      
      protected var paramSet:§5$n§;
      
      public function §&"I§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param1.x,param1.y,false);
         this.paramSet = param2;
         §,%S§ = true;
         §6""§ = true;
         §@%;§.play(§`!v§.§["p§);
         initialize(§"$C§(param3,0),param2.ammoClassName);
         this.clip.rotation = param3 * 180 / Math.PI;
         physParams.addForce(§]%G§.§-4§);
         §^"F§(param3,param4);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         §1"-§.§;%k§(this,§;n§.§7q§,8,1);
         Application.scene.§@$I§.§1$+§(this);
         §@%;§.play(§`!v§.§["p§);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         var _loc1_:Vector.<§+%]§> = this.§^#d§();
         if(_loc1_.length > 0)
         {
            this.explode(null,_loc1_);
            disposed = true;
         }
      }
      
      private function §^#d§() : Vector.<§+%]§>
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:Point = null;
         var _loc1_:Vector.<§+%]§> = §<H§.§5"]§(x,y,§7!§,§8"%§.§?!W§.§4"m§.§6"M§(owner));
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>();
         for each(_loc3_ in _loc1_)
         {
            _loc4_ = §>#9§.§3%2§(x,y,§-q§.§'x§(x,y,_loc3_.x,_loc3_.y),§-q§.distance(x,y,_loc3_.x,_loc3_.y));
            if(!_loc4_)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      private function §>&H§(param1:Vector.<§+%]§>, param2:Boolean = true) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:Number = NaN;
         for each(_loc3_ in param1)
         {
            if(param2)
            {
               §'"$§.inflictDamage(this,_loc3_,this.paramSet.damage.value,0,0);
            }
            _loc4_ = §-q§.§'x§(x,y,_loc3_.x,_loc3_.y);
            _loc3_.setSpeedXY(0,0);
            _loc3_.§^"F§(_loc4_,-§;"F§);
         }
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         if(!disposed)
         {
            this.explode(param1.other);
            disposed = true;
         }
      }
      
      protected function explode(param1:§&"T§ = null, param2:Vector.<§+%]§> = null) : void
      {
         var _loc3_:Vector.<§+%]§> = null;
         §1"-§.explode(§;n§.§8!-§,x,y,this.paramSet.damageRadius.value,§`!v§.§4"t§);
         if(param2)
         {
            this.§>&H§(param2);
         }
         else
         {
            §1"-§.§&!C§(x,y,16);
            inflictDamage(param1,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
            _loc3_ = this.§^#d§();
            this.§>&H§(_loc3_);
         }
      }
   }
}

