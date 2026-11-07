package §^#o§
{
   import § !8§.§`!d§;
   import § !P§.*;
   import § &5§.§=#P§;
   import § K§.§2""§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§6$3§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&!?§.§+" §;
   import §&#W§.§?#]§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §4!!§.§!%n§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §="z§.§9%1§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+l§;
   import §?$7§.§6&'§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§]$y§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.ClearName;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.client.GetFriendsForMission;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §%%2§ implements §[&7§, §+%=§
   {
      
      private var ammo:§&"T§;
      
      private var frames:int = 0;
      
      private var §&"V§:Boolean = true;
      
      private var §&%^§:Boolean = false;
      
      private var target:Object;
      
      private var §>$%§:§+%=§;
      
      public var ammoSpeed:Number;
      
      public var §;$C§:uint = 0;
      
      public var §<$1§:Number;
      
      public var §'"x§:Number;
      
      public var §1$P§:uint = 0;
      
      public var §<&E§:int = -1;
      
      public var §`"#§:int = -1;
      
      public var §7"m§:Boolean = false;
      
      public function §%%2§(param1:§&"T§, param2:Number, param3:Number)
      {
         super();
         this.ammo = param1;
         this.ammoSpeed = param2;
         this.§<$1§ = param3;
      }
      
      public function §!!>§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.ammo.disposed)
         {
            return;
         }
         if(this.§-%§())
         {
            ++this.frames;
            if(this.frames >= this.§;$C§)
            {
               this.§8#?§();
               if(this.§&%^§)
               {
                  this.ammo.§^"F§(this.§[!]§(),this.ammoSpeed);
               }
               else if(this.§&"V§)
               {
                  _loc2_ = this.§[!]§();
                  _loc3_ = §^$y§.§ !Q§(this.ammo.angle,_loc2_,this.§<$1§);
                  this.ammo.§^"F§(_loc3_,this.ammoSpeed);
                  if(this.§7"m§ && Math.abs(_loc3_ - _loc2_) < §<H§.§?O§)
                  {
                     this.§&"V§ = false;
                  }
               }
               if(this.§1$P§ > 0 && !isNaN(this.§'"x§) && this.frames % this.§1$P§ == 0)
               {
                  this.§<$1§ += this.§'"x§;
               }
            }
         }
         else if(this.§>$%§ != null)
         {
            this.target = this.§>$%§.§`"%§();
         }
      }
      
      private function §[!]§() : Number
      {
         return Math.atan2(this.target.y - this.ammo.y,this.target.x - this.ammo.x);
      }
      
      public function §-%§() : Boolean
      {
         if(this.target)
         {
            if(this.target is §&"T§ && !this.target.disposed)
            {
               return true;
            }
            if(this.target is Point)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §8#?§() : void
      {
         if(this.§&%^§)
         {
            return;
         }
         if(this.§`"#§ > 0 && §^$y§.distance(this.target.x - this.ammo.x,this.target.y - this.ammo.y) < this.§`"#§ || this.§<&E§ > 0 && this.frames > this.§<&E§ + this.§;$C§)
         {
            this.§&%^§ = true;
         }
      }
      
      public function §`"%§() : §+%]§
      {
         return Boolean(this.target) && this.target is §+%]§ ? §+%]§(this.target) : null;
      }
      
      public function §0!F§(param1:Object) : void
      {
         this.target = param1;
      }
      
      public function §!$s§(param1:§+%=§) : void
      {
         this.§>$%§ = param1;
      }
      
      public function §&$e§(param1:Object) : §%%2§
      {
         this.§0!F§(param1);
         return this;
      }
      
      public function §>^§() : void
      {
         if(this.target)
         {
            this.target = null;
         }
      }
      
      public function get isHoming() : Boolean
      {
         return this.§&"V§;
      }
      
      public function set isHoming(param1:Boolean) : void
      {
         this.§&"V§ = param1;
      }
      
      public function get §0#4§() : Boolean
      {
         return this.§&%^§;
      }
   }
}

