package ru.pragmatix.flox.gui.controls
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § #m§.§[&H§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §&"c§.§!!q§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §+$=§.*;
   import §+%S§.§2$#§;
   import §+%S§.§;!4§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-%B§.*;
   import §-&5§.*;
   import §-@§.§0"e§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1!#§.§-e§;
   import §2#s§.*;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §4u§.§[%u§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7!B§.§8%%§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=&!§.§4$z§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§8"e§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.§28§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3y§;
   import ru.pragmatix.wormix.messages.client.BuyReactionRate;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.NeedMoneyResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   use namespace gestouch_internal;
   
   public class §8L§ extends §@& §
   {
      
      protected var items:Object = {};
      
      protected var §[#j§:Object = {};
      
      private var § "p§:§&#>§;
      
      protected var §=$B§:§&#>§;
      
      protected var §#f§:Boolean = true;
      
      protected var §1%n§:String;
      
      public function §8L§(param1:§&#>§ = null)
      {
         super(new Sprite());
         this.§=$B§ = param1;
         this.§1%n§ = id + "_panel_group";
      }
      
      public function §&#[§(param1:§&#>§) : void
      {
         this.§=$B§ = param1;
      }
      
      public function §3#J§(param1:§&#>§, param2:§8"@§ = null) : void
      {
         if(!this.§=$B§)
         {
            this.§=$B§ = param1;
         }
         this.items[param1.id] = param1;
         this.§[#j§[param1.id] = param2;
         if(param2)
         {
            this.§9$[§(param2,param1);
         }
      }
      
      public function §"!b§(param1:String) : §&#>§
      {
         return this.items[param1] as §&#>§;
      }
      
      protected function §9$[§(param1:§8"@§, param2:§&#>§) : void
      {
         param1.§-%]§(this.§1%n§);
         param1.§[!u§(§1%"§.§]$<§(this.§?x§,this,[param1,param2]));
      }
      
      protected function §?x§(param1:§8"@§, param2:§&#>§) : void
      {
         this.§7!g§(param2);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         this.activate();
         super.show(param1);
      }
      
      override public function activate() : void
      {
         if(this.§#f§)
         {
            this.§7!g§(this.§ "p§ ? this.§ "p§ : this.§=$B§);
         }
         super.activate();
      }
      
      public function §1#w§(param1:String) : void
      {
         if(!this.§"!b§(param1))
         {
            return;
         }
         this.§7!g§(this.§"!b§(param1));
      }
      
      public function §7!g§(param1:§&#>§) : void
      {
         var _loc2_:§8"@§ = §8"@§(this.§[#j§[param1.id]);
         if(_loc2_)
         {
            _loc2_.setPressed(true);
         }
         if(Boolean(this.§ "p§) && param1 != this.§ "p§)
         {
            this.§ "p§.deactivate();
         }
         param1.activate();
         if(param1 == this.§ "p§)
         {
            return;
         }
         addChildAt(param1,0);
         if(this.§ "p§)
         {
            removeChild(this.§ "p§);
         }
         this.§ "p§ = param1;
      }
      
      public function get §#M§() : §&#>§
      {
         return this.§ "p§;
      }
      
      override public function destroy() : void
      {
         var _loc1_:§&#>§ = null;
         for each(_loc1_ in this.items)
         {
            _loc1_.destroy();
         }
         this.items = null;
         this.§=$B§ = null;
         §'$h§.§,!-§(this.§1%n§);
         super.destroy();
      }
   }
}

