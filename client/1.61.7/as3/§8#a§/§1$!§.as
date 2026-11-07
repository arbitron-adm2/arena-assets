package §8#a§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §&"c§.§5$n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §,#A§.*;
   import §0%[§.§0%§;
   import §2#H§.§1%I§;
   import §2#x§.§@!U§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §=!p§.§1e§;
   import §=#g§.*;
   import §@!N§.§&#Z§;
   import §@!N§.§2"e§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §1$!§ extends §`&-§
   {
      
      private const §5"6§:Number = 18;
      
      private var rows:Vector.<§`&-§>;
      
      public function §1$!§()
      {
         super(new Sprite());
      }
      
      public function update(param1:§=?§) : void
      {
         var _loc2_:§@"I§ = null;
         var _loc3_:§`&-§ = null;
         if(this.rows)
         {
            for each(_loc3_ in this.rows)
            {
               removeChild(_loc3_);
            }
            this.rows.length = 0;
         }
         this.rows = new Vector.<§`&-§>(0);
         for each(_loc2_ in param1.getBonusList().§<%i§())
         {
            if(_loc2_.§17§())
            {
               this.§"!Y§(_loc2_.getType(),_loc2_.§@$+§(),_loc2_.§'$o§());
            }
         }
      }
      
      private function §"!Y§(param1:Bonus, param2:String, param3:String) : void
      {
         var _loc4_:§`&-§ = null;
         var _loc7_:Sprite = null;
         _loc4_ = new §`&-§(§6#A§.§!&6§(§+"'§.§&o§));
         var _loc5_:TextField = _loc4_.§'%s§("labelField");
         var _loc6_:TextField = _loc4_.§'%s§("valueField");
         _loc5_.htmlText = "<b><font color=\'#524336\'>" + param2 + "</b></font>" + ":";
         _loc6_.htmlText = "<b><font color=\'#538E06\'>" + param3 + "</b></font>";
         _loc6_.autoSize = TextFieldAutoSize.LEFT;
         addChild(_loc4_);
         _loc5_.width = _loc4_.getContainer().parent.parent.width - _loc6_.width - _loc5_.x;
         _loc6_.x = _loc4_.getContainer().parent.parent.width - _loc6_.width - 10;
         _loc4_.y = this.rows.length * this.§5"6§;
         if(param1.§2!q§())
         {
            _loc7_ = §&#Z§.§@"R§(param1.§2!q§(),_loc5_.height);
            _loc4_.§?!C§(_loc7_);
            _loc7_.y = -3;
            _loc5_.x = _loc7_.width + 5;
            _loc7_.getChildByName("back").visible = false;
            _loc4_.getChildByName("dot").visible = false;
         }
         this.rows.push(_loc4_);
      }
   }
}

