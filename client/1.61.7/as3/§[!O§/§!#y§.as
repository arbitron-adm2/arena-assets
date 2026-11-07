package §[!O§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-@§.§+"A§;
   import §0!Y§.§ !k§;
   import §0!Y§.§!$%§;
   import §0!Y§.§#!Z§;
   import §0%[§.§1%"§;
   import §1A§.§-"`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §6"'§.§&"3§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §8$V§.*;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$7§.§8"e§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §[%'§.§<"G§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §!#y§ extends §6!u§
   {
      
      private var §1#Y§:uint;
      
      private var §&%;§:uint = 0;
      
      private var § "=§:§?"&§ = new §?"&§(false);
      
      public function §!#y§(param1:uint = 30)
      {
         super();
         this.§1#Y§ = param1;
      }
      
      override public function reset() : void
      {
         super.reset();
         this.§&%;§ = 0;
         this.§ "=§.value = false;
      }
      
      public function §@$X§() : void
      {
         this.§9B§(§?!'§);
      }
      
      override protected function §&=§(param1:§!$%§) : void
      {
         var _loc2_:§ !k§ = null;
         var _loc3_:uint = 0;
         super.§&=§(param1);
         for each(_loc2_ in param1.actions)
         {
            if(_loc2_.commandId == §#!Z§.§8%S§)
            {
               if(this.§ "=§.value)
               {
                  Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"NEXT_TURN hacked"));
               }
               this.§ "=§.value = true;
            }
         }
         if(§?!'§ - §^%s§ >= this.§1#Y§)
         {
            _loc3_ = §?!'§ - 1;
            this.§9B§(_loc3_);
         }
      }
      
      private function §9B§(param1:uint) : void
      {
         var firstFrame:uint;
         var actionMap:Object;
         var cnt:§&$2§;
         var i:uint;
         var bulk:§@&D§;
         var action:§ !k§ = null;
         var lastFrame:uint = param1;
         ++this.§&%;§;
         firstFrame = §^%s§ + 1;
         actionMap = {};
         cnt = new §&$2§(0);
         i = firstFrame;
         while(i <= lastFrame)
         {
            if(§,$>§[i])
            {
               actionMap[i] = §,$>§[i];
               for each(action in §,$>§[i])
               {
                  if(action.commandId == §#!Z§.§8%S§)
                  {
                     ++cnt.value;
                     if(cnt.value > 1)
                     {
                        §1%"§.delay(function():void
                        {
                           §8"%§.§?!W§.§`$d§(§<$Z§.§!M§,§3$z§.SERVER_SAID_I_AM_CHEATER);
                        },this,5000);
                        return;
                     }
                  }
               }
            }
            i++;
         }
         if(lastFrame - firstFrame > this.§1#Y§)
         {
         }
         bulk = new §@&D§(actionMap);
         Application.scene.dispatchEvent(new §1#i§(firstFrame,lastFrame,bulk));
         §^%s§ = lastFrame;
      }
   }
}

