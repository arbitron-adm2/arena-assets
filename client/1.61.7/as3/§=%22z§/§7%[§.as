package §="z§
{
   import §##y§.CollisionEvent;
   import §7!B§.§&"T§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import flash.text.TextFieldType;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §7%[§ extends §;$S§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private var §0%T§:§?"&§ = new §?"&§(false);
      
      private var §`"M§:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      private var §1"j§:Vector.<§&"T§>;
      
      private var § "6§:Boolean = true;
      
      public function §7%[§(param1:§9%1§)
      {
         super(param1);
      }
      
      public function checkEnemiesOnStart() : void
      {
         this.§ "6§ = false;
      }
      
      public function addToIgnored(param1:§&"T§) : void
      {
         this.§`"M§.push(param1);
      }
      
      public function isObjectIgnored(param1:§&"T§) : Boolean
      {
         return this.§`"M§.indexOf(param1) != -1;
      }
      
      override public function §"$<§() : Array
      {
         var _loc1_:Array = [];
         this.§+!>§(this.§1"j§,_loc1_);
         return _loc1_;
      }
      
      private function §+!>§(param1:Vector.<§&"T§>, param2:Array) : void
      {
         var _loc3_:§&"T§ = null;
         for each(_loc3_ in param1)
         {
            if(this.§`"M§.indexOf(_loc3_) == -1)
            {
               if(this != _loc3_.physicModel && _loc3_.physParams.§0#0§ != §<#`§.NONE && §4!a§(_loc3_))
               {
                  param2.push(_loc3_);
                  this.§`"M§.push(_loc3_);
               }
            }
         }
      }
      
      private function §"%n§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§#p§ = null;
         this.§1"j§ = new Vector.<§&"T§>(0);
         if(physParams.§5N§ != §9%1§.§>#T§ && physParams.§5N§ != §9%1§.§&!A§)
         {
            if(speedX > 0)
            {
               _loc1_ = x;
               _loc2_ = x + speedX;
            }
            else
            {
               _loc2_ = x;
               _loc1_ = x + speedX;
            }
            if(speedY > 0)
            {
               _loc3_ = y;
               _loc4_ = y + speedY;
            }
            else
            {
               _loc4_ = y;
               _loc3_ = y + speedY;
            }
            _loc5_ = Application.scene.§@$I§.§;%a§;
            if(physParams.§-z§)
            {
               this.§1"j§ = this.§1"j§.concat(§<H§.§%$Q§(_loc1_ - §<H§.§@% §,_loc3_ - §<H§.§-#C§,_loc2_ + §<H§.§@% §,_loc4_ + §<H§.§-#C§,_loc5_.§'#&§(§<#`§.§[;§)));
            }
            if(physParams.§0g§)
            {
               this.§1"j§ = this.§1"j§.concat(§<H§.§%$Q§(_loc1_,_loc3_,_loc2_,_loc4_,_loc5_.§'#&§(§<#`§.§^&0§)));
            }
            this.§1"j§ = this.§1"j§.concat(§<H§.§%$Q§(_loc1_ - 20,_loc3_ - 20,_loc2_ + 20,_loc4_ + 20,_loc5_.§'#&§(§<#`§.§&!c§)));
         }
      }
      
      override public function §!!>§() : void
      {
         var _loc2_:§&"T§ = null;
         if(!this.§0%T§.value)
         {
            this.§1!i§();
            this.§0%T§.value = true;
         }
         var _loc1_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         for each(_loc2_ in this.§`"M§)
         {
            if(§4!a§(_loc2_))
            {
               _loc1_.push(_loc2_);
            }
         }
         this.§`"M§ = _loc1_;
         this.§"%n§();
         super.§!!>§();
      }
      
      private function §1!i§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         if(this.§ "6§)
         {
            _loc1_ = §8"%§.§?!W§.§4"m§.§5#h§();
            for each(_loc2_ in _loc1_)
            {
               if(§4!a§(_loc2_))
               {
                  this.§`"M§.push(_loc2_);
               }
            }
         }
      }
      
      override public function §2"[§(param1:int, param2:int) : Boolean
      {
         var _loc4_:uint = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc3_:Boolean = false;
         if(physParams.§7!3§)
         {
            _loc4_ = 0;
            if(_loc4_ == 0)
            {
               _loc3_ = §>#9§.point(x,y);
            }
            else
            {
               _loc5_ = Math.cos(angle + PI_HALF);
               _loc6_ = Math.sin(angle + PI_HALF);
               _loc7_ = -_loc4_;
               while(_loc7_ <= _loc4_)
               {
                  if(§>#9§.point(x + _loc7_ * _loc5_,y + _loc7_ * _loc6_))
                  {
                     _loc3_ = true;
                     break;
                  }
                  _loc7_++;
               }
            }
         }
         return _loc3_;
      }
      
      override public function §9#O§(param1:§&"T§, param2:int, param3:int, param4:CollisionEvent) : void
      {
         if(!physParams.ignoresTerrain)
         {
            x = param2;
            y = param3;
            if(param4.stopObject)
            {
               stop();
            }
         }
      }
      
      override public function clear() : void
      {
         this.§`"M§ = null;
      }
   }
}

