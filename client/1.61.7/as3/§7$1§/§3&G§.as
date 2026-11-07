package §7$1§
{
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §02§.§#$%§;
   import §02§.§<!v§;
   import §4#`§.BattleInterface;
   import §5$]§.§-$Z§;
   import §5$]§.§3& §;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §=$#§.§1!$§;
   import §=&!§.§]$d§;
   import §?#g§.§-!k§;
   import §@!i§.§,! §;
   import §@"!§.§`<§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.request.treasury.CashMedalsClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §3&G§ extends §;$n§
   {
      
      private static const §5&3§:uint = 6;
      
      private static const §0C§:int = -4;
      
      private static const §1$p§:int = 20;
      
      public var §9U§:int = 0;
      
      public var friendlyFire:Boolean;
      
      public function §3&G§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:uint, param6:Boolean)
      {
         §<!2§ = §;$A§ = 45823;
         super(param1,param2,param3,param4,true);
         this.§##9§.value = param5;
         this.friendlyFire = param6;
      }
      
      private function §!&E§() : void
      {
         if(Boolean(trail) && Boolean(trail.parent))
         {
            trail.parent.removeChild(trail);
            trail = null;
         }
      }
      
      private function §#%F§(param1:Event) : void
      {
         attachTrail();
      }
      
      private function §^"m§(param1:Event) : void
      {
         attachTrail();
      }
      
      private function onStable(param1:Event) : void
      {
         this.§!&E§();
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
      }
      
      override protected function tick() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         var _loc3_:Number = NaN;
         if(stable && !§8"%§.§?!W§.§4"m§.§;#l§())
         {
            _loc1_ = §<H§.§5"]§(x,y,§=$`§.value + §1$p§);
            for each(_loc2_ in _loc1_)
            {
               if(!_loc2_.disposed && _loc2_ != owner && (!_loc2_.stable || _loc2_.crawling != 0))
               {
                  _loc3_ = Math.atan2(_loc2_.y - y,_loc2_.x - x);
                  §^"F§(_loc3_,§5&3§);
                  §5!?§(0,§0C§);
               }
            }
         }
         super.tick();
      }
      
      override protected function §^#d§() : §+%]§
      {
         var _loc1_:§+%]§ = null;
         if(frames % 2 == 0)
         {
            _loc1_ = super.§^#d§();
            if(Boolean(!this.friendlyFire) && Boolean(_loc1_) && _loc1_.squad.getTeamId() == owner.squad.getTeamId())
            {
               _loc1_ = null;
            }
            return _loc1_;
         }
         return null;
      }
      
      public function destroy() : void
      {
         explode();
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.§!&E§();
         super.§[$u§(param1);
      }
   }
}

