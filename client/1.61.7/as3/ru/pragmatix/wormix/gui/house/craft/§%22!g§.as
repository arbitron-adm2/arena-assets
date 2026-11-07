package ru.pragmatix.wormix.gui.house.craft
{
   import § #9§.*;
   import § $q§.§3U§;
   import § &5§.§=#P§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §2#s§.*;
   import §4!K§.§4%E§;
   import §4!K§.§>#_§;
   import §4!K§.§^%A§;
   import §4'§.§^"p§;
   import §5!,§.§?!P§;
   import §6"'§.§9$Z§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?>§.§0!7§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §]$v§.§1>§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§5%?§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §"!g§ extends §3U§
   {
      
      private var §2$l§:TextField;
      
      private var lock:MovieClip;
      
      private var §[%&§:MovieClip;
      
      public function §"!g§(param1:DisplayObject, param2:Boolean = false)
      {
         var _loc3_:DisplayObjectContainer = DisplayObjectContainer(param1);
         super(_loc3_.getChildByName("icon"),param2);
         this.§2$l§ = _loc3_.getChildByName("textNew") as TextField;
         this.§2$l§.visible = false;
         this.§2$l§.mouseEnabled = false;
         this.lock = _loc3_.getChildByName("lock") as MovieClip;
         this.lock.mouseEnabled = false;
         this.§[%&§ = _loc3_.getChildByName("lockBg") as MovieClip;
         this.§[%&§.mouseEnabled = false;
      }
      
      public function §[#"§(param1:Boolean, param2:§^"p§ = null) : void
      {
         this.§2$l§.visible = param1;
         this.§2$l§.text = param2 ? §^"p§.getText(param2) : "";
      }
      
      public function §"e§(param1:Boolean) : void
      {
         this.lock.visible = param1;
         this.§[%&§.visible = param1;
      }
   }
}

