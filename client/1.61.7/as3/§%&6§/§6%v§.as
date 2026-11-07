package §%&6§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#",§.*;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§##B§;
   import §+%S§.§>!`§;
   import §,$J§.§,$O§;
   import §-@§.*;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2B§.§#&E§;
   import §3#T§.§+&F§;
   import §4!!§.§]!h§;
   import §4'§.§^"p§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §=&!§.§<$!§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import §^4§.§>"$§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.loading.core.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §6%v§ extends §=!l§
   {
      
      private static const §8!T§:String = "AirBlockerIdleUpg1B";
      
      private static const §'&?§:uint = 12;
      
      private static const §%=§:uint = 3;
      
      private static const §&%W§:uint = 8;
      
      private static const §""A§:Array = [§+&F§,§>"$§];
      
      public function §6%v§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4,§+"'§.§7#W§);
         §,!o§ = §>!`§;
         §!"-§(§8!T§);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(active)
         {
            return;
         }
         if(!stable)
         {
            return;
         }
         if(Application.scene.§@$I§.§<#[§() % §@;§ == 0)
         {
            if(frames % §%=§ == 0)
            {
               this.§'$0§(radius);
            }
         }
      }
      
      override protected function checkTargets() : void
      {
         super.checkTargets();
         if(frames % §&%W§ == 0)
         {
            this.§<R§(radius << 1);
         }
         else if(frames % §%=§ == 0)
         {
            this.§<R§(radius);
         }
      }
      
      private function §<R§(param1:uint) : void
      {
         var _loc4_:§&"T§ = null;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§(§""A§);
         _loc2_ = §<H§.§3%'§(x,y,param1,_loc2_);
         var _loc3_:uint = 0;
         for each(_loc4_ in _loc2_)
         {
            _loc4_.disposed = true;
            if(_loc4_ is §>"$§)
            {
               §1"-§.explode(§;n§.§7q§,_loc4_.x,_loc4_.y,10);
            }
            if(++_loc3_ >= §'&?§)
            {
               break;
            }
         }
      }
      
      private function §'$0§(param1:uint) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         _loc2_ = §8"%§.§?!W§.§4"m§.§="T§(owner,false,true);
         var _loc3_:Vector.<§+%]§> = §<H§.§5"]§(x,y,param1,_loc2_);
         for each(_loc4_ in _loc3_)
         {
            if(!_loc4_.buffs.hasBuff(§##B§.NAME))
            {
               _loc4_.buffs.place(new §##B§());
            }
         }
         for each(_loc4_ in _loc2_)
         {
            if(_loc3_.indexOf(_loc4_) == -1 && _loc4_.buffs.hasBuff(§##B§.NAME))
            {
               _loc4_.buffs.§6C§(§##B§.NAME);
            }
         }
      }
      
      private function §+&@§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(owner,false,true);
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.buffs.hasBuff(§##B§.NAME))
            {
               _loc2_.buffs.§6C§(§##B§.NAME);
            }
         }
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:§]!h§ = null;
         var _loc4_:int = 0;
         if(Boolean(param1.source) && Boolean(param1.source.owner) && !disposed)
         {
            _loc2_ = param1.source.owner;
            if(_loc2_.squad.getTeamId() != owner.squad.getTeamId())
            {
               _loc3_ = new §]!h§(owner,this.x,this.y,false,_loc2_,paramSet.damage.value);
               _loc4_ = 30;
               _loc3_.setSpeedXY(0,-_loc4_);
               _loc3_.homingFeat.ammoSpeed = _loc4_;
               _loc3_.homingFeat.§<&E§ = 1;
               _loc3_.homingFeat.§;$C§ = 0;
            }
         }
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(!Application.scene.§@$I§.§=%d§())
         {
            this.§+&@§();
         }
         super.§[$u§(param1);
      }
   }
}

