package §<%c§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §&#W§.§4#T§;
   import §+$=§.§6#A§;
   import §,#_§.FrameTimer;
   import §0!§.§8$Y§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.§^!9§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §=$#§.§1!$§;
   import §=;§.§@§;
   import §?#g§.Race;
   import §@"!§.§ %@§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §]"C§ extends §-! §
   {
      
      protected var §2&6§:§ %@§ = new § %@§();
      
      private var §-!§:MovieClip;
      
      private var §##E§:MovieClip;
      
      protected var §1#y§:uint;
      
      private var §6%§:MovieClip;
      
      private var §'"_§:MovieClip;
      
      protected var tutorialPanel:§4#T§;
      
      private var §0#a§:§`!d§;
      
      private var §""Y§:§^$E§;
      
      private var §^%Q§:§^%%§;
      
      private var §8&§:§'"-§;
      
      public function §]"C§(param1:uint, param2:Boolean = false)
      {
         super(param1,param2);
         §,&0§ = 1;
         this.§0#a§ = Application.userProfile.getRace();
         Application.userProfile.§&$g§(Race.§+#T§.§]!D§());
         this.§""Y§ = Application.userProfile.§2u§();
         Application.userProfile.§7"i§(null);
         this.§^%Q§ = Application.userProfile.§+!b§();
         Application.userProfile.§;"U§(null);
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc1_:§?!d§ = null;
         _loc1_ = new §?!d§();
         _loc1_.online = false;
         _loc1_.backpackEnabled = false;
         _loc1_.§'",§ = false;
         _loc1_.§^!T§ = false;
         _loc1_.§;Y§ = false;
         _loc1_.§@#-§ = false;
         _loc1_.§2#I§ = false;
         _loc1_.achievements = false;
         _loc1_.§`%?§ = §"%r§.STABLE;
         _loc1_.timer = §,%3§.§!1§;
         _loc1_.§2&6§ = this.§2&6§;
         _loc1_.chatSettings = new §6%b§(§1!$§.NONE,§1!$§.NONE,§1!$§.NONE,§1!$§.NONE);
         return _loc1_;
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         this.§8&§ = Application.userProfile.§3%^§();
         Application.userProfile.§9]§(new §'"-§());
         this.tutorialPanel = new §4#T§();
         Application.scene.§7#o§.addChild(this.tutorialPanel);
         Application.scene.§7#o§.§7%C§();
         Application.scene.§7#o§.§7"@§();
         this.tutorialPanel.§2%s§();
         this.tutorialPanel.hide();
         Application.instance.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§6#,§);
         Application.instance.stage.addEventListener(Event.RESIZE,this.§'&3§);
      }
      
      private function §'&3§(param1:Event) : void
      {
         this.§8#G§();
      }
      
      protected function §6#,§(param1:FullScreenEvent) : void
      {
         this.§8#G§();
      }
      
      protected function §8#G§() : void
      {
         this.tutorialPanel.§2%s§();
         if(this.§-!§)
         {
            this.§-!§.x = Application.scene.§7#o§.§%%H§.x;
            this.§-!§.y = Application.scene.§7#o§.§%%H§.y;
         }
      }
      
      protected function §=$Y§(param1:uint) : void
      {
         if(!this.§-!§)
         {
            this.§-!§ = §6#A§.§!&6§("PointerBagBtn");
            this.§-!§.x = Application.scene.§7#o§.§%%H§.x;
            this.§-!§.y = Application.scene.§7#o§.§%%H§.y;
         }
         Application.scene.§7#o§.§&"U§(this.§-!§,0);
         this.§1#y§ = param1;
         if(!this.§##E§)
         {
            this.§##E§ = §6#A§.§!&6§("ArrowBagMenu");
         }
         if(!this.§6%§)
         {
            this.§6%§ = §6#A§.§!&6§("SelectedItemLight");
         }
         var _loc2_:MovieClip = this.§!%A§(this.§1#y§);
         MovieClip(_loc2_.getChildByName("selection")).addChild(this.§6%§);
         _loc2_.addChild(this.§##E§);
      }
      
      protected function §!%#§() : void
      {
         if(Boolean(this.§-!§) && Application.scene.§7#o§.§+$_§(this.§-!§))
         {
            Application.scene.§7#o§._removeChild(this.§-!§);
         }
         var _loc1_:MovieClip = this.§!%A§(this.§1#y§);
         if(Boolean(this.§##E§) && _loc1_.contains(this.§##E§))
         {
            _loc1_.removeChild(this.§##E§);
         }
         var _loc2_:MovieClip = MovieClip(_loc1_.getChildByName("selection"));
         if(Boolean(this.§6%§) && _loc2_.contains(this.§6%§))
         {
            _loc2_.removeChild(this.§6%§);
         }
      }
      
      override public function clear() : void
      {
         if(this.§-!§)
         {
            if(Application.scene.§7#o§.§+$_§(this.§-!§))
            {
               Application.scene.§7#o§._removeChild(this.§-!§);
            }
            this.§-!§ = null;
         }
         if(this.§##E§)
         {
            if(this.§!%A§(this.§1#y§).contains(this.§##E§))
            {
               this.§!%A§(this.§1#y§).removeChild(this.§##E§);
            }
            this.§##E§ = null;
         }
         if(this.§6%§)
         {
            if(MovieClip(this.§!%A§(this.§1#y§).getChildByName("selection")).contains(this.§6%§))
            {
               MovieClip(this.§!%A§(this.§1#y§).getChildByName("selection")).removeChild(this.§6%§);
            }
            this.§6%§ = null;
         }
         if(this.§'"_§ != null)
         {
            Application.scene.§9$_§(this.§'"_§);
         }
         Application.userProfile.§&$g§(this.§0#a§);
         Application.userProfile.§7"i§(this.§""Y§);
         Application.userProfile.§;"U§(this.§^%Q§);
         Application.userProfile.§9]§(this.§8&§);
         Application.instance.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§6#,§);
         Application.instance.stage.removeEventListener(Event.RESIZE,this.§'&3§);
         super.clear();
      }
      
      private function §!%A§(param1:uint) : MovieClip
      {
         var _loc2_:§0$L§ = Application.scene.§7#o§.§0!#§.§`$!§()[param1] as §0$L§;
         return MovieClip(_loc2_.getContainer());
      }
      
      protected function §]!u§(param1:int, param2:int, param3:Number, param4:uint, param5:Boolean, param6:Boolean, param7:uint, param8:uint = 10) : Shape
      {
         var _loc9_:Number = param1;
         var _loc10_:Number = param2;
         var _loc11_:Number = param4 * Math.cos(param3) / param8;
         var _loc12_:Number = param4 * Math.sin(param3) / param8;
         var _loc13_:Number = (param5 ? §]%G§.§-4§.ax : 0) / param8;
         var _loc14_:Number = (param6 ? §]%G§.§5$r§.ay : 0) / param8;
         var _loc15_:Shape = new Shape();
         _loc15_.graphics.beginFill(15623782);
         var _loc16_:uint = 0;
         while(!§>#9§.point(_loc9_,_loc10_))
         {
            _loc9_ += _loc11_;
            _loc10_ += _loc12_;
            _loc11_ += _loc13_;
            _loc12_ += _loc14_;
            if(param7 > 0)
            {
               _loc16_ += Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_);
               if(_loc16_ > param7)
               {
                  break;
               }
            }
            _loc15_.graphics.drawCircle(_loc9_,_loc10_,3);
         }
         _loc15_.graphics.endFill();
         return _loc15_;
      }
      
      protected function §,![§(param1:Event) : void
      {
         var _loc2_:int = currentUnit.attributes.hp.§#&"§() - currentUnit.hp;
         currentUnit.attributes.hp.§#1§(_loc2_,false,0,null,§8$Y§.§6"y§);
         currentUnit.setSpeedXY(0,0);
      }
      
      protected function showArrow(param1:int, param2:int) : void
      {
         if(!this.§'"_§)
         {
            this.§'"_§ = Application.scene.§[&3§(§+"'§.§]"0§,param1,param2);
            this.§'"_§.gotoAndStop(2);
         }
         else
         {
            this.§'"_§.x = param1;
            this.§'"_§.y = param2;
         }
      }
      
      protected function hideArrow() : void
      {
         Application.scene.§9$_§(this.§'"_§);
         this.§'"_§ = null;
      }
      
      protected function §2"i§(param1:int, param2:int, param3:Function, param4:Boolean = true, param5:Boolean = false) : §+%-§
      {
         var _loc6_:§+%-§ = new §+%-§(param1,param2,param5);
         _loc6_.addEventListener(§0%v§.§&!D§,param3);
         if(param4)
         {
            _loc6_.showArrow();
         }
         return _loc6_;
      }
      
      protected function §+#%§(param1:int, param2:int, param3:uint, param4:int, param5:Function, param6:Boolean = true) : §@#3§
      {
         var _loc7_:§@#3§ = new §@#3§(new Point(param1,param2),§<$c§.§ !=§(param3),param4);
         if(param5 != null)
         {
            §8$a§.§&!#§(_loc7_,§^!9§.NAME,param5);
         }
         if(param6)
         {
            this.showArrow(_loc7_.x,_loc7_.y - _loc7_.clip.height / 2 + 20);
         }
         return _loc7_;
      }
      
      protected function stripWeapon(param1:§+%]§ = null) : void
      {
         if(!param1)
         {
            param1 = currentUnit;
         }
         if(param1)
         {
            if(param1.weapon)
            {
               param1.weapon.§?!K§();
            }
            param1.lastWeapon = null;
         }
      }
      
      protected function §=J§(param1:Class, param2:uint, param3:int, param4:int, param5:uint = 50, param6:Function = null) : void
      {
         var ft:FrameTimer = null;
         var ammoClass:Class = param1;
         var weaponId:uint = param2;
         var x:int = param3;
         var y:int = param4;
         var distance:uint = param5;
         var doNext:Function = param6;
         ft = new FrameTimer(10);
         ft.start();
         ft.addEventListener(FrameTimerEvent.§8$`§,function(param1:Event):void
         {
            var _loc3_:§&"T§ = null;
            var _loc4_:§;#X§ = null;
            var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([ammoClass]);
            for each(_loc3_ in _loc2_)
            {
               if(§^$y§.distance(_loc3_.x - x,_loc3_.y - y) < distance)
               {
                  ft.stop();
                  if(doNext != null)
                  {
                     doNext(_loc3_);
                  }
               }
               else
               {
                  _loc3_.disposed = true;
                  _loc4_ = currentUnit.record.getBattleBackpack();
                  if(!_loc4_.§8&E§(weaponId) || !_loc4_.§8&E§(weaponId).isInfinite())
                  {
                     _loc4_.§0%8§(§<$c§.§ !=§(weaponId),1);
                  }
               }
            }
         });
      }
      
      protected function getText(param1:uint, param2:uint) : String
      {
         return §0$N§.§<N§("LEARNING_" + param1 + "_TEXT_" + param2);
      }
   }
}

