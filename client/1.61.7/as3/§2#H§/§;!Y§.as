package §2#H§
{
   import § #k§.§3%0§;
   import § #m§.§[&H§;
   import § &5§.§=#P§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.NextTurnEvent;
   import §2"L§.§5#E§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §4u§.§[%u§;
   import §5!,§.§?!P§;
   import §6",§.§[%w§;
   import §65§.§%%o§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §<!f§.§!"<§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §?%J§.*;
   import §@!N§.§2"e§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import §]7§.§0!v§;
   import §^#[§.§&$2§;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §;!Y§ extends §%%o§
   {
      
      public static const NAME:String = "SPIKES";
      
      private const §+#u§:uint = 32;
      
      private var paramSet:§5$n§;
      
      private var §-M§:uint;
      
      public function §;!Y§(param1:Number, param2:uint = 8, param3:int = -1)
      {
         this.§-M§ = param2;
         super(NAME,param3,param1);
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.EOT,this.trigger);
         this.paramSet = §<$c§.§ !=§(§+%z§.CROSSBOW).§<$4§.clone();
         this.paramSet.damage = new §&$2§(value.value);
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.EOT,this.trigger);
         this.paramSet = null;
      }
      
      protected function trigger(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Point = null;
         var _loc2_:Number = Math.PI / 90;
         var _loc3_:int = -this.§-M§;
         while(_loc3_ <= this.§-M§)
         {
            if(_loc3_ != 0)
            {
               _loc4_ = -Math.PI / 2 + _loc3_ * _loc2_;
               _loc5_ = §-q§.§2!B§(this.§+#u§,_loc4_);
               if(!§>#9§.point(unit.x + _loc5_.x,unit.y + _loc5_.y))
               {
                  new §!"<§(unit,this.paramSet,_loc4_,this.§+#u§,false);
               }
            }
            _loc3_++;
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §;!Y§(value.value,this.§-M§));
      }
   }
}

