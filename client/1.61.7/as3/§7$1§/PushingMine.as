package §7$1§
{
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§=$2§;
   import §+&<§.*;
   import §-!U§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §3#T§.§;#Q§;
   import §3#a§.§-#M§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§7o§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$K§.§=z§;
   import §@!N§.§""L§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^-§.Rope;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.Grenade;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class PushingMine extends §;$n§
   {
      
      private static const §+"n§:Array = [Rope,StickyMine,§1&0§,§;#Q§,§[$ §];
      
      private static const §^#g§:uint = 100;
      
      private static const §#!=§:Number = -Math.PI / 2;
      
      private static const §!#s§:Number = Math.PI / 6;
      
      private var target:§+%]§;
      
      private var dummy:§&"T§;
      
      private var lifetime:int;
      
      private var pushPower:int;
      
      private var §!&%§:Boolean = false;
      
      private var §0%X§:Dictionary;
      
      public function PushingMine(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:§+%]§, param6:int, param7:int)
      {
         var owner:§+%]§ = param1;
         var x:int = param2;
         var y:int = param3;
         var paramSet:§5$n§ = param4;
         var target:§+%]§ = param5;
         var timer:int = param6;
         var pushPower:int = param7;
         this.§0%X§ = new Dictionary();
         super(owner,x,y,paramSet,true);
         §=$`§.value = paramSet.explosionRadius.value;
         this.dummy = Application.scene.§,$z§();
         this.pushPower = pushPower;
         this.lifetime = timer;
         if(target)
         {
            this.place(new Point(target.x,target.y));
         }
         else
         {
            physicModel.keepUnstable = false;
            this.§!&%§ = true;
            §8$a§.§&!#§(physicModel,§9#1§.STABLE,function():void
            {
               clip.rotation = 0;
            });
         }
      }
      
      private function place(param1:Point) : void
      {
         this.y = param1.y + §<H§.§-#C§;
         this.x = param1.x;
         stable = true;
         clip.rotation = 0;
      }
      
      private function search(param1:int) : Vector.<§+%]§>
      {
         var _loc5_:§+%]§ = null;
         var _loc6_:Vector.<§&"T§> = null;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         var _loc3_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         var _loc4_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         for each(_loc5_ in _loc4_)
         {
            if(!_loc5_.buffs.hasBuff(§=z§.NAME))
            {
               _loc3_.push(_loc5_);
            }
         }
         _loc6_ = §<H§.§9#!§(x,y,param1,§#!=§,§!#s§,_loc3_);
         for each(_loc5_ in _loc6_)
         {
            if(!§>#9§.§3%2§(x,y,§#!=§,Math.abs(y - _loc5_.y)) && this.target != _loc5_)
            {
               _loc2_.push(_loc5_);
            }
         }
         return _loc2_;
      }
      
      override protected function §^#d§() : §+%]§
      {
         var _loc1_:Vector.<§+%]§> = this.search(§^#g§);
         if(_loc1_.length > 0)
         {
            this.target = _loc1_[0];
         }
         return this.target;
      }
      
      override protected function tick() : void
      {
         if(frames >= this.lifetime)
         {
            this.explode();
         }
         else if(frames % Grenade.§`&#§.value == 0)
         {
            §`!v§.§[!o§(§`!v§.§^%§);
         }
         if(this.§!&%§ && stable && Boolean(this.§^#d§()))
         {
            this.explode();
         }
      }
      
      override public function explode() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:§+%]§ = null;
         var _loc5_:uint = 0;
         var _loc6_:Vector.<§&"T§> = null;
         var _loc7_:§&"T§ = null;
         var _loc1_:Vector.<§+%]§> = this.search(§<H§.§,%P§);
         if(Boolean(this.target) && !this.target.disposed)
         {
            _loc1_.push(this.target);
         }
         _loc2_ = §="j§(owner);
         _loc3_ = (this.pushPower + _loc2_) * -1;
         for each(_loc4_ in _loc1_)
         {
            if(_loc4_ == this.target)
            {
               _loc4_.x = x;
            }
            §'"$§.§<#j§(_loc4_,0,_loc3_,true);
            _loc4_.graphics.damaged();
         }
         _loc5_ = §<H§.§-#C§;
         _loc6_ = §<H§.§%$Q§(x - _loc5_,y - _loc5_,x + _loc5_,y + _loc5_,Application.scene.§@$I§.§;%a§.§"L§([§6#I§]));
         for each(_loc7_ in _loc6_)
         {
            if(!§""L§.§'!8§(_loc7_,§+"n§))
            {
               _loc7_.setSpeedXY(0,_loc3_);
            }
         }
         §1"-§.explode(§;n§.§7q§,x,y,§=$`§.value,§`!v§.§?"x§);
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(this.dummy)
         {
            this.dummy.disposed = true;
         }
      }
   }
}

