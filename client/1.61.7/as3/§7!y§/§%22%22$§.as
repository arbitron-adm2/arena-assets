package §7!y§
{
   import § %?§.§;!T§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §%$!§.§@!o§;
   import §&#h§.*;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2!-§.GameObjectDisposed;
   import §2#H§.§"§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §6$z§.§%&&§;
   import §6$z§.BonusStat;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$L§.§ "N§;
   import §?%J§.*;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §["3§.§ V§;
   import §]^§.§3$f§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import config.§28§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §""$§ extends BonusStat implements §%&&§
   {
      
      public function §""$§()
      {
         super();
      }
      
      override public function add(param1:int) : void
      {
         super.add(param1);
         this.§3%<§(param1);
      }
      
      override public function subtract(param1:int) : void
      {
         super.subtract(param1);
         this.§3%<§(-param1);
      }
      
      private function §3%<§(param1:int) : void
      {
         var _loc2_:§+%]§ = null;
         owner.attributes.attack.§5#l§(param1);
         if(owner.squad)
         {
            for each(_loc2_ in owner.squad.§1!n§())
            {
               if(_loc2_ != owner)
               {
                  _loc2_.attributes.attack.§5#l§(param1);
               }
            }
         }
      }
      
      public function §[%x§(param1:§+%]§) : void
      {
         param1.attributes.attack.§5#l§(§]%&§.value);
      }
   }
}

