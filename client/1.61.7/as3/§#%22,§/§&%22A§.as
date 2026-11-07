package §#",§
{
   import § !8§.§`!d§;
   import § #k§.*;
   import § K§.§2""§;
   import § m§.§9!^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"%H§.§`"w§;
   import §#!5§.§>S§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&$Y§.§7#T§;
   import §&&6§.*;
   import §'!Z§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#o§.§-#d§;
   import §1#p§.§"Z§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§76§;
   import §4!!§.§]!h§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §9"-§.§?!s§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetColiseumState;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §&"A§ extends §`&-§
   {
      
      private var §?C§:Vector.<§`&-§> = new Vector.<§`&-§>(0);
      
      private var §,"_§:String = "";
      
      private var §6A§:Boolean;
      
      public function §&"A§(param1:MovieClip, param2:Boolean = false)
      {
         var _loc7_:§`&-§ = null;
         this.§6A§ = param2;
         super(param1);
         var _loc3_:Vector.<String> = new <String>["fuzy","reaction","reagent"];
         var _loc4_:Vector.<String> = new <String>[§0$N§.FUZY_QTIP,§0$N§.REACTION_QTIP,§0$N§.REAGENTS_QTIP];
         if(param2)
         {
            _loc3_.unshift("ruby");
            _loc3_.push("vip");
            _loc4_.unshift(§0$N§.RUBY_QTIP);
            _loc4_.push(§0$N§.VIP_TITLE);
         }
         var _loc5_:int = 0;
         var _loc6_:int = int(_loc3_.length);
         while(_loc5_ < _loc6_)
         {
            _loc7_ = new §`&-§(param1[_loc3_[_loc5_]]);
            _loc7_.setQtip(_loc4_[_loc5_]);
            this.§?C§.push(_loc7_);
            _loc5_++;
         }
      }
      
      public function §=&8§(param1:§1%z§) : void
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:§`&-§ = null;
         var _loc8_:int = 0;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(this.§6A§)
         {
            this.§8#V§("ruby",param1.§@$D§(),_loc2_);
         }
         this.§8#V§("fuzy",param1.§#!G§(),_loc2_);
         this.§8#V§("reaction",param1.§=u§(),_loc2_);
         this.§8#V§("reagent",param1.§2"Y§(),_loc2_);
         if(this.§6A§)
         {
            _loc8_ = param1.§7!D§() ? int(param1.§7!D§().getExpireHours() / 24) : 0;
            this.§8#V§("vip",_loc8_,_loc2_);
         }
         if(!this.§6A§)
         {
            return;
         }
         var _loc3_:int = 5;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = _loc2_[_loc4_];
            if(_loc4_ == 0 || !_loc5_.visible)
            {
               _loc5_.x = 0;
            }
            else if(_loc6_)
            {
               §`o§.§4%4§(_loc5_,_loc6_,_loc3_);
            }
            if(_loc5_.visible)
            {
               _loc6_ = _loc5_;
            }
            _loc4_++;
         }
         for each(_loc7_ in this.§?C§)
         {
            if(!_loc7_.isVisible())
            {
               _loc7_.x = 0;
            }
         }
         §`o§.§%&%§(container);
      }
      
      private function §8#V§(param1:String, param2:int, param3:Vector.<DisplayObject>) : void
      {
         var _loc4_:TextField = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         if(!container[param1])
         {
            return;
         }
         container[param1].visible = param2 > 0;
         if(param2 > 0)
         {
            _loc4_ = container[param1]["label"];
            §&$9§.§>&F§(_loc4_,§"-§.§6"j§,this.§,"_§ + param2);
            _loc4_.autoSize = this.§6A§ ? TextFieldAutoSize.LEFT : TextFieldAutoSize.RIGHT;
            if(this.§6A§)
            {
               _loc5_ = container[param1]["icon"];
               _loc6_ = 5;
               _loc5_.x = _loc4_.width + _loc6_;
            }
            param3.push(container[param1]);
         }
      }
      
      public function §`"1§(param1:String) : void
      {
         this.§,"_§ = param1;
      }
      
      override public function destroy() : void
      {
         var _loc1_:§`&-§ = null;
         for each(_loc1_ in this.§?C§)
         {
            _loc1_.destroy();
         }
         this.§?C§.length = 0;
         super.destroy();
      }
   }
}

