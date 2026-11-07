package ru.pragmatix.wormix.controller
{
   import §!!i§.§@&&§;
   import §+%O§.§4%§;
   import §0%[§.Cookie;
   import §0&F§.§`"^§;
   import §4!x§.§8#u§;
   import §=#g§.§&%5§;
   import §=#g§.§`G§;
   import §?$L§.§ "N§;
   import §@!i§.§95§;
   import flash.display.Stage;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §+$w§ extends §4%§
   {
      
      public static const §0"$§:Number = 1;
      
      public static const §%!s§:Number = 1.2;
      
      public static const §"!u§:Number = 0.55;
      
      public static const §,D§:uint = 1;
      
      private var inBattle:Boolean = false;
      
      private var §[%D§:§&%5§;
      
      private var curScreenResolution:§&%5§;
      
      private const COOKIE_NAME_SCREEN_RESOLUTION_W:String = "COOKIE_NAME_SCREEN_RESOLUTION_W";
      
      private const COOKIE_NAME_SCREEN_RESOLUTION_H:String = "COOKIE_NAME_SCREEN_RESOLUTION_H";
      
      private var §]%^§:Boolean = false;
      
      public function §+$w§(param1:Stage)
      {
         super(param1);
         param1.addEventListener(FullScreenEvent.FULL_SCREEN,this.§6#,§);
         init();
         this.§[%D§ = new §&%5§(Capabilities.screenResolutionX,Capabilities.screenResolutionY);
         var _loc2_:int = int(Cookie.getValue(this.COOKIE_NAME_SCREEN_RESOLUTION_W,-1));
         var _loc3_:int = int(Cookie.getValue(this.COOKIE_NAME_SCREEN_RESOLUTION_H,-1));
         if(_loc2_ == -1 || _loc3_ == -1)
         {
            this.curScreenResolution = this.§[%D§;
         }
         else
         {
            this.curScreenResolution = new §&%5§(_loc2_,_loc3_);
         }
      }
      
      private static function §-!a§() : void
      {
         §8"%§.§#m§.§@!b§(Application.§5!>§.§1$i§.§6#+§());
         var _loc1_:§@&&§ = Application.§5!>§.§^P§;
         if(Boolean(_loc1_) && Boolean(_loc1_.§#M§))
         {
            §8"%§.§#m§.§@!b§(_loc1_.§#M§.getContainer());
         }
      }
      
      private function §6#,§(param1:FullScreenEvent) : void
      {
         Application.§5!>§.§1$i§.mainInterface.§ $`§.§6$i§();
         if(this.inBattle)
         {
            this.§#!u§();
            this.§2w§(this.curScreenResolution);
         }
         if(stage.displayState == StageDisplayState.NORMAL)
         {
            this.§;!_§(Social.settings.§"!5§());
         }
         else
         {
            this.§;!_§(false);
         }
         this.§#$t§();
         update();
         §8#u§.§!s§();
      }
      
      public function §5$q§() : void
      {
         var MIN_REQUIRED_VERSION:Number = 11.3;
         var curVersion:String = Capabilities.version.split(" ")[1];
         var version:Number = Number(curVersion.split(",")[0] + "." + curVersion.split(",")[1]);
         if(version < MIN_REQUIRED_VERSION)
         {
            §,#W§.§'!+§(§0$N§.BUTTON_CANCEL,§0$N§.UPDATE_YOUR_PLAYER,§,#W§.§6!m§).show();
            return;
         }
         try
         {
            if(stage.displayState == StageDisplayState.NORMAL)
            {
               stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
            }
            else
            {
               stage.displayState = StageDisplayState.NORMAL;
            }
         }
         catch(e:SecurityError)
         {
            §,#W§.§'!+§(§0$N§.BUTTON_CANCEL,§0$N§.UPDATE_YOUR_PLAYER,§,#W§.§6!m§).show();
         }
      }
      
      private function §#!%§() : void
      {
         if(this.inBattle)
         {
            if(this.§5!3§())
            {
               this.§2w§(this.curScreenResolution);
            }
         }
         else if(this.§?&8§())
         {
            Application.§5!>§.getContainer().scrollRect = §-!'§();
         }
         else
         {
            Application.§5!>§.getContainer().scrollRect = new Rectangle(0,0,Application.§@#V§,Application.§#"r§);
         }
         if(this.§5!3§())
         {
            stage.scaleMode = StageScaleMode.NO_SCALE;
            § "N§.§;$E§(Capabilities.screenResolutionX,Capabilities.screenResolutionY);
            stage.align = StageAlign.TOP_LEFT;
            return;
         }
         stage.scaleMode = StageScaleMode.NO_SCALE;
         if(this.§?&8§() || this.inBattle)
         {
            § "N§.§;$E§(stage.stageWidth,stage.stageHeight);
            stage.align = StageAlign.TOP_LEFT;
         }
         else
         {
            § "N§.§;$E§(Application.§@#V§,Application.§#"r§);
            stage.align = StageAlign.TOP;
         }
      }
      
      public function §5&"§() : void
      {
         this.inBattle = true;
         this.§#!%§();
         if(this.§5!3§())
         {
            §8"%§.§#m§.§7%k§();
         }
         §1%m§(Social.settings.§8!?§());
         §8$a§.§%!E§(1,function():void
         {
            changeResolution(curScreenResolution);
            Application.scene.§7#o§.§#$t§();
            update();
         });
      }
      
      public function §#!u§() : void
      {
         var _loc1_:uint = Social.settings.§2%$§();
         var _loc2_:uint = Social.settings.§;`§();
         var _loc3_:Rectangle = §-!'§();
         if(_loc3_.width > _loc1_)
         {
            _loc3_.width = _loc1_;
         }
         if(_loc3_.height > _loc2_)
         {
            _loc3_.height = _loc2_;
         }
         § "N§.§!$!§(_loc3_);
         Application.scene.§>$H§(this.§5!3§());
         Application.scene.§7#o§.§#$t§();
         Application.scene.§ !4§();
      }
      
      public function changeResolution(param1:§&%5§) : void
      {
         this.curScreenResolution = param1;
         Cookie.setValue(this.COOKIE_NAME_SCREEN_RESOLUTION_W,this.curScreenResolution.§@%<§());
         Cookie.setValue(this.COOKIE_NAME_SCREEN_RESOLUTION_H,this.curScreenResolution.§'$#§());
         if(this.inBattle)
         {
            this.§2w§(this.curScreenResolution);
            if(this.§5!3§())
            {
               this.§#!u§();
            }
         }
         § "N§.§;$E§(stage.stageWidth,stage.stageHeight);
         update();
      }
      
      public function §+%?§() : void
      {
         this.inBattle = false;
         this.§#$t§();
      }
      
      public function §#$t§() : void
      {
         if(this.§ !i§())
         {
            this.§2w§(new §&%5§(Application.instance.stage.stageWidth,Application.instance.stage.stageHeight));
         }
         else
         {
            this.§2w§(this.§[%D§);
         }
         §-!a§();
         §1%m§(this.§ !i§());
         this.§#!%§();
         Application.§5!>§.§<!z§.§;"t§();
         if(this.inBattle)
         {
            §8"%§.§#m§.§7%k§();
         }
         else if(this.§?&8§())
         {
            §8"%§.§#m§.§^!<§(Application.§5!>§.§1$i§.§6#+§());
            Application.§5!>§.§1$i§.dispatchEvent(new Event(§`"^§.SCENE_RESIZED));
         }
      }
      
      public function §5!3§() : Boolean
      {
         return stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
      }
      
      public function §0s§() : §&%5§
      {
         return this.curScreenResolution;
      }
      
      public function §%%q§() : §&%5§
      {
         return this.§[%D§;
      }
      
      public function §[#l§() : void
      {
         if(this.§5!3§())
         {
            this.§5$q§();
         }
      }
      
      private function §2w§(param1:§&%5§) : void
      {
         stage.fullScreenSourceRect = new Rectangle(0,0,param1.§@%<§(),param1.§'$#§());
      }
      
      public function §"$=§() : §&%5§
      {
         var _loc1_:§&%5§ = null;
         if(this.§5!3§())
         {
            _loc1_ = this.§0s§();
         }
         else if(Social.settings.§8!?§())
         {
            _loc1_ = new §&%5§(Application.instance.stage.stageWidth,Application.instance.stage.stageHeight);
         }
         else
         {
            _loc1_ = §&%5§.DEFAULT;
         }
         return _loc1_;
      }
      
      public function getCorrectResolution2() : §&%5§
      {
         var _loc1_:§&%5§ = null;
         if(this.§5!3§())
         {
            _loc1_ = this.§[%D§;
         }
         else if(this.§]%^§)
         {
            _loc1_ = new §&%5§(Application.instance.stage.stageWidth,Application.instance.stage.stageHeight);
         }
         else
         {
            _loc1_ = §&%5§.DEFAULT;
         }
         return _loc1_;
      }
      
      override protected function §-!,§(param1:Rectangle) : void
      {
         if(this.inBattle)
         {
            this.§#!u§();
         }
         else
         {
            this.§#$t§();
         }
         if(Application.scene)
         {
            Application.scene.dispatchEvent(new Event(§`"^§.SCENE_RESIZED));
         }
      }
      
      public function §;!_§(param1:Boolean) : void
      {
         this.§]%^§ = param1;
      }
      
      public function § !i§() : Boolean
      {
         return this.§]%^§;
      }
      
      public function §?&8§() : Boolean
      {
         return this.§5!3§() || this.§ !i§();
      }
      
      public function §6#5§() : Boolean
      {
         var _loc1_:§&%5§ = this.§"$=§();
         if(_loc1_.§@%<§() / _loc1_.§'$#§() > 1.4)
         {
            return true;
         }
         return false;
      }
      
      public function §;#9§() : int
      {
         var _loc1_:§&%5§ = this.§0s§();
         return this.§'"8§(_loc1_);
      }
      
      public function §'#c§() : int
      {
         var _loc1_:§&%5§ = this.§%%q§();
         return this.§'"8§(_loc1_);
      }
      
      public function §'"8§(param1:§&%5§) : int
      {
         var _loc2_:Vector.<§&%5§> = this.§=%!§();
         var _loc3_:int = 0;
         var _loc4_:int = int(_loc2_.length);
         while(_loc3_ < _loc4_)
         {
            if(param1.§[!d§(_loc2_[_loc3_]))
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return _loc4_ - 1;
      }
      
      public function §=%!§() : Vector.<§&%5§>
      {
         var _loc1_:§&%5§ = null;
         _loc1_ = this.§%%q§();
         var _loc2_:§`G§ = §95§.§[$F§(_loc1_);
         return _loc2_.§+"t§;
      }
   }
}

