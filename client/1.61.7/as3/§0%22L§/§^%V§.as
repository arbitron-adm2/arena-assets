package §0"L§
{
   import § &5§.§0&$§;
   import §%"1§.§=#?§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §+$=§.§1§;
   import §+$=§.§6#A§;
   import §0!Y§.§ !k§;
   import §0!Y§.§!$%§;
   import §0!Y§.§#!Z§;
   import §0!Y§.§=#a§;
   import §0%[§.§0%§;
   import §0%j§.§#!U§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §3#a§.§[&A§;
   import §4!K§.*;
   import §9%W§.§!7§;
   import §;&2§.§!#W§;
   import §<%E§.§,$2§;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §@!N§.§2"e§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[!O§.§%@§;
   import §[!O§.§@&D§;
   import §[!`§.*;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import §`%&§.§8U§;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.XMLLoader;
   import config.§=%A§;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §^%V§
   {
      
      private static const §&"6§:int = 25;
      
      private static const §6$8§:uint = 2 * 60 * 1000;
      
      private var §["^§:Array = [];
      
      public var §]$l§:§%@§ = new §%@§();
      
      private var §=![§:int = 0;
      
      private var §+#y§:Boolean = false;
      
      private var §,&=§:Boolean = false;
      
      private var §-&B§:§?"&§;
      
      private var §,"t§:§?"&§;
      
      private var §5$7§:Boolean;
      
      public var paused:Boolean = false;
      
      public function §^%V§()
      {
         super();
      }
      
      public function §"!-§(param1:uint) : Boolean
      {
         var _loc4_:§ !k§ = null;
         var _loc5_:§+%]§ = null;
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(!_loc2_)
         {
            return true;
         }
         if(this.paused || _loc2_.§"%`§() && !this.§]$l§.§[P§() && _loc2_.§&&1§())
         {
            if(!this.§,"t§.value)
            {
               if(this.§-&B§.value)
               {
                  this.cancelBattle();
               }
               else
               {
                  ++this.§=![§;
                  if(!this.paused && this.§=![§ >= §&"6§ && !this.§+#y§ && this.§]$l§.§7#k§() != 1)
                  {
                     this.§+#y§ = true;
                     §[&G§.§8r§.show(false);
                  }
               }
            }
            else
            {
               _loc5_ = _loc2_.activeUnit;
               if((Boolean(_loc5_)) && Boolean(!_loc5_.disposed) && Boolean(_loc5_.weapon))
               {
                  _loc5_.weapon.§?!K§();
               }
               if(!_loc2_.§1"3§())
               {
                  _loc2_.§9!d§();
               }
               _loc2_.§9&@§();
            }
            return false;
         }
         if(this.§+#y§)
         {
            this.§+#y§ = false;
            §[&G§.§8r§.hide();
            this.§=![§ = 0;
         }
         var _loc3_:Array = this.§]$l§.§+$N§();
         if(_loc3_.length > 0 && _loc3_[0].commandId == §#!Z§.§8%S§)
         {
            this.§,&=§ = true;
         }
         for each(_loc4_ in _loc3_)
         {
            if(param1 == 1)
            {
               break;
            }
            if(this.§,&=§ && _loc4_.commandId == §#!Z§.§`"a§)
            {
               break;
            }
            if(this.§["^§.indexOf(_loc4_.commandId) == -1)
            {
               §=#a§.run(_loc4_,param1);
               if(Application.scene.§@$I§.§=%d§())
               {
                  return false;
               }
            }
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§() || §8"%§.§?!W§.§4"m§.§;#l§())
         {
            Application.scene.dispatchEvent(§!$%§.empty());
         }
         return true;
      }
      
      public function reset() : void
      {
         this.§]$l§.reset();
         this.§+#y§ = true;
         this.§=![§ = 0;
         this.§,&=§ = false;
         this.§-&B§ = new §?"&§(false);
         this.§,"t§ = new §?"&§(false);
         this.§5$7§ = false;
      }
      
      public function run() : void
      {
         this.§]$l§.run();
      }
      
      public function stop() : void
      {
         if(this.§+#y§)
         {
            §[&G§.§8r§.hide();
         }
         this.§]$l§.stop();
      }
      
      public function §;x§(param1:Array) : void
      {
         this.§["^§ = param1.concat();
      }
      
      private function cancelBattle() : void
      {
         this.§,"t§.value = true;
      }
      
      public function §!%q§() : Boolean
      {
         return this.§-&B§.value;
      }
      
      public function §2$o§(param1:Boolean) : void
      {
         this.§-&B§.value = true;
         if(!param1)
         {
            Application.scene.dispatchEvent(new Event(§0%v§.END_TURN_RECEIVED));
         }
         else
         {
            this.§,"t§.value = true;
         }
      }
      
      public function §8%<§() : Boolean
      {
         return this.§5$7§;
      }
      
      public function §!z§() : void
      {
         this.§5$7§ = true;
         Application.scene.dispatchEvent(new Event(§0%v§.START_TURN_RECEIVED));
      }
   }
}

