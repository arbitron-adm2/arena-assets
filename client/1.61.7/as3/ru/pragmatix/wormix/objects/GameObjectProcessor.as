package ru.pragmatix.wormix.objects
{
   import § &5§.§%$O§;
   import § &5§.§0&$§;
   import § &5§.§@N§;
   import §!$Z§.§"$I§;
   import §!$d§.§<$c§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+5§.§8$W§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0!Y§.§!$%§;
   import §0"L§.§+# §;
   import §0"L§.§^%V§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2!-§.GameObjectDisposed;
   import §2#i§.§+%z§;
   import §3#T§.Meteor;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §=#g§.§!"X§;
   import §?#g§.Race;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!O§.§%@§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.gui.MainInterface;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§'"<§;
   import ru.pragmatix.wormix.objects.mutators.§'1§;
   import ru.pragmatix.wormix.objects.mutators.§2#e§;
   import ru.pragmatix.wormix.objects.mutators.§9%^§;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GameObjectProcessor
   {
      
      private static const log:§&`§ = new §&`§(GameObjectProcessor);
      
      private var scene:§0&$§;
      
      private var §8%n§:§#p§ = new §#p§();
      
      private var §'#a§:int = 0;
      
      private var §#&@§:Boolean = false;
      
      private var §>_§:Vector.<GameObjectManageRec> = new Vector.<GameObjectManageRec>(0);
      
      private var §%%W§:Vector.<§[%z§> = new Vector.<§[%z§>(0);
      
      private var §=!E§:§^%V§ = new §^%V§();
      
      private var §6!t§:uint = 1;
      
      public function GameObjectProcessor(param1:§0&$§)
      {
         var _loc2_:§[%z§ = null;
         super();
         this.scene = param1;
         param1.addEventListener(Event.ENTER_FRAME,this.§,"8§);
         §>#9§.§[&@§(param1);
         this.§=!E§.run();
         §8"%§.§&$k§.init();
         this.§%%W§ = new <§[%z§>[new §^#%§(),new §9%^§(),new §'1§(),new §2#e§(),new §'"<§()];
         for each(_loc2_ in this.§%%W§)
         {
            _loc2_.activate();
         }
      }
      
      public function §@I§() : uint
      {
         return this.§6!t§++;
      }
      
      public function get §;%a§() : §#p§
      {
         return this.§8%n§;
      }
      
      private function §,"8§(param1:Event) : void
      {
         var _loc5_:Vector.<§&"T§> = null;
         var _loc6_:§&"T§ = null;
         var _loc7_:* = 0;
         var _loc8_:GameObjectManageRec = null;
         var _loc2_:Number = 0.8714;
         if(this.§#&@§)
         {
            this.§8$k§();
            return;
         }
         this.scene.§[g§();
         var _loc3_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(_loc3_)
         {
            if(!this.§=!E§.paused && !(_loc3_.§"%`§() && _loc3_.§&&1§() && !this.§]$l§.§[P§()))
            {
               ++this.§'#a§;
            }
         }
         else
         {
            ++this.§'#a§;
         }
         var _loc4_:Boolean = this.§=!E§.§"!-§(this.§'#a§);
         if(!this.§#&@§ && _loc4_ == true)
         {
            if(this.§>_§.length > 0)
            {
               for each(_loc8_ in this.§>_§)
               {
                  this.§<#%§(_loc8_);
               }
               this.§>_§ = new Vector.<GameObjectManageRec>(0);
            }
            _loc5_ = this.§8%n§.§]$a§();
            for each(_loc6_ in _loc5_)
            {
               _loc6_.§!!>§();
            }
            §%$O§.§^#4§(this.scene,_loc5_);
            this.scene.§+^§();
            this.scene.dispatchEvent(new Event(§0%v§.FRAME));
            _loc7_ = int(_loc5_.length - 1);
            while(_loc7_ >= 0)
            {
               if(_loc5_[_loc7_].disposed)
               {
                  this.dispose(_loc7_);
               }
               _loc7_--;
            }
            this.scene.stable = this.§@"E§();
            if(this.scene.stable)
            {
               if(!this.§@"E§())
               {
                  Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"scene stable hack"));
               }
               this.scene.dispatchEvent(new Event(§0%v§.SCENE_STABLE));
            }
         }
         if(_loc2_ > 0.1)
         {
            §8"%§.§&$k§.§>!i§();
         }
      }
      
      public function §@!_§() : Vector.<§&"T§>
      {
         return this.§8%n§.§ #N§();
      }
      
      public function §@"E§() : Boolean
      {
         var _loc1_:GameObjectManageRec = null;
         var _loc2_:§&"T§ = null;
         for each(_loc1_ in this.§>_§)
         {
            if(!_loc1_.isParticle)
            {
               return false;
            }
         }
         for each(_loc2_ in this.§8%n§.§]$a§())
         {
            if(_loc2_.disposed)
            {
               return false;
            }
         }
         return this.§8%n§.§ !$§();
      }
      
      protected function §[!&§() : void
      {
         var _loc2_:Object = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in Application.instance)
         {
            _loc1_++;
         }
      }
      
      public function §1$+§(param1:§&"T§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!this.§#&@§)
         {
            this.§>_§.push(new GameObjectManageRec(param1,param2,param3));
         }
      }
      
      private function §<#%§(param1:GameObjectManageRec) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:§[%z§ = null;
         var _loc2_:§&"T§ = param1.gobj;
         if(!_loc2_.disposed)
         {
            if(_loc2_.clip)
            {
               _loc3_ = this.scene.§=P§(_loc2_.layer);
               _loc3_.addChild(_loc2_.clip);
               if(_loc2_.layer == §@N§.§[!i§ && param1.toBackground)
               {
                  _loc3_.setChildIndex(_loc2_.clip,0);
               }
            }
            this.§8%n§.§&%k§(_loc2_,!param1.isParticle);
            if(!param1.isParticle)
            {
               for each(_loc4_ in this.§%%W§)
               {
                  if(_loc4_.test(_loc2_))
                  {
                     _loc4_.§0$I§(_loc2_);
                  }
               }
            }
         }
      }
      
      private function dispose(param1:int) : void
      {
         var _loc2_:§&"T§ = null;
         var _loc3_:§[%z§ = null;
         _loc2_ = this.§8%n§.§2#3§(param1);
         _loc2_.disposed = true;
         _loc2_.dispatchEvent(new GameObjectDisposed(_loc2_));
         if(_loc2_.clip)
         {
            if(_loc2_.clip.parent)
            {
               _loc2_.clip.parent.removeChild(_loc2_.clip);
            }
            if(_loc2_.clip.totalFrames > 1)
            {
               _loc2_.clip.stop();
            }
            if(_loc2_.clip.numChildren > 0)
            {
               §3!3§.§>!j§(§3!3§.§#"R§(_loc2_.clip));
            }
         }
         for each(_loc3_ in this.§%%W§)
         {
            if(_loc3_.test(_loc2_))
            {
               _loc3_.§-#X§(_loc2_);
            }
         }
      }
      
      public function §`k§() : void
      {
         this.§#&@§ = true;
      }
      
      private function §8$k§() : void
      {
         var _loc2_:GameObjectManageRec = null;
         var _loc3_:§[%z§ = null;
         var _loc4_:§&"T§ = null;
         §8"%§.§&$k§.clear();
         this.§=!E§.stop();
         this.§=!E§ = null;
         var _loc1_:* = int(this.§8%n§.§]$a§().length - 1);
         while(_loc1_ >= 0)
         {
            this.dispose(_loc1_);
            _loc1_--;
         }
         this.§8%n§.clear();
         for each(_loc2_ in this.§>_§)
         {
            _loc4_ = _loc2_.gobj;
            _loc4_.disposed = true;
            _loc4_.dispatchEvent(new GameObjectDisposed(_loc4_));
         }
         this.§>_§ = null;
         this.scene.removeEventListener(Event.ENTER_FRAME,this.§,"8§);
         this.scene = null;
         for each(_loc3_ in this.§%%W§)
         {
            _loc3_.deactivate();
         }
         this.§%%W§ = null;
      }
      
      public function §=%d§() : Boolean
      {
         return this.§#&@§;
      }
      
      public function §<#[§() : int
      {
         return this.§'#a§;
      }
      
      public function reset() : void
      {
         this.§'#a§ = 0;
         this.§=!E§.reset();
         this.scene.dispatchEvent(§!$%§.empty(1));
      }
      
      public function get §]$l§() : §%@§
      {
         return this.§=!E§.§]$l§;
      }
      
      public function §2$o§(param1:Boolean) : void
      {
         this.§=!E§.§2$o§(param1);
      }
      
      public function §!%q§() : Boolean
      {
         return this.§=!E§.§!%q§();
      }
      
      public function §!z§() : void
      {
         this.§=!E§.§!z§();
      }
      
      public function §8%<§() : Boolean
      {
         return this.§=!E§.§8%<§();
      }
      
      public function §;x§(param1:Array) : void
      {
         this.§=!E§.§;x§(param1);
      }
      
      public function pause() : void
      {
         this.§=!E§.paused = true;
      }
      
      public function resume() : void
      {
         this.§=!E§.paused = false;
      }
      
      public function §5# §(param1:Class) : §[%z§
      {
         var _loc2_:§[%z§ = null;
         for each(_loc2_ in this.§%%W§)
         {
            if(_loc2_ is param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}

import §7!B§.§&"T§;

class GameObjectManageRec
{
   
   internal var gobj:§&"T§;
   
   internal var toBackground:Boolean;
   
   internal var isParticle:Boolean;
   
   public function GameObjectManageRec(param1:§&"T§, param2:Boolean, param3:Boolean)
   {
      super();
      this.gobj = param1;
      this.toBackground = param2;
      this.isParticle = param3;
   }
}
