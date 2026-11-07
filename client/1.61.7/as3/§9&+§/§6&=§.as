package §9&+§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § %f§.MechPuppet;
   import § &5§.§@N§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2!I§;
   import §-&5§.*;
   import §-8§.§3!x§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2#x§.*;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §?#g§.§&"P§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §6&=§ implements §>&5§
   {
      
      private var log:§&`§ = new §&`§(§6&=§);
      
      private var weapon:§,%r§;
      
      private var §%#3§:String;
      
      private var §#"c§:Object;
      
      private var §%#D§:String = "none";
      
      private var §6%_§:String;
      
      private var §-",§:Object;
      
      private var clip:MovieClip;
      
      public var dx:int = 0;
      
      public var dy:int = 0;
      
      public var §>"1§:int = 0;
      
      public var §!!y§:int = 0;
      
      public function §6&=§(param1:§,%r§, param2:String, param3:Object, param4:String = null, param5:Object = null)
      {
         super();
         this.weapon = param1;
         this.§%#3§ = param2;
         this.§#"c§ = param3;
         this.§6%_§ = param4;
         this.§-",§ = param5;
      }
      
      public function activate(param1:§+%]§) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc2_:§`!d§ = param1.graphics.§]!D§();
         var _loc3_:§&"P§ = param1.graphics.§5"L§();
         if(this.§%#3§ != null && this.§%#3§ != "")
         {
            _loc4_ = this.§%#3§;
         }
         this.dx = 0;
         this.dy = 0;
         var _loc5_:Object = this.§=$%§(this.§#"c§,_loc2_);
         if(_loc5_)
         {
            if(_loc5_.clipClass)
            {
               _loc4_ = _loc5_.clipClass;
            }
            if(_loc5_.x)
            {
               this.dx = _loc5_.x;
            }
            if(_loc5_.y)
            {
               this.dy = _loc5_.y;
            }
            if(_loc5_.hideHands)
            {
               this.§%#D§ = _loc5_.hideHands;
            }
            else
            {
               this.§%#D§ = "none";
            }
         }
         if(_loc4_)
         {
            this.clip = §6#A§.§!&6§(_loc4_);
            this.showHand(_loc2_,_loc3_,this.clip);
            this.weapon.clip = this.clip;
            param1.§&$I§(this.clip,this.dx,this.dy);
         }
         if(this.§6%_§ != null && this.§6%_§ != "")
         {
            _loc6_ = this.§6%_§;
         }
         this.§>"1§ = 0;
         this.§!!y§ = 0;
         if(this.§-",§)
         {
            _loc7_ = this.§=$%§(this.§-",§,_loc2_);
            if(_loc7_)
            {
               if(_loc7_.clipClass)
               {
                  _loc6_ = _loc7_.clipClass;
               }
               if(_loc7_.x)
               {
                  this.§>"1§ = _loc7_.x;
               }
               if(_loc7_.y)
               {
                  this.§!!y§ = _loc7_.y;
               }
            }
         }
         if(_loc6_)
         {
            this.weapon.secondaryClip = §6#A§.§!&6§(_loc6_);
            param1.§&$I§(this.weapon.secondaryClip,this.§>"1§,this.§!!y§);
         }
      }
      
      public function deactivate(param1:§+%]§) : void
      {
         if(this.weapon.clip != null)
         {
            param1.§4%Y§(this.weapon.clip);
            this.weapon.clip = null;
         }
         if(this.weapon.secondaryClip != null)
         {
            param1.§4%Y§(this.weapon.secondaryClip);
            this.weapon.secondaryClip = null;
         }
      }
      
      public function §]%W§() : String
      {
         return this.§%#D§;
      }
      
      public function getClip() : MovieClip
      {
         return this.clip;
      }
      
      public function showHand(param1:§`!d§, param2:§&"P§, param3:MovieClip) : void
      {
         var handClipName:String;
         var hand:MovieClip = null;
         var childAt:DisplayObject = null;
         var i:int = 0;
         var n:int = 0;
         var race:§`!d§ = param1;
         var skin:§&"P§ = param2;
         var wpClip:MovieClip = param3;
         var hands:Array = [];
         try
         {
            hand = wpClip.getChildByName("hand") as MovieClip;
            if(hand)
            {
               hands.push(hand);
            }
            hand = wpClip.getChildByName("second_hand") as MovieClip;
            if(hand)
            {
               hands.push(hand);
            }
         }
         catch(e:Error)
         {
            log.error("Error in showHand:" + e.toString());
         }
         handClipName = skin.§^#;§() + race.configName;
         for each(hand in hands)
         {
            i = 0;
            n = hand.numChildren;
            while(i < n)
            {
               childAt = hand.getChildAt(i);
               if(childAt.name != handClipName)
               {
                  childAt.visible = false;
               }
               i++;
            }
         }
      }
      
      private function §=$%§(param1:Object, param2:§`!d§) : Object
      {
         if(param1)
         {
            if(param1[param2.configName])
            {
               return param1[param2.configName];
            }
            return param1[§9%+§.§>$M§];
         }
         return {};
      }
   }
}

