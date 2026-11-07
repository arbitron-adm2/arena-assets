package ru.pragmatix.wormix.weapons.boss
{
   import § #m§.§;#^§;
   import § &5§.§%$O§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §%&3§.§[$z§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&%X§.§-#N§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§2"y§;
   import §9%W§.§&!P§;
   import §<!W§.*;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§8%6§;
   import §@!i§.§<!9§;
   import §@!i§.§@$&§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[" §.*;
   import §[$<§.§"#"§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.*;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §+"Y§ extends §&"T§
   {
      
      private var §8$!§:§&$2§;
      
      private var owner:§+%]§;
      
      private var §#!X§:§5$n§ = new §5$n§();
      
      private const §@%4§:uint = 25;
      
      private var §6$q§:uint = 0;
      
      private const §=%@§:uint = 4;
      
      private var §-">§:§&$2§;
      
      public function §+"Y§(param1:§+%]§, param2:Number, param3:Number, param4:§&$2§, param5:§&$2§, param6:§&$2§)
      {
         this.owner = param1;
         this.§8$!§ = param4;
         this.§-">§ = param5;
         this.§#!X§.clipClassName = "AirBomb";
         this.§#!X§.damage = new §&$2§(param6.value);
         this.§#!X§.damageRadius = new §&$2§(50);
         this.§#!X§.explosionRadius = new §&$2§(35);
         super();
         clip = new MovieClip();
         clip.graphics.lineStyle(1,26316,0.05);
         clip.graphics.beginFill(26316,0.05);
         clip.graphics.drawCircle(0,0,param4.value);
         clip.graphics.endFill();
         this.x = param2;
         this.y = param3;
         stable = true;
         Application.scene.§@$I§.§1$+§(this);
         Application.scene.addEventListener(§0%v§.SOT,this.§^% §);
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      private function onFrame(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:Number = NaN;
         var _loc4_:uint = 0;
         if(++this.§6$q§ >= this.§@%4§ + §8"%§.randomSeed.§,!q§(-10,10))
         {
            this.§6$q§ = 0;
            _loc3_ = 5 + §8"%§.randomSeed.§,!q§(-4,0);
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc2_ = §-q§.§&!%§(this.§8$!§.value,x,y);
               §1"-§.explode(§;n§.§1"E§,_loc2_.x,_loc2_.y,20);
               _loc4_++;
            }
         }
      }
      
      private function §^% §(param1:Event) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:uint = 0;
         var _loc5_:§+%]§ = null;
         var _loc6_:uint = 0;
         this.§-$H§();
         if(§8"%§.§?!W§.§4"m§.§;#l§())
         {
            _loc3_ = §8"%§.§?!W§.§4"m§.§6"M§(this.owner);
            if(_loc3_.length != 0)
            {
               for each(_loc2_ in _loc3_)
               {
                  if(§-q§.distance(_loc2_.x,_loc2_.y,x,y) <= this.§8$!§.value + §<H§.§,%P§ - 5)
                  {
                     §'"$§.inflictDamage(new §6#I§(this.owner,x,y,false,1),_loc2_,this.§-">§.value,60,60);
                     disposed = true;
                     return;
                  }
               }
               _loc4_ = 0;
               _loc5_ = §8"%§.§?!W§.§4"m§.activeUnit;
               _loc6_ = 0;
               while(_loc6_ < this.§=%@§)
               {
                  _loc2_ = _loc3_[_loc4_];
                  if(!_loc2_.disposed && _loc2_ != _loc5_)
                  {
                     new §[$z§(this.owner,§-q§.§&!%§(this.§8$!§.value,x,y),this.§#!X§,Math.atan2(_loc2_.y - y,_loc2_.x - x) + §8"%§.randomSeed.§,!q§(-30,30) * Math.PI / 360,25,new Point(_loc2_.x,_loc2_.y),0);
                  }
                  if(_loc4_ >= _loc3_.length - 1)
                  {
                     _loc4_ = 0;
                  }
                  else
                  {
                     _loc4_++;
                  }
                  _loc6_++;
               }
            }
            disposed = true;
         }
      }
      
      private function §-$H§() : void
      {
         if(!this.owner.disposed && §-q§.distance(this.owner.x,this.owner.y,x,y) <= this.§8$!§.value + §<H§.§,%P§ - 5)
         {
            §-#M§.§[&F§(this.owner,2704583,1053157);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.owner = null;
         this.§#!X§ = null;
         Application.scene.removeEventListener(§0%v§.SOT,this.§^% §);
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         super.§[$u§(param1);
      }
   }
}

