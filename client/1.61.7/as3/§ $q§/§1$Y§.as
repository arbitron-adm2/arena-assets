package § $q§
{
   import § !8§.§`!d§;
   import § "%§.§0$[§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%E§.§5%C§;
   import §%L§.§#&%§;
   import §&"c§.§5$n§;
   import §&$Y§.*;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §0!§.§8$Y§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §4#`§.*;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §5o§.ArmoryHelpWindow;
   import §6#Z§.§&!Z§;
   import §7!B§.§&"T§;
   import §7"Q§.§0-§;
   import §9%W§.§`"y§;
   import §<!<§.§4"K§;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=!p§.§8#x§;
   import §="z§.§<$t§;
   import §=#g§.*;
   import §=&!§.§4$z§;
   import §?#g§.§&"P§;
   import §@!N§.§3!3§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]#[§.*;
   import §]$v§.§]%_§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §1$Y§ extends §0-§ implements §^c§
   {
      
      private var §0"M§:MovieClip;
      
      private var §+v§:Vector.<MovieClip>;
      
      private var §7"f§:String = "loading";
      
      public function §1$Y§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.§0$s§();
         this.§&#F§(true);
      }
      
      private function §0$s§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:MovieClip = null;
         if(!loading)
         {
            return;
         }
         this.§0"M§ = loading.getChildByName(this.§7"f§) as MovieClip;
         if(!this.§0"M§)
         {
            _loc2_ = "loading.loading";
            _loc3_ = §'$a§(_loc2_);
            if(_loc3_)
            {
               this.§0"M§ = §'$a§(_loc2_ + "." + this.§7"f§);
            }
         }
         var _loc1_:MovieClip = loading.getChildByName("loadings") as MovieClip;
         if(_loc1_)
         {
            this.§+v§ = new Vector.<MovieClip>(0);
            _loc4_ = 0;
            _loc5_ = _loc1_.numChildren;
            while(_loc4_ < _loc5_)
            {
               _loc6_ = _loc1_.getChildAt(_loc4_) as MovieClip;
               this.§+v§[this.§+v§.length] = _loc6_;
               _loc4_++;
            }
         }
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §[%T§ = true;
         §<"b§ = true;
         §,!n§ = true;
         §]!I§ = false;
      }
      
      override public function setData(param1:Array) : void
      {
         this.store = new §4"K§(param1,§4#B§.numChildren);
      }
      
      override protected function §;""§(param1:Array) : void
      {
         if(isShown())
         {
            super.§;""§(param1);
            this.§&#F§(false);
         }
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         §4#B§.visible = !param1;
         §'$a§("emptyCellsLayer").visible = !param1;
         if(param1)
         {
            this.playAnimations();
         }
         else
         {
            this.stopAnimations();
         }
      }
      
      override public function hide() : void
      {
         this.stopAnimations();
         super.hide();
      }
      
      public function playAnimations() : void
      {
         var _loc1_:MovieClip = null;
         if(loading.visible)
         {
            if(this.§0"M§)
            {
               this.§0"M§.play();
            }
            if(this.§+v§)
            {
               for each(_loc1_ in this.§+v§)
               {
                  _loc1_.play();
               }
            }
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§0"M§)
         {
            this.§0"M§.stop();
         }
         if(this.§+v§)
         {
            for each(_loc1_ in this.§+v§)
            {
               _loc1_.stop();
            }
         }
      }
   }
}

