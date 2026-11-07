package §!%6§
{
   import § &5§.§@N§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§@a§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§["4§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#H§.§ §;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3#T§.AtomBomb;
   import §4$b§.§2m§;
   import §4'§.§^"p§;
   import §6#Z§.§&!Z§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §9%k§.*;
   import §<!^§.§9"§;
   import §<"L§.§##-§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=&!§.§4$z§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$7§.§6J§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.*;
   import config.achievements.§!$L§;
   import config.achievements.§"!&§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §56§ extends §&"T§
   {
      
      public static const §,2§:String = "base";
      
      public static const §8#$§:String = "active";
      
      public static const §5!]§:String = "damaged";
      
      public static const §>!g§:uint = 32;
      
      private var owner:§+%]§;
      
      private var §[&=§:Vector.<Point> = new Vector.<Point>();
      
      private var §;"l§:Point = new Point(int.MAX_VALUE,int.MAX_VALUE);
      
      private var §!"Q§:Point = new Point(-int.MAX_VALUE,-int.MAX_VALUE);
      
      private var §#"A§:String;
      
      public function §56§(param1:§+%]§, param2:Point, param3:Point, param4:int, param5:int)
      {
         var _loc7_:Point = null;
         super(false,§@N§.§7&H§);
         clip = §6#A§.§!&6§("BeamInjectorPartMC");
         canBeDamaged = true;
         stable = true;
         this.x = param2.x;
         this.y = param2.y;
         this.owner = param1;
         var _loc6_:Vector.<Point> = new Vector.<Point>();
         _loc6_.push(param2);
         _loc6_.push(new Point(param2.x,param3.y));
         _loc6_.push(param3);
         _loc6_.push(new Point(param3.x,param2.y));
         this.§]!K§(_loc6_,param4,param5);
         for each(_loc7_ in _loc6_)
         {
            if(_loc7_.x <= this.§;"l§.x && _loc7_.y <= this.§;"l§.y)
            {
               this.§;"l§ = _loc7_;
            }
            if(_loc7_.x >= this.§!"Q§.x && _loc7_.y >= this.§!"Q§.y)
            {
               this.§!"Q§ = _loc7_;
            }
         }
         this.§[&=§.push(new Point(0,0));
         this.§[&=§.push(new Point(0,param3.y - param2.y));
         this.§[&=§.push(new Point(param3.x - param2.x,param3.y - param2.y));
         this.§[&=§.push(new Point(param3.x - param2.x,0));
         this.§]!K§(this.§[&=§,param4,param5);
         this.setState(§,2§);
         addEventListener(§0%v§.§&!D§,this.§?$u§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function §]!K§(param1:Vector.<Point>, param2:int, param3:int) : void
      {
         var _loc4_:Point = null;
         for each(_loc4_ in param1)
         {
            _loc4_.x += §>!g§ * -param2;
            _loc4_.y += §>!g§ * -param3;
         }
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         if(param1.source.owner.squad.getTeamId() != this.owner.squad.getTeamId() && this.§#"A§ != §8#$§)
         {
            this.setState(§5!]§);
         }
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physParams.§5N§ = §9%1§.§`$R§;
         physicModel = new §;$S§(physParams);
      }
      
      public function setState(param1:String) : void
      {
         if(param1 != this.§#"A§)
         {
            clip.gotoAndStop(param1);
            if(this.§#"A§ == §8#$§)
            {
               clip.graphics.clear();
            }
            switch(param1)
            {
               case §8#$§:
                  this.§%"+§();
            }
            this.§#"A§ = param1;
         }
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:Vector.<§&"T§> = null;
         var _loc2_:§+%]§ = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§ #1§ = null;
         super.§!!>§();
         if(this.§#"A§ == §8#$§)
         {
            _loc1_ = new Vector.<§&"T§>();
            _loc3_ = §8"%§.§?!W§.§4"m§.§6"M§(this.owner);
            for each(_loc2_ in _loc3_)
            {
               _loc1_.push(_loc2_);
            }
            _loc1_ = §<H§.§%$Q§(this.§;"l§.x,this.§;"l§.y,this.§!"Q§.x,this.§!"Q§.y,_loc1_);
            for each(_loc2_ in _loc1_)
            {
               _loc4_ = _loc2_.buffs.getBuff(§ #1§.NAME) as § #1§;
               if(!_loc4_)
               {
                  _loc4_ = new § #1§(this.owner);
                  _loc2_.buffs.place(_loc4_);
               }
               _loc4_.activated();
            }
         }
      }
      
      public function activated(param1:Boolean = false) : void
      {
         if(param1 || this.§#"A§ == §5!]§)
         {
            this.setState(§8#$§);
         }
      }
      
      public function §##m§() : String
      {
         return this.§#"A§;
      }
      
      private function §%"+§() : void
      {
         clip.graphics.beginFill(16776960,0.1);
         clip.graphics.moveTo(this.§[&=§[0].x * clip.scaleX,this.§[&=§[0].y * clip.scaleY);
         var _loc1_:uint = 1;
         while(_loc1_ < this.§[&=§.length)
         {
            clip.graphics.lineTo(this.§[&=§[_loc1_].x * clip.scaleX,this.§[&=§[_loc1_].y * clip.scaleY);
            _loc1_++;
         }
         clip.graphics.endFill();
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
      }
      
      override public function §^"F§(param1:Number, param2:Number) : void
      {
      }
      
      override public function §6"O§(param1:Number, param2:Number) : void
      {
      }
      
      override public function setSpeedXY(param1:Number, param2:Number) : void
      {
      }
      
      override public function §5!?§(param1:Number, param2:Number) : void
      {
      }
   }
}

