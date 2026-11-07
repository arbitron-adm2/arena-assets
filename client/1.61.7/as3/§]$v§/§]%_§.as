package §]$v§
{
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&!?§.§!b§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+%S§.§+m§;
   import §,$J§.§,$O§;
   import §0!§.§6#z§;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §2#i§.§+%z§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §=#g§.*;
   import §?#g§.Race;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[$<§.§"#"§;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.client.ChooseBonusItem;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §]%_§ extends §6#I§
   {
      
      private static const §;$&§:int = 3;
      
      protected var paramSet:§5$n§;
      
      private var §>&=§:Number = 1;
      
      private var §2&E§:int = 3;
      
      private var §9n§:int = 0;
      
      private var §7!z§:int = 0;
      
      private var §!%y§:Array = [];
      
      public function §]%_§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint)
      {
         super(param1,param1.x,param1.y,false,§&i§,§&!E§.COLD);
         this.paramSet = param3;
         §,%S§ = true;
         §6""§ = true;
         initialize(param2,param3.ammoClassName);
         this.clip.rotation = param4 * 180 / Math.PI;
         physParams.addForce(§]%G§.§-4§);
         §^"F§(param4,param5);
         §8$a§.§&!#§(this,§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         §1"-§.§;%k§(this,§;n§.§7q§,8,1);
         Application.scene.§@$I§.§1$+§(this);
         §@%;§.play(§`!v§.§?&$§);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:uint = 0;
         disposed = true;
         §1"-§.explode(§;n§.MEDIUM,x,y,this.paramSet.explosionRadius.value,§`!v§.§ !h§);
         var _loc2_:§+%]§ = Boolean(param1.other) && param1.other is §+%]§ ? §+%]§(param1.other) : null;
         var _loc3_:Vector.<§+%]§> = §<H§.§5"]§(x,y,this.paramSet.damageRadius.value);
         for each(_loc4_ in _loc3_)
         {
            if(!_loc4_.disposed)
            {
               _loc5_ = 1 * this.paramSet.damage.value;
               _loc6_ = this.§2&E§ + this.§7!z§;
               if(_loc4_ == _loc2_ && this.§!%y§.length > 0 && _loc4_.buffs.§%%b§(this.§!%y§))
               {
                  _loc5_ *= this.§>&=§;
                  _loc6_ += this.§9n§;
                  if(_loc6_ > §;$&§)
                  {
                     _loc4_.buffs.§6C§(§+m§.NAME);
                  }
               }
               §'"$§.§]#I§(owner,_loc4_.x,_loc4_.y,_loc4_,_loc5_,0,0,false,false,_damageType);
               _loc4_.buffs.place(new §+m§(owner,_loc6_));
            }
         }
      }
      
      public function §3%<§(param1:Number) : void
      {
         this.§>&=§ = 1 + param1;
      }
      
      public function §1!v§(param1:int) : void
      {
         this.§9n§ = param1;
      }
      
      public function §8$z§(param1:int) : void
      {
         this.§7!z§ = param1;
      }
      
      public function §;&'§(param1:Array) : void
      {
         this.§!%y§ = param1;
      }
      
      public function §"%B§() : void
      {
         var _loc1_:§8!U§ = new §8!U§(this,200,3);
         var _loc2_:§%%2§ = new §%%2§(this,20,Math.PI / 30);
         _loc2_.§!$s§(_loc1_);
         §=l§.push(_loc1_,_loc2_);
      }
   }
}

