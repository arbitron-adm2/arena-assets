package § %"§
{
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.*;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§'%V§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §2"L§.§^$y§;
   import §3#T§.Helicopter;
   import §4%_§.ZombieGrave;
   import §5!9§.§6$,§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.GestureState;
   import org.gestouch.core.IGestureDelegate;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class ShurikenSaw extends §"%5§
   {
      
      private static const §<!u§:§&$2§ = new §&$2§(30);
      
      private static const §["&§:uint = 3;
      
      private static const §4$O§:Number = 12;
      
      private var §-#c§:Dictionary = new Dictionary();
      
      public function ShurikenSaw(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:Boolean = true)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         if(param1.other is §+%]§)
         {
            return;
         }
         super.onCollide(param1);
      }
      
      override protected function §#$ §(param1:§&"T§, param2:uint) : uint
      {
         return param1 == null ? 1 : param2;
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         this.checkTargets();
      }
      
      private function checkTargets() : void
      {
         var _loc1_:Number = NaN;
         var _loc4_:§+%]§ = null;
         _loc1_ = §="j§(owner);
         var _loc2_:Number = (§4$O§ + _loc1_) * -1;
         var _loc3_:Number = §^$y§.sign(speedX);
         _loc3_ += _loc1_ * (_loc3_ > 0 ? 1 : -1);
         for each(_loc4_ in §<H§.§5"]§(x,y,§<!u§.value))
         {
            if(this.§-#c§[_loc4_] == null)
            {
               this.§-#c§[_loc4_] = 0;
            }
            if(!_loc4_.disposed && _loc4_ != owner && this.§-#c§[_loc4_] < §["&§)
            {
               var _loc7_:Dictionary = this.§-#c§;
               var _loc8_:§+%]§;
               var _loc9_:Number = _loc7_[_loc8_ = _loc4_] + 1;
               _loc7_[_loc8_] = _loc9_;
               §!!_§(_loc4_);
               §'"$§.§<#j§(_loc4_,_loc3_,_loc2_,false);
            }
         }
      }
   }
}

