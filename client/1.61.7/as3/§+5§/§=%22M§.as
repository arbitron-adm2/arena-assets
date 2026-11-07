package §+5§
{
   import § "L§.§`#r§;
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§[&$§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §3#T§.§+&F§;
   import §4$b§.§6!G§;
   import §7!B§.§&"T§;
   import §;!Z§.*;
   import §=7§.§?%4§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^"y§.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §="M§ extends §7!U§
   {
      
      private static const §&&?§:uint = 15;
      
      private static const §#"T§:uint = 16;
      
      private static const § ;§:Number = Math.PI / 6;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const FIRE_POWER:uint = 4;
      
      private static const FIRE_DURATION:uint = 40;
      
      private var §8#=§:uint = 0;
      
      public function §="M§(param1:§+%]§, param2:§5$n§, param3:§5$n§)
      {
         super(param1,param2,param3);
         _damageType = §&!E§.FIRE;
      }
      
      override protected function update() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super.update();
         if(!disposed && this.§8#=§ < §#"T§ && frames % §&&?§ == 0)
         {
            ++this.§8#=§;
            _loc1_ = y - (§-$[§ >> 1);
            _loc2_ = 15;
            §'"$§.§]#I§(owner,x,_loc1_,null,10,_loc2_ + 10,_loc2_,false);
            §1"-§.explode(§;n§.§7q§,x,_loc1_,_loc2_);
            _loc3_ = -1;
            while(_loc3_ <= 1)
            {
               if(_loc3_ != 0)
               {
                  _loc4_ = -PI_HALF + _loc3_ * § ;§;
                  _loc5_ = x + _loc3_ * 6;
                  _loc6_ = y - 5;
                  new §+&F§(owner,_loc4_,FIRE_POWER,_loc5_,_loc6_,FIRE_DURATION,true);
               }
               _loc3_++;
            }
         }
      }
   }
}

