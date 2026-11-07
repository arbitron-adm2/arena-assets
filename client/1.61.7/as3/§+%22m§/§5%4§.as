package §+"m§
{
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#5§.*;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%# §.§@a§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%!§.§;%q§;
   import §+$=§.*;
   import §+%S§.§[0§;
   import §,#_§.FrameTimer;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §1&-§.§ &=§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#H§.§!%C§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §2B§.§8"n§;
   import §3#a§.§-#M§;
   import §4!!§.*;
   import §4f§.§-&§;
   import §5"J§.*;
   import §5#`§.§7%g§;
   import §6"'§.§&"3§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7!B§.§`"d§;
   import §7"Q§.§0$L§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §<!^§.§9"A§;
   import §<$2§.§<%>§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §?!E§.*;
   import §?$K§.§=z§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@$§.§6$[§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§<"e§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §5%4§ extends §&"T§
   {
      
      private static const §"# §:String = "FireworkBarrelBox";
      
      private static const §>$n§:int = 6;
      
      private static const §!H§:uint = 6;
      
      private static const §0$V§:uint = 20;
      
      private static const §@!q§:uint = 40;
      
      private var owner:§+%]§;
      
      private var paramSet:§5$n§;
      
      private var §,%m§:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      private var §`m§:§7#P§;
      
      public function §5%4§(param1:§+%]§, param2:§5$n§)
      {
         super();
         stable = false;
         physicModel.keepUnstable = true;
         x = param1.x;
         y = param1.y + §>$n§;
         this.owner = param1;
         this.paramSet = param2;
         clip = §6#A§.§!&6§(§"# §);
         var _loc3_:int = 0;
         while(_loc3_ < §!H§)
         {
            this.§,%m§.push(this.§4#u§(x,y));
            _loc3_++;
         }
         this.§`m§ = §@%;§.play(§`!v§.§^K§,true);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         this.§5L§();
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(frames % §0$V§ == 0)
         {
            if(this.§,%m§.length > 0)
            {
               this.§5L§();
               this.§,%m§.shift().disposed = true;
               this.§6#e§();
            }
            else
            {
               disposed = true;
            }
         }
      }
      
      private function §4#u§(param1:int, param2:int) : §&"T§
      {
         var _loc3_:int = 0;
         var _loc4_:§&"T§ = null;
         _loc3_ = -90 + §8"%§.randomSeed.§,!q§(-30,30);
         _loc4_ = new §&"T§();
         _loc4_.clip = §6#A§.§!&6§(this.paramSet.ammoClassName);
         _loc4_.x = param1;
         _loc4_.y = param2 + §>$n§;
         _loc4_.clip.rotation = _loc3_;
         Application.scene.§@$I§.§1$+§(_loc4_);
         _loc4_.clip.gotoAndStop(0);
         _loc4_.clip["plume"].visible = false;
         return _loc4_;
      }
      
      private function §6#e§() : void
      {
         var _loc1_:Number = NaN;
         _loc1_ = -Math.PI / 2 + §8"%§.randomSeed.§,!q§(-7,7) * Math.PI / 90;
         var _loc2_:§9"A§ = new §9"A§(this.owner,x,y + §>$n§,_loc1_,§@!q§,this.paramSet,0,1,false);
         _loc2_.§0!F§(this.§^#d§());
         _loc2_.§?&H§(30);
         _loc2_.§^$V§(1 * Math.PI / 180);
         _loc2_.§&c§(25);
         _loc2_.§#%O§ = false;
         §@%;§.play(§`!v§.§'$f§);
      }
      
      private function §^#d§() : §+%]§
      {
         var _loc3_:§+%]§ = null;
         var _loc1_:Array = [];
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(this.owner);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc3_.disposed && _loc3_ != this.owner)
            {
               _loc1_.push(_loc3_);
            }
         }
         if(_loc1_.length > 0)
         {
            _loc3_ = _loc1_[§8"%§.randomSeed.§,!q§(0,_loc1_.length - 1)];
         }
         else
         {
            _loc3_ = this.owner;
         }
         return _loc3_;
      }
      
      private function §5L§() : void
      {
         if(this.§`m§ != null)
         {
            this.§`m§.stop();
            this.§`m§ = null;
         }
      }
   }
}

