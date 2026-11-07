package §]$v§
{
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&3§.§'C§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0!§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §4#`§.§+!l§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §<%k§.§`!v§;
   import §?$K§.§=z§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §+x§ extends §6#I§
   {
      
      public static const §4%#§:§&$2§ = new §&$2§(1);
      
      private static const §^%w§:Number = 0.25;
      
      private var paramSet:§5$n§;
      
      private var §@$e§:int;
      
      private var hh:int;
      
      private var hw:int;
      
      private var damaged:Vector.<§&"T§>;
      
      public function §+x§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         var _loc5_:Point = null;
         super(param1,param1.x,param1.y,false);
         this.paramSet = param2;
         §@%;§.play(§`!v§.§["p§);
         initialize(§"$C§(param3,0),param2.ammoClassName);
         physParams.addForce(§]%G§.§-4§);
         §^"F§(param3,param4);
         §`4§ = §]$S§;
         this.§@$e§ = §-$[§ * §^%w§;
         this.hh = §4!<§ >> 1;
         this.hw = §-$[§ >> 1;
         this.damaged = new <§&"T§>[this];
         _loc5_ = §-q§.§2!B§(this.hw,param3);
         x += _loc5_.x;
         y += _loc5_.y;
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.§;%k§(this,§;n§.§7q§,5,2);
         }
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override public function §!!>§() : void
      {
         var _loc2_:Point = null;
         var _loc7_:Number = NaN;
         var _loc9_:§&"T§ = null;
         var _loc10_:Boolean = false;
         var _loc11_:int = 0;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         super.§!!>§();
         var _loc1_:Point = §-q§.§2!B§(1,angle);
         _loc2_ = §-q§.§2!B§(this.§@$e§,angle);
         var _loc3_:Point = new Point(x - _loc2_.x,y - _loc2_.y);
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < §-$[§)
         {
            _loc3_.x += _loc1_.x;
            _loc3_.y += _loc1_.y;
            if(§>#9§.point(_loc3_.x,_loc3_.y))
            {
               _loc4_++;
            }
            if(§>#9§.point(_loc3_.x,_loc3_.y,true))
            {
               this.explode();
               return;
            }
            _loc5_++;
         }
         var _loc6_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§ #N§();
         _loc7_ = §="j§(owner);
         var _loc8_:Number = (this.paramSet.pushForce.value + _loc7_) * -1;
         for each(_loc9_ in _loc6_)
         {
            if(this.damaged.indexOf(_loc9_) == -1 && §-q§.§+K§(_loc3_.x,_loc3_.y,x,y,_loc9_.x,_loc9_.y,_loc9_.width >> 1))
            {
               if(_loc9_.canBeDamaged)
               {
                  _loc13_ = _loc9_ is §+%]§;
                  §'"$§.inflictDamage(this,_loc9_,!_loc13_ ? this.paramSet.damage.value : 0,0,0);
                  if(!_loc9_.disposed && !_loc9_.§5%g§(§-&§.IMMOVABLE) && (!_loc13_ || !§+%]§(_loc9_).buffs.hasBuff(§=z§.NAME)))
                  {
                     §'"$§.§<#j§(_loc9_,0,_loc8_,false);
                  }
               }
               if(_loc9_.§5%g§(§-&§.IMMOVABLE))
               {
                  this.explode();
                  return;
               }
               this.damaged.push(_loc9_);
            }
         }
         _loc10_ = _loc4_ >= this.§@$e§;
         _loc11_ = _loc10_ ? int(clip.getChildByName("girder").width) : width;
         _loc2_ = §-q§.§2!B§(this.hw,angle);
         if(_loc10_)
         {
            x += _loc2_.x;
            y += _loc2_.y;
         }
         _loc3_ = new Point(x - _loc2_.x,y - _loc2_.y);
         _loc5_ = 0;
         while(_loc5_ < _loc11_)
         {
            if(§>#9§.point(_loc3_.x,_loc3_.y))
            {
               Application.scene.§,# §(_loc3_.x,_loc3_.y,this.hh - 2,null,§`#=§);
               _loc12_ = true;
            }
            _loc3_.x += _loc1_.x;
            _loc3_.y += _loc1_.y;
            _loc5_++;
         }
         if(_loc4_ > 0)
         {
            §@%;§.play(§`!v§.§0#O§);
         }
         if(_loc10_)
         {
            this.stop();
         }
         if(Boolean(_loc12_) && Boolean(owner) && !owner.disposed)
         {
            owner.stable = false;
         }
      }
      
      private function explode() : void
      {
         §1"-§.explode(§;n§.MEDIUM,x,y,width >> 1);
         disposed = true;
      }
      
      private function stop() : void
      {
         setSpeedXY(0,0);
         stable = true;
         Application.scene.§+!K§(clip,x,y);
         disposed = true;
      }
   }
}

