package §5$]§
{
   import § !8§.§`!d§;
   import § &5§.§%$O§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&!?§.§+" §;
   import §&#W§.§?#]§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-%B§.*;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §6$0§.§%$z§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §7$1§.§;$n§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!p§.§&&0§;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@$f§.§2U§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.PumpReactionRates;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   
   public class §`1§ extends §0&'§
   {
      
      private var §&#j§:uint;
      
      public function §`1§(param1:MovieClip)
      {
         super(param1);
      }
      
      override public function setData(param1:Array) : void
      {
         this.store = new §<#D§(param1,§4#B§.numChildren);
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §<%f§(param1 as DisplayObjectContainer);
      }
      
      public function §!"&§(param1:int) : void
      {
         var _loc2_:§<%f§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = int(cells.length);
         while(_loc3_ < _loc4_)
         {
            _loc2_ = cells[_loc3_];
            _loc2_.reset();
            if(_loc3_ == param1)
            {
               _loc2_.§!"&§();
            }
            _loc3_++;
         }
      }
      
      override public function update() : void
      {
         var _loc1_:§<%f§ = null;
         for each(_loc1_ in cells)
         {
            _loc1_.reset();
         }
         super.update();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§&#j§ = §@&&§.getProfile().§"]§().length;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§&#j§)
         {
            _loc1_[_loc2_] = null;
            _loc2_++;
         }
         this.setData(_loc1_);
         this.update();
      }
      
      override public function deactivate() : void
      {
         var _loc1_:§<%f§ = null;
         super.deactivate();
         for each(_loc1_ in cells)
         {
            _loc1_.reset();
         }
      }
   }
}

