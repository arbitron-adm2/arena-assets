package §4#`§
{
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2#H§.§?#S§;
   import §5!b§.*;
   import §5%S§.§>&-§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§>"D§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §9"-§.§?!s§;
   import §9%k§.*;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §?$7§.§6%k§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §[" §.§1&@§;
   import §["3§.§ V§;
   import §]$&§.§2&2§;
   import §]^§.§-$T§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.easing.Back;
   import com.greensock.easing.Linear;
   import com.greensock.events.TweenEvent;
   import com.greensock.loading.core.LoaderItem;
   import com.greensock.plugins.*;
   import config.achievements.*;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.§@%`§;
   import ru.pragmatix.wormix.weapons.interfaces.§^"L§;
   
   public class §]"h§ extends §0&'§
   {
      
      private var §["<§:Array = [];
      
      public function §]"h§(param1:DisplayObject)
      {
         super(param1 as DisplayObjectContainer);
      }
      
      override public function setData(param1:Array) : void
      {
         var _loc4_:§&"T§ = null;
         var _loc5_:int = 0;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_.push(param1[_loc3_]);
            _loc3_++;
         }
         for each(_loc4_ in _loc2_)
         {
            if(_loc2_.length != this.§["<§.length || this.§["<§.indexOf(_loc4_) == -1)
            {
               this.§["<§ = [];
               _loc5_ = 0;
               while(_loc5_ < param1.length)
               {
                  this.§["<§.push(param1[_loc5_]);
                  _loc5_++;
               }
               super.setData(param1);
               super.update();
            }
         }
      }
      
      override protected function §&%p§() : DisplayObjectContainer
      {
         return §#!`§();
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §1&@§(param1 as MovieClip);
      }
      
      override protected function §%&9§() : void
      {
         §0#P§ = false;
         §7%c§ = true;
         §[%T§ = true;
         super.§%&9§();
      }
      
      override protected function okAction() : void
      {
         var _loc1_:§]$;§ = null;
         _loc1_ = §8"%§.§?!W§.§4"m§;
         var _loc2_:§,%r§ = _loc1_.activeUnit.weapon;
         if(Boolean(_loc2_ && _loc2_ is §@%`§) && Boolean(§@%`§(_loc2_).isLaunched()) && _loc2_ is §^"L§)
         {
            §#!Z§.fire(§#!Z§.§"#t§,§&"T§(getSelected()).getId());
         }
         else if(_loc1_.activeUnit.§0!e§ && getSelected() is §>"D§)
         {
            §#!Z§.fire(§#!Z§.§"#t§,§>"D§(getSelected()).getId());
         }
         else
         {
            §>&-§.§[$9§(§0$N§.§%! §("CANT_WEAR_HAT"),true);
         }
         super.okAction();
      }
      
      override public function hide() : void
      {
         setVisible(false);
      }
   }
}

