package §3#T§
{
   import §##y§.CollisionEvent;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&#h§.§5f§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§#$D§;
   import §0!§.§6#z§;
   import §0%[§.§""n§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2!-§.SupplyPickedUpEvent;
   import §2"L§.§^$y§;
   import §2#W§.PvpChestBox;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §4#2§.§,%g§;
   import §4f§.§-&§;
   import §5"J§.*;
   import §6"'§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§ "N§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[%§.*;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.objects.mutators.§'"<§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §+&F§ extends §6#I§ implements §2%F§
   {
      
      private static var §<%V§:uint = 0;
      
      private static var §-!j§:Array = [];
      
      private static const §=%J§:Class = §6#A§.getClass("Fire");
      
      private static const §5!n§:uint = 10;
      
      private static const §5#0§:uint = 40;
      
      private static const §]%#§:int = 600;
      
      private static const DAMAGE:uint = 8;
      
      private static const §<$C§:uint = 20;
      
      private static const §#%d§:uint = 5;
      
      private static const §"J§:Array = [];
      
      private static const §#Y§:Array = [];
      
      private var §4"q§:int = -1;
      
      private var duration:uint;
      
      private var §5%F§:uint = 10;
      
      private var r:Number;
      
      private var g:Number;
      
      private var b:Number;
      
      public function §+&F§(param1:§+%]§, param2:Number, param3:uint, param4:int, param5:int, param6:uint = 90, param7:Boolean = false)
      {
         var _loc8_:MovieClip = null;
         var _loc9_:Number = NaN;
         super(param1,param4,param5,false,§]%#§,§&!E§.FIRE);
         if(!§#Y§.length)
         {
            _loc9_ = -1.6;
            while(_loc9_ < 1.7)
            {
               §#Y§.push(_loc9_);
               _loc9_ += 0.4;
            }
            _loc9_ = 0.5;
            while(_loc9_ < 1.8)
            {
               §"J§.push(_loc9_);
               _loc9_ += 0.3;
            }
         }
         this.duration = param6;
         _loc8_ = new §=%J§();
         this.clip = _loc8_;
         this.x = param4;
         this.y = param5;
         _loc8_.gotoAndPlay(Math.floor(Math.random() * _loc8_.totalFrames));
         §-"e§ = false;
         §3$1§ = false;
         this.r = Math.random() * 80 + 40;
         this.g = Math.random() * 60 + 40;
         this.b = 0;
         this.clip.scaleX = this.clip.scaleY = 0.5;
         this.clip.transform.colorTransform = new ColorTransform(1,1,1,1,this.r,this.g,this.b);
         §^"F§(param2,param3);
         physParams.§5N§ = §9%1§.§&!A§;
         addEventListener(§0%v§.§+&=§,this.onCollide);
         if(param7)
         {
            §`4§ = §5$=§;
         }
         Application.scene.§@$I§.§1$+§(this);
         §7T§();
      }
      
      private static function §7T§() : void
      {
         if(§<%V§ % 15 == 0)
         {
            §-!j§.push(§@%;§.play(§`!v§.§`@§,true));
         }
         ++§<%V§;
      }
      
      private static function §7#X§() : void
      {
         --§<%V§;
         if(§<%V§ % 15 == 0)
         {
            §7#P§(§-!j§.shift()).stop();
         }
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         if(this.§4"q§ < 0)
         {
            §`4§ = §+#G§;
            clip.rotation = 0;
            this.§4"q§ = frames;
         }
         x = param1.point.x;
         y = param1.point.y;
         physicModel.stop();
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         physParams.§3&I§ = true;
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(this.§4"q§ >= 0)
         {
            this.§-%F§();
         }
      }
      
      private function §-%F§() : void
      {
         this.r += 1.8;
         this.g += 1.4;
         this.b -= 0.5;
         var _loc1_:int = frames - this.§4"q§;
         if(_loc1_ % this.§5%F§ == 0)
         {
            this.§0q§();
            this.§<#y§();
         }
         if((_loc1_ + 1) % §5#0§ == 0)
         {
            this.§"!'§();
         }
         if(_loc1_ == this.duration)
         {
            disposed = true;
         }
      }
      
      private function §0q§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §<H§.§5"]§(x,y,§<$C§);
         for each(_loc2_ in _loc1_)
         {
            if(!_loc2_.buffs.hasBuff(§#$D§.NAME))
            {
               _loc2_.buffs.place(new §#$D§(this.§5%F§));
               _loc2_.setSpeedXY(_loc2_.speedX,0);
               inflictDamage(_loc2_,DAMAGE,0,0);
            }
         }
      }
      
      private function §<#y§() : void
      {
         var _loc1_:§#p§ = null;
         var _loc2_:Vector.<§&"T§> = null;
         var _loc3_:Vector.<§&"T§> = null;
         var _loc5_:§&"T§ = null;
         _loc1_ = Application.scene.§@$I§.§;%a§;
         _loc2_ = _loc1_.§'#&§(§<#`§.§^&0§);
         _loc3_ = _loc2_.concat(_loc1_.§'#&§(§<#`§.§&!c§));
         var _loc4_:Vector.<§&"T§> = §<H§.§3%'§(x,y,§<$C§,_loc3_);
         for each(_loc5_ in _loc4_)
         {
            inflictDamage(_loc5_,DAMAGE,0,0);
         }
      }
      
      private function §"!'§() : void
      {
         inflictDamage(null,0,0,§#%d§);
         if(§8"%§.§&S§.§41§() && §8"%§.§&S§.§3%W§)
         {
            §1"-§.explode(§;n§.§7q§,this.x,this.y - §<$C§ - Math.floor(Math.random() * §<$C§),§#%d§);
         }
         var _loc1_:Number = Number(§#Y§[int(§8"%§.randomSeed.§,!q§(0,§#Y§.length - 1))]);
         var _loc2_:Number = Number(§"J§[int(§8"%§.randomSeed.§,!q§(0,§"J§.length - 1))]);
         setSpeedXY(_loc1_,_loc2_);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         §7#X§();
         §1"-§.explode(§;n§.§7q§,this.x,this.y - Math.floor(Math.random() * 10),10);
         super.§[$u§(param1);
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         disposed = true;
      }
      
      public function §9$r§() : int
      {
         return §<$C§ + 5;
      }
   }
}

