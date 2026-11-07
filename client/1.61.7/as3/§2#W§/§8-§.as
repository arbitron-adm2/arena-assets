package §2#W§
{
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%"§.§[!^§;
   import §0&F§.§0%v§;
   import §4f§.§-&§;
   import §6"'§.§>"V§;
   import §7$t§.§9#x§;
   import §7$t§.§[!X§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.ai.§3+§;
   import ru.pragmatix.wormix.game.ai.§5&6§;
   import ru.pragmatix.wormix.game.ai.§<%&§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §8-§ extends §`&-§
   {
      
      private var §##F§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private var buttons:Vector.<§?%>§> = new Vector.<§?%>§>(0);
      
      private var callback:Function;
      
      private var type:int;
      
      private var index:int;
      
      public function §8-§(param1:DisplayObjectContainer, param2:Function)
      {
         var _loc3_:String = param1.name.replace("chest","");
         this.index = int(_loc3_);
         this.callback = param2;
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:§?%>§ = null;
         super.§@"o§(param1);
         §7&5§.§>&<§(§'%s§("empty.text"),§0$N§.EMPTY_TEXT.replace("!",""));
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            _loc3_ = getChildByName("chest" + _loc2_);
            _loc4_ = §!&5§.§7#[§(_loc3_);
            _loc4_.setText(§0$N§.BUTTON_OPEN,§"-§.§+$m§);
            _loc4_.setText(§>"V§.§9!J§(_loc2_ + 1).toString(),§"-§.§6"j§,"count");
            _loc4_.§[!u§(this.§&!4§);
            this.§##F§.push(_loc3_);
            this.buttons.push(_loc4_);
            _loc2_++;
         }
         this.§!]§(§>"V§.EMPTY);
      }
      
      public function §!]§(param1:int) : void
      {
         this.type = param1;
         var _loc2_:Boolean = param1 == 0;
         getChildByName("empty").visible = _loc2_;
         var _loc3_:int = 0;
         while(_loc3_ < this.§##F§.length)
         {
            this.§##F§[_loc3_].visible = _loc3_ + 1 == param1;
            _loc3_++;
         }
      }
      
      private function §&!4§(param1:Event) : void
      {
         if(this.callback != null)
         {
            this.callback(this.index,this.type);
         }
      }
   }
}

