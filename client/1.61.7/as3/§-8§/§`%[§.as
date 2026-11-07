package §-8§
{
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §&"c§.§5$n§;
   import §&#h§.§,#;§;
   import §'!Z§.§1"-§;
   import §'T§.§!$C§;
   import §+#U§.§'#w§;
   import §+%S§.§3$§;
   import §+%S§.§`$l§;
   import §0%[§.§0%§;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §3#a§.§-!`§;
   import §5%S§.§>&-§;
   import §8!Y§.§`#Q§;
   import §9%W§.§&!P§;
   import §9%k§.*;
   import §<!W§.§3"R§;
   import §<!W§.§;!`§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%§.*;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §`%[§ extends §3!x§
   {
      
      public static const §5e§:§&$2§ = new §&$2§(§3!x§.§9!"§.value * 1);
      
      private static const §]=§:§&$2§ = new §&$2§(4);
      
      private static const §4X§:uint = 7;
      
      private static const §@;§:uint = 5;
      
      private var §7!r§:Dictionary;
      
      private var §4&2§:int;
      
      public function §`%[§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:String, param6:Object)
      {
         super(param1,param2,param3,param4,param5,§]=§.value);
         this.§4&2§ = §5e§.value;
         this.§7!r§ = new Dictionary();
      }
      
      public static function §""&§(param1:Number, param2:Number) : Vector.<§+%]§>
      {
         var _loc6_:int = 0;
         var _loc7_:Vector.<§+%]§> = null;
         var _loc8_:§+%]§ = null;
         var _loc3_:Vector.<§+%]§> = §<H§.§5"]§(param1,param2,§5e§.value * 3,§8"%§.§?!W§.§4"m§.§5#h§());
         var _loc4_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         var _loc5_:int = -§?%-§;
         while(_loc5_ <= §?%-§)
         {
            _loc6_ = param1 + §5e§.value * _loc5_;
            _loc7_ = §<H§.§5"]§(_loc6_,param2,§5e§.value,_loc3_);
            for each(_loc8_ in _loc7_)
            {
               _loc3_.splice(_loc3_.indexOf(_loc8_),1);
            }
            _loc4_ = _loc4_.concat(_loc7_);
            _loc5_++;
         }
         return _loc4_;
      }
      
      override protected function §[%x§(param1:§+%]§) : void
      {
         super.§[%x§(param1);
         this.§+!M§(param1);
      }
      
      private function §+!M§(param1:§+%]§) : void
      {
         var _loc2_:Point = §=z§.§-L§(param1);
         §1"-§.§2$O§(this,param1,12,10,6068463,8);
         §1"-§.§`$Q§(param1.x,param1.y,§1"-§.§9a§);
         §'"$§.§]#I§(owner,param1.x,param1.y,param1,paramSet.damage.value,0,0,true,true,§&!E§.§=$-§,true,false,true,true,_customSource);
         §@%;§.play(§`!v§.§`%9§);
         if(!param1.buffs.hasBuff(§`$l§.NAME))
         {
            param1.buffs.addValue(new §`$l§());
         }
         if(_loc2_)
         {
            §=z§.§5!u§(param1,_loc2_);
         }
      }
      
      override protected function §8$n§(param1:Event) : void
      {
         super.§8$n§(param1);
         this.§1#l§();
      }
      
      private function §1#l§() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this.§7!r§)
         {
            delete this.§7!r§[_loc1_];
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(Application.scene.§@$I§.§<#[§() % §@;§ == 0)
         {
            this.checkTargets();
         }
      }
      
      private function checkTargets() : void
      {
         var _loc2_:String = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc1_:Vector.<§+%]§> = §""&§(x,y);
         for each(_loc3_ in _loc1_)
         {
            if(!_loc3_.squad.isAi() || !_loc3_.§0!e§)
            {
               _loc2_ = _loc3_.getId().toString();
               if(!this.§7!r§[_loc2_] && !_loc3_.buffs.hasBuff(§`$l§.NAME))
               {
                  this.§7!r§[_loc2_] = new Point(_loc3_.x,_loc3_.y);
               }
               _loc4_ = !_loc3_.stable && !_loc3_.buffs.hasBuff(§3$§.NAME);
               if((_loc4_) || Boolean(this.§7!r§[_loc2_]) && (Boolean(this.§7!r§[_loc2_].x != _loc3_.x || this.§7!r§[_loc2_].y != _loc3_.y)))
               {
                  if(_loc4_)
                  {
                     _loc3_.buffs.place(new §3$§(this,owner,new Point(x,y),this.§4&2§,§4X§,paramSet.damage.value,§+"'§.§;"y§));
                  }
                  else
                  {
                     this.§+!M§(_loc3_);
                     delete this.§7!r§[_loc2_];
                  }
               }
            }
         }
         for(_loc2_ in this.§7!r§)
         {
            _loc5_ = false;
            for each(_loc3_ in _loc1_)
            {
               if(_loc3_.getId().toString() == _loc2_)
               {
                  _loc5_ = true;
                  break;
               }
            }
            if(!_loc5_)
            {
               delete this.§7!r§[_loc2_];
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         if(!Application.scene.§@$I§.§=%d§())
         {
            _loc2_ = §8"%§.§?!W§.§4"m§.§5#h§();
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_.buffs.hasBuff(§3$§.NAME))
               {
                  _loc3_.buffs.§6C§(§3$§.NAME);
               }
            }
         }
         this.§1#l§();
         this.§7!r§ = null;
         super.§[$u§(param1);
      }
   }
}

