package §[$P§
{
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §9![§.§^§;
   import §<%k§.§2§;
   import §=!C§.§74§;
   import §="z§.§-O§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import flash.events.Event;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.Jetpack;
   
   public class §+H§
   {
      
      public static const PI_HALF:Number = Math.PI / 2;
      
      public static const §[$J§:Number = Math.PI / 5;
      
      public static const § ;§:Number = Math.PI / 6;
      
      public static const §@$m§:Number = Math.PI / 10;
      
      private static const §!#+§:§&$2§ = new §&$2§(5);
      
      private static const §2%&§:§&$2§ = new §&$2§(§!#+§.value + 7);
      
      protected static const MIN_VALUE:uint = 0;
      
      protected static const §]$]§:§&$2§ = new §&$2§(10);
      
      protected static const §1r§:§&$2§ = new §&$2§(9);
      
      protected static const §4!+§:uint = 7;
      
      protected var §'#O§:§&$2§ = new §&$2§(15);
      
      protected var §#$9§:§&$2§ = new §&$2§(§]$]§.value);
      
      protected var §=!F§:§&$2§ = new §&$2§(§1r§.value);
      
      private var §2O§:int = this.§#$9§.value;
      
      private var §>$[§:int = this.§=!F§.value;
      
      protected var §0G§:Boolean = false;
      
      protected var §,%#§:§&$2§ = new §&$2§(0);
      
      protected var §5%E§:§&$2§ = new §&$2§(0);
      
      protected var §"$&§:uint = 0;
      
      protected var §+!H§:Boolean = true;
      
      protected var owner:§+%]§;
      
      public function §+H§(param1:§+%]§, param2:§+H§ = null)
      {
         super();
         this.owner = param1;
         if(param2)
         {
            this.§#$9§.value = param2.§#$9§.value;
            this.§=!F§.value = param2.§=!F§.value;
            this.§5%E§.value = param2.§5%E§.value;
            this.§2O§ = this.§#$9§.value;
            this.§>$[§ = this.§=!F§.value;
         }
      }
      
      public function §]x§(param1:int) : void
      {
         this.§2O§ += param1;
         this.§#$9§.value = Math.max(this.§2O§,MIN_VALUE);
      }
      
      public function §9"y§(param1:int) : void
      {
         this.§>$[§ += param1;
         this.§=!F§.value = Math.max(this.§>$[§,MIN_VALUE);
      }
      
      public function §,#B§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = this.§0"h§(this.owner.direction * §[$J§ - PI_HALF,this.§=!F§.value,true,param1);
         if(!_loc2_ && this.owner.stable && !this.owner.isImmobile())
         {
            this.§7$z§(param1);
         }
      }
      
      protected function §7$z§(param1:Boolean = false) : void
      {
         if(§>#9§.point(this.owner.x + this.owner.speedX,this.owner.y + this.owner.speedY))
         {
            this.owner.setSpeedXY(0,0);
         }
         else
         {
            this.jump(this.owner.direction * §[$J§ - PI_HALF,this.§#$9§.value,true,param1);
            §2#6§.§3%3§(this.owner);
            this.owner.attachTrail();
         }
      }
      
      public function jumpBack(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = this.§0"h§(-this.owner.direction * §@$m§ - PI_HALF,this.§=!F§.value,false,param1);
         if(!_loc2_ && this.owner.stable && !this.owner.isImmobile())
         {
            this.§,#4§(param1);
         }
      }
      
      protected function §,#4§(param1:Boolean = false) : void
      {
         if(§>#9§.point(this.owner.x - this.owner.speedX,this.owner.y + this.owner.speedY))
         {
            this.owner.setSpeedXY(0,0);
         }
         else
         {
            if(this.owner.crawling)
            {
               this.owner.§;#a§();
            }
            this.jump(-PI_HALF,this.§#$9§.value,false,param1);
            §2#6§.§3%3§(this.owner);
            this.owner.attachTrail();
            §8$a§.§%!E§(§2%&§.value,this.§4$0§);
         }
      }
      
      protected function §4$0§() : void
      {
         if(Boolean(this.owner) && Boolean(!this.owner.disposed) && !this.owner.stable)
         {
            this.owner.§^"F§(-this.owner.direction * § ;§ - PI_HALF,6);
         }
      }
      
      private function §0"h§(param1:Number, param2:Number, param3:Boolean = true, param4:Boolean = false) : Boolean
      {
         var _loc6_:uint = 0;
         var _loc5_:Boolean = false;
         if(this.§ %Q§() && !this.owner.disposed && !this.owner.stable)
         {
            _loc6_ = uint(Application.scene.§@$I§.§<#[§());
            if(_loc6_ - this.§"$&§ >= this.§'#O§.value)
            {
               this.extraJump(param1,param2,param3,param4);
               this.§"$&§ = _loc6_;
               _loc5_ = true;
            }
         }
         return _loc5_;
      }
      
      protected function extraJump(param1:Number, param2:Number, param3:Boolean = true, param4:Boolean = false) : void
      {
         this.owner.§^"F§(param1,param2);
         --this.§,%#§.value;
      }
      
      protected function jump(param1:Number, param2:uint, param3:Boolean, param4:Boolean = false) : void
      {
         var self:§+%]§ = null;
         var angle:Number = param1;
         var power:uint = param2;
         var forward:Boolean = param3;
         var alternate:Boolean = param4;
         this.owner.graphics.§0#8§();
         this.owner.crawling = 0;
         this.owner.physicModel.keepUnstable = true;
         self = this.owner;
         §8$a§.§%!E§(§!#+§.value,function():void
         {
            if(!self.disposed && !self.stable)
            {
               §0G§ = true;
               owner.§^"F§(angle,power);
               owner.graphics.getClip().rotation = 0;
               §,%#§.value = §5%E§.value;
               if(owner.physicModel is §-O§ && !(Boolean(owner.weapon) && owner.weapon is Jetpack && Jetpack(owner.weapon).isUsed()))
               {
                  owner.physicModel.keepUnstable = false;
                  if(forward)
                  {
                     owner.graphics.jump();
                  }
                  else
                  {
                     owner.graphics.jumpBack();
                  }
                  owner.graphics.§34§();
               }
            }
         });
         this.§"$&§ = Application.scene.§@$I§.§<#[§();
         §8$a§.§&!#§(this.owner,§0%v§.§3G§,this.stabilize);
      }
      
      public function stabilize(param1:Event) : void
      {
         var event:Event = param1;
         this.owner.§2!W§();
         this.§,%#§.value = 0;
         if(this.§0G§)
         {
            this.§0G§ = false;
            if(this.owner.bonuses.§^#5§(Bonus.MIGHTY_JUMP))
            {
               this.owner.attributes.§8$e§.§5#l§(§^#8§.§]% §.value);
               §8$a§.§%!E§(§^#8§.§ &G§.value,function():void
               {
                  if(!owner.disposed)
                  {
                     owner.attributes.§8$e§.§5#l§(-§^#8§.§]% §.value);
                  }
               });
            }
         }
      }
      
      public function §4!D§(param1:int) : void
      {
         this.§5%E§.value += param1;
      }
      
      public function §["9§() : void
      {
         this.§,%#§.value = 0;
         this.§+!H§ = false;
      }
      
      public function §;-§() : void
      {
         this.§+!H§ = true;
      }
      
      public function § %Q§() : Boolean
      {
         var _loc1_:uint = uint(Application.scene.§@$I§.§<#[§());
         return this.§+!H§ && _loc1_ - this.§"$&§ >= this.§'#O§.value && this.§,%#§.value > 0;
      }
      
      public function destroy() : void
      {
         this.owner = null;
      }
   }
}

