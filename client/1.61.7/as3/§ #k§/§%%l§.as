package § #k§
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import § L§.§`T§;
   import §"#x§.§'"$§;
   import §%"1§.*;
   import §%"Z§.§'$2§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2#i§.§+%z§;
   import §4%_§.§3§;
   import §6",§.§[%w§;
   import §7"Q§.*;
   import §7$1§.§3&G§;
   import §7$t§.§^$E§;
   import §;!J§.*;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §?!E§.*;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.events.*;
   import flash.net.LocalConnection;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §%%l§ extends §3%0§
   {
      
      private static const §9%Q§:uint = 50;
      
      private static const §[%K§:int = 20;
      
      private static const §"!`§:int = -15;
      
      public function §%%l§(param1:§+%]§, param2:Number, param3:Number)
      {
         name = §]"[§;
         clips = [§'#7§,§]%h§,§&$^§];
         super(param1,param2,param3);
         Application.scene.addEventListener(§0%v§.EOT,this.§8$n§);
      }
      
      public function §8$n§(param1:Event) : void
      {
         if(!Application.scene.§@$I§.§=%d§())
         {
            this.§+!U§();
         }
      }
      
      override protected function §+!U§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         var _loc2_:uint = _loc1_.length;
         if(_loc2_ > 0)
         {
            _loc3_ = _loc1_[§8"%§.randomSeed.§,!q§(0,_loc2_ - 1)];
            this.x = _loc3_.x + width * §-q§.§4&8§();
            this.y = _loc3_.y;
            turn(_loc3_.x);
            §@%;§.play(§`!v§.§=%2§(§"%5§.§#&9§));
            §'"$§.§]#I§(owner,x,y,null,0,20,20,false);
            §'"$§.§]#I§(owner,x,y,_loc3_,§9%Q§,0,0,false);
            _loc3_.setSpeedXY(§[%K§ * direction,§"!`§);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.EOT,this.§8$n§);
         super.§[$u§(param1);
      }
   }
}

