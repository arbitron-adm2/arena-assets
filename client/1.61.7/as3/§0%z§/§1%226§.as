package §0%z§
{
   import § !P§.§<#q§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#!5§.§>S§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §-8§.§3!x§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.*;
   import §2#i§.§+%z§;
   import §5"J§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §9![§.§^§;
   import §<!^§.§'$e§;
   import §<%k§.§`!v§;
   import §?"j§.*;
   import §?$7§.§!§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@#K§.§-§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class §1"6§ extends §0&'§ implements §^c§
   {
      
      private var scrollPane:§>S§;
      
      private var §!#R§:Vector.<MovieClip>;
      
      public function §1"6§()
      {
         super(§6#A§.§!&6§(§+"'§.§9"U§));
         §&$9§.§>&F§(§'%s§("loading.text"),§"-§.§+$m§,§0$N§.LOADING);
         this.§!#R§ = §3!3§.§#"R§(§'$a§("loading.loading"));
         this.§,"Y§();
         setData(§^t§.getBosses());
         this.scrollPane.update();
         this.activate();
      }
      
      override protected function §&%p§() : DisplayObjectContainer
      {
         this.scrollPane = new §>S§(getChildByName("scrollPane") as MovieClip);
         var _loc1_:Sprite = new Sprite();
         DisplayObjectContainer(this.scrollPane.getChildByName("content")).addChild(_loc1_);
         _loc1_.y = 3;
         return _loc1_;
      }
      
      private function §,"Y§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         var _loc2_:int = int(§^t§.getBosses().length);
         while(_loc1_ < _loc2_)
         {
            _loc3_ = §6#A§.§!&6§(§+"'§.§4[§);
            §4#B§.addChild(_loc3_);
            if(_loc1_ > 0)
            {
               §`o§.§1$T§(_loc3_,§4#B§,0);
            }
            _loc1_++;
         }
         §<#X§();
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§+y§ = new §+y§(param1 as DisplayObjectContainer);
         §4"0§.§^%T§(_loc2_,5);
         return _loc2_;
      }
      
      public function §>$V§(param1:§<#q§) : void
      {
         var _loc2_:§+y§ = null;
         for each(_loc2_ in cells)
         {
            _loc2_.§2%V§(param1);
         }
         this.§&#F§(false);
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         this.scrollPane.setVisible(!param1);
      }
      
      public function playAnimations() : void
      {
         var _loc1_:§+y§ = null;
         if(isVisible())
         {
            §3!3§.§<%W§(this.§!#R§);
            for each(_loc1_ in cells)
            {
               _loc1_.playAnimations();
            }
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:§+y§ = null;
         §3!3§.§>!j§(this.§!#R§);
         for each(_loc1_ in cells)
         {
            _loc1_.stopAnimations();
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.scrollPane.§]%E§();
      }
      
      override public function deactivate() : void
      {
         this.scrollPane.§@%i§();
         super.deactivate();
      }
   }
}

