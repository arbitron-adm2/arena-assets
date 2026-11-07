package ru.pragmatix.wormix.game
{
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.HpChangeEvent;
   import §3#a§.§-#M§;
   import §4#2§.*;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<!W§.§;#A§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §?$L§.§&$9§;
   import §@!W§.§8!S§;
   import §@!i§.§"-§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §1W§
   {
      
      public var §%$E§:Array = [];
      
      public var §%%u§:Array = [];
      
      public var §&<§:§?"&§ = new §?"&§(false);
      
      public var §"!#§:§?"&§ = new §?"&§(false);
      
      private var settings:§?!d§;
      
      public function §1W§(param1:§?!d§)
      {
         super();
         this.settings = param1;
      }
      
      public function record(param1:int, param2:UserProfile, param3:int = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:WeaponStructure = null;
         if(!this.settings.§`!I§)
         {
            return;
         }
         if(this.settings.§=#%§.length > 0)
         {
            for each(_loc5_ in this.settings.§=#%§)
            {
               if(param1 == _loc5_.getId())
               {
                  _loc4_ = true;
                  break;
               }
            }
         }
         else
         {
            _loc4_ = true;
         }
         if(_loc4_)
         {
            if(Application.userProfile.equals(param2))
            {
               this.§5#R§(param1,this.§%$E§,param3);
            }
            this.§5#R§(param1,this.§%%u§,param3);
         }
      }
      
      private function §5#R§(param1:int, param2:Array, param3:int = 1) : void
      {
         var _loc4_:WeaponStructure = null;
         for each(_loc4_ in param2)
         {
            if(_loc4_.getId() == param1)
            {
               _loc4_.addCount(param3);
               return;
            }
         }
         if(param3 > 0)
         {
            param2.push(new WeaponStructure(param1,param3));
         }
      }
      
      public function reset() : void
      {
         this.§&<§.value = false;
         this.§"!#§.value = false;
         this.§%%u§ = [];
      }
   }
}

