package §[!`§
{
   import § m§.*;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&!m§.§;#[§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0!Y§.§#!Z§;
   import §0"L§.§@#n§;
   import §1#o§.§%#$§;
   import §2!-§.§-!6§;
   import §2"L§.§^$y§;
   import §2>§.§-d§;
   import §4&F§.*;
   import §4^§.§4!w§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §<%k§.*;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §=!V§.*;
   import §="z§.§1!c§;
   import §=7§.§'%B§;
   import §=7§.§-$!§;
   import §=7§.§2$V§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   
   public class §8%U§ extends §&"T§
   {
      
      private static const §-#t§:Number = 5;
      
      private static const §5"A§:uint = 30;
      
      private var owner:§+%]§;
      
      private var §;#R§:Sprite;
      
      private var §1%p§:uint;
      
      private var positions:Array;
      
      private var § !]§:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      private var path:Vector.<Point> = new Vector.<Point>(0);
      
      private var reverse:Boolean = false;
      
      private var active:Boolean = true;
      
      private var §]#9§:Vector.<§&!E§>;
      
      private var §"=§:Boolean = true;
      
      private var enemies:Vector.<§+%]§>;
      
      private var activeUnit:§+%]§;
      
      private var frame:uint = 0;
      
      private var §,!L§:uint;
      
      public function §8%U§(param1:§+%]§, param2:Array, param3:Vector.<§&!E§>)
      {
         super();
         this.owner = param1;
         this.positions = param2;
         this.§]#9§ = param3;
         clip = new MovieClip();
         this.§;#R§ = §4!w§.§1#M§(param3);
         clip.addChild(this.§;#R§);
         this.§1%p§ = 0;
         stable = true;
         this.§"#H§();
         this.§?#j§();
         this.§;+§();
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function §"#H§() : void
      {
         var _loc1_:§9$Z§ = null;
         var _loc4_:Point = null;
         var _loc5_:MovieClip = null;
         _loc1_ = Application.scene.§^$'§();
         var _loc2_:Number = _loc1_.§1% §;
         var _loc3_:int = _loc1_.indentHeight;
         for each(_loc4_ in this.positions)
         {
            _loc5_ = §4!w§.§6!z§(this.§]#9§);
            _loc5_.x = _loc4_.x + _loc2_;
            _loc5_.y = _loc4_.y + _loc3_;
            clip.addChild(_loc5_);
            this.§ !]§.push(_loc5_);
         }
      }
      
      private function §?#j§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:int = this.§ !]§.length - 1;
         var _loc2_:uint = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §4!w§.§53§(this.§]#9§);
            _loc4_ = this.§ !]§[_loc2_];
            _loc5_ = this.§ !]§[_loc2_ + 1];
            _loc3_.x = _loc4_.x;
            _loc3_.y = _loc4_.y;
            _loc3_.width = §-q§.distance(_loc4_.x,_loc4_.y,_loc5_.x,_loc5_.y) + _loc5_.width / 2;
            _loc3_.rotation = §-q§.§1$#§(_loc4_.x,_loc4_.y,_loc5_.x,_loc5_.y);
            clip.addChildAt(_loc3_,0);
            _loc2_++;
         }
      }
      
      private function §;+§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:Point = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc1_:int = this.§ !]§.length - 1;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.§ !]§[_loc2_];
            _loc4_ = new Point(_loc3_.x,_loc3_.y);
            _loc5_ = this.§ !]§[_loc2_ + 1];
            _loc6_ = Math.atan2(_loc5_.y - _loc3_.y,_loc5_.x - _loc3_.x);
            do
            {
               _loc7_ = new Point();
               _loc7_.x = _loc4_.x + §-#t§ * Math.cos(_loc6_);
               _loc7_.y = _loc4_.y + §-#t§ * Math.sin(_loc6_);
               _loc4_ = _loc7_;
               this.path.push(_loc7_);
            }
            while(!§-q§.§+$v§(_loc7_.x,_loc7_.y,_loc5_.x,_loc5_.y,§-#t§));
            _loc2_++;
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(this.active)
         {
            this.§'a§();
            if(this.frame == 0)
            {
               this.§,!L§ = §8"%§.randomSeed.§,!q§(4,8);
               this.§4#m§();
            }
            if(this.frame < this.§,!L§)
            {
               ++this.frame;
            }
            else
            {
               this.frame = 0;
            }
         }
      }
      
      private function §'a§() : void
      {
         var _loc1_:Point = this.path[this.§1%p§];
         this.§;#R§.x = _loc1_.x;
         this.§;#R§.y = _loc1_.y;
         if(this.reverse)
         {
            if(this.§1%p§ == 0)
            {
               this.reverse = false;
               ++this.§1%p§;
            }
            else
            {
               --this.§1%p§;
            }
         }
         else if(this.§1%p§ < this.path.length - 1)
         {
            ++this.§1%p§;
         }
         else
         {
            this.reverse = true;
            --this.§1%p§;
         }
      }
      
      private function §4#m§() : void
      {
         var _loc1_:§+%]§ = null;
         if(this.§"=§)
         {
            this.activeUnit = §8"%§.§?!W§.§4"m§.activeUnit;
            for each(_loc1_ in this.enemies)
            {
               if(Boolean(_loc1_ && !_loc1_.disposed) && Boolean(this.activeUnit == _loc1_) && §<H§.§8!P§(_loc1_,this.§;#R§.x,this.§;#R§.y,§5"A§,true))
               {
                  if(this.§"=§)
                  {
                     this.§"=§ = false;
                  }
                  dispatchEvent(new §-!6§(§-!6§.§4#"§,_loc1_));
                  break;
               }
            }
         }
      }
      
      public function §4"7§(param1:Boolean) : void
      {
         this.§"=§ = param1;
         if(param1)
         {
            this.enemies = §8"%§.§?!W§.§4"m§.§6"M§(this.owner);
         }
      }
      
      public function setActive(param1:Boolean) : void
      {
         this.active = param1;
         this.§;#R§.visible = param1;
      }
      
      public function isActive() : Boolean
      {
         return this.active;
      }
      
      public function §[$G§() : Vector.<§&!E§>
      {
         return this.§]#9§;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         this.active = false;
         this.owner = null;
         this.enemies = null;
         this.activeUnit = null;
      }
   }
}

