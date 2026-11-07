package §[!`§
{
   import § &5§.§=#P§;
   import §"$+§.§`&$§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0&F§.§0%v§;
   import §2#H§.§#$A§;
   import §4"j§.§[&C§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §<$q§.*;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §]$v§.§]%_§;
   import §^-§.Rope;
   import §^4§.§]"8§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class VoidZone extends §&"T§
   {
      
      private static const §4!e§:uint = 5;
      
      private static const §<#@§:uint = 1;
      
      private static const §+& §:uint = 120;
      
      private static const §04§:uint = 2;
      
      private static const §;V§:Number = 0.5;
      
      private static const §=%-§:uint = 4;
      
      private static const §,!G§:uint = 8;
      
      public static const §!"@§:uint = 200;
      
      public static const §?&0§:uint = 30;
      
      private const §^"t§:MovieClip = §6#A§.§!&6§("VoidZone");
      
      private const §!%"§:MovieClip = §6#A§.§!&6§("VoidZoneMaxState");
      
      private var owner:§+%]§;
      
      private var radius:uint = 200;
      
      private var §7#&§:Vector.<§&"T§> = new Vector.<§&"T§>();
      
      private var §8M§:§[&C§;
      
      private var §"!8§:Boolean = false;
      
      private var §-%M§:Boolean = false;
      
      private var dummy:§&"T§;
      
      public function VoidZone(param1:§+%]§, param2:int, param3:int, param4:int = 0)
      {
         super();
         this.owner = param1;
         this.radius += param4;
         this.x = param2;
         this.y = param3;
         clip = new MovieClip();
         clip.addChild(this.§^"t§);
         clip.alpha = §;V§;
         clip.width = 10;
         clip.height = 10;
         this.dummy = Application.scene.§,$z§();
         Application.scene.addEventListener(§0%v§.FRAME,this.§;&-§);
         Application.scene.§@$I§.§1$+§(this);
         stable = true;
      }
      
      private function §;&-§(param1:Event) : void
      {
         var _loc2_:uint = 0;
         _loc2_ = this.radius * 2;
         if(clip.width < _loc2_)
         {
            clip.width += §?&0§;
            clip.height += §?&0§;
         }
         else
         {
            this.dummy.disposed = true;
            Application.scene.removeEventListener(§0%v§.FRAME,this.§;&-§);
            clip.width = _loc2_;
            clip.height = _loc2_;
         }
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.NONE);
         physicModel = new §;$S§(physParams);
      }
      
      public function §0#`§(param1:int) : void
      {
         var _loc2_:Number = param1 * Math.pow(this.§%"K§(),2);
         clip.width += _loc2_ * 2;
         clip.height += _loc2_ * 2;
         this.radius += _loc2_;
      }
      
      public function update() : void
      {
         this.§7#&§.length = 0;
      }
      
      public function §#!$§() : void
      {
         if(!this.§"!8§ && (Boolean(!this.§8M§) || Boolean(this.§8M§ && this.§8M§.disposed)))
         {
            this.§8M§ = new §[&C§(this.owner,x,y);
            this.§8M§.addEventListener(§0%v§.DISPOSED,this.§@![§);
         }
      }
      
      public function §@![§(param1:Event) : void
      {
         this.§8M§.removeEventListener(§0%v§.DISPOSED,this.§@![§);
         this.§-%M§ = true;
      }
      
      public function §4#$§() : void
      {
         if(Boolean(this.§8M§) && !this.§8M§.disposed)
         {
            this.§"!8§ = true;
            this.§8M§.disposed = true;
            clip.removeChild(this.§^"t§);
            clip.addChild(this.§!%"§);
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(frames % §4!e§ == 0)
         {
            this.§="o§();
         }
         if(frames % §<#@§ == 0)
         {
            this.§-"x§();
         }
         if(Boolean(!this.§"!8§ && this.§8M§ && !this.§8M§.disposed) && Boolean(this.§8M§.§'"S§() < §04§) && frames % §+& § == 0)
         {
            this.§8M§.§&#V§();
         }
      }
      
      private function §="o§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(this.owner);
         var _loc2_:Vector.<§+%]§> = §<H§.§5"]§(x,y,this.radius,_loc1_);
         for each(_loc3_ in _loc2_)
         {
            if(this.§-%M§ && _loc3_.buffs.hasBuff(§#$A§.NAME))
            {
               _loc3_.buffs.§6C§(§#$A§.NAME);
            }
            if(!_loc3_.buffs.hasBuff(§#$A§.NAME))
            {
               _loc3_.buffs.place(new §#$A§(this.owner,new Point(x,y),this.radius,this.§%"K§()));
            }
            this.§-%M§ = false;
         }
      }
      
      private function §-"x§() : void
      {
         var _loc1_:Vector.<§&"T§> = null;
         var _loc3_:§&"T§ = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:Rope = null;
         var _loc6_:uint = 0;
         _loc1_ = Application.scene.§@$I§.§;%a§.§"L§([§6#I§]);
         var _loc2_:Vector.<§&"T§> = §<H§.§3%'§(x,y,this.radius,_loc1_);
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = §6#I§(_loc3_).owner;
            if((Boolean(_loc4_)) && this.§7#&§.indexOf(_loc3_) == -1)
            {
               _loc5_ = _loc3_ as Rope;
               if(_loc4_ != this.owner && !_loc4_.buffs.hasBuff(§#$A§.NAME) && !_loc5_ || Boolean(_loc5_) && Boolean(!_loc5_.§<%P§()))
               {
                  §1"-§.explode(§;n§.§7q§,_loc3_.x,_loc3_.y,10);
                  _loc3_.disposed = true;
               }
               else if(_loc4_.buffs.hasBuff(§#$A§.NAME))
               {
                  _loc6_ = (_loc3_ is §]"8§ ? §,!G§ : §=%-§) * this.§%"K§();
                  _loc3_.setSpeedXY(_loc3_.speedX / _loc6_,_loc3_.speedY / _loc6_);
                  this.§7#&§.push(_loc3_);
               }
            }
         }
      }
      
      public function §%"K§() : Number
      {
         return this.§"!8§ ? §04§ : (Boolean(this.§8M§) && !this.§8M§.disposed ? this.§8M§.§'"S§() : 1);
      }
   }
}

