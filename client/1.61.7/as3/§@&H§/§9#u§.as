package §@&H§
{
   import §##y§.CollisionEvent;
   import §%"Z§.§'$2§;
   import §%$!§.§@!o§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2"L§.§,'§;
   import §3"@§.§#$O§;
   import §4$b§.*;
   import §4'§.§4$&§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7$t§.§^$E§;
   import §8$V§.§`"c§;
   import §9%W§.§&!P§;
   import §<!W§.§!"+§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §@!N§.§""L§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.SpeedhackDetectedEvent;
   import §^#[§.§["u§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   
   public class §9#u§ extends EventDispatcher
   {
      
      private const §!%<§:uint = 1000;
      
      private const §+"O§:Number = 0.7;
      
      private const §6%H§:Number = 20000;
      
      private const §@g§:uint = 10;
      
      private var §-$=§:Timer;
      
      private var mark:Number;
      
      private var counter:uint = 0;
      
      public function §9#u§()
      {
         super();
      }
      
      public function run() : void
      {
         if(this.§-$=§ == null)
         {
            this.counter = 0;
            this.mark = new Date().time;
            this.§-$=§ = new Timer(this.§!%<§);
            this.§-$=§.addEventListener(TimerEvent.TIMER,this.onTimer);
            this.§-$=§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§-$=§ != null)
         {
            this.§-$=§.stop();
            this.§-$=§ = null;
         }
      }
      
      public function §'P§() : Boolean
      {
         var _loc1_:Number = new Date().time;
         return _loc1_ - this.mark < this.§6%H§;
      }
      
      private function onTimer(param1:Event) : void
      {
         var _loc2_:Number = new Date().time;
         if(_loc2_ - this.mark > this.§6%H§)
         {
            dispatchEvent(new SpeedhackDetectedEvent());
            return;
         }
         var _loc3_:Number = (_loc2_ - this.mark - this.§!%<§) / this.§!%<§;
         if(_loc3_ < -this.§+"O§)
         {
            if(++this.counter == this.§@g§)
            {
               dispatchEvent(new SpeedhackDetectedEvent());
            }
         }
         else
         {
            this.counter = 0;
         }
         this.mark = _loc2_;
      }
   }
}

