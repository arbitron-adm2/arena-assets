package §0%z§
{
   import § !P§.§<#q§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §#!5§.§>S§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&%X§.§5F§;
   import §+$=§.§6#A§;
   import §,$J§.§0%G§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §4#2§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §7$t§.§^$E§;
   import §8#<§.§!#^§;
   import §8$V§.*;
   import §9&+§.§6&=§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@8§.*;
   import §^#[§.§&$2§;
   import avmplus.getQualifiedClassName;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.TracePublisher;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class AchievTabPage extends §0&'§ implements §^c§
   {
      
      private var scrollPane:§>S§;
      
      private var §%!A§:int;
      
      private var §!#R§:Vector.<MovieClip>;
      
      private var content:DisplayObjectContainer;
      
      private var §7$6§:§,$h§;
      
      public function AchievTabPage(param1:§,$h§)
      {
         super(§6#A§.§!&6§(§+"'§.§9"U§));
         this.§7$6§ = param1;
         §&$9§.§>&F§(§'%s§("loading.text"),§"-§.§+$m§,§0$N§.LOADING);
         this.§!#R§ = §3!3§.§#"R§(§'$a§("loading.loading"));
         container.scrollRect = new Rectangle(0,0,§ "N§.stageWidth,§ "N§.stageHeight);
         var _loc2_:Array = §%#c§.§0E§(param1);
         _loc2_ ||= [];
         var _loc3_:* = int(_loc2_.length - 1);
         var _loc4_:int = -1;
         while(_loc3_ > _loc4_)
         {
            if(§1! §(_loc2_[_loc3_]).id == §!$L§.§]w§ && !§8"%§.§[f§.§7&@§())
            {
               _loc2_.splice(_loc3_,1);
            }
            if(§1! §(_loc2_[_loc3_]).id == §!$L§.§0$&§ && !Social.settings.§2$@§())
            {
               _loc2_.splice(_loc3_,1);
            }
            _loc3_--;
         }
         this.§%!A§ = _loc2_.length;
         this.§="3§();
         setData(_loc2_);
         this.scrollPane.update();
         this.activate();
      }
      
      override protected function §&%p§() : DisplayObjectContainer
      {
         this.scrollPane = new §>S§(getChildByName("scrollPane") as MovieClip);
         var _loc1_:Sprite = new Sprite();
         DisplayObjectContainer(this.scrollPane.getChildByName("content")).addChild(_loc1_);
         return _loc1_;
      }
      
      private function §="3§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!A§)
         {
            _loc1_ = §6#A§.§!&6§(§+"'§.§-&<§);
            §4#B§.addChild(_loc1_);
            if(_loc2_ > 0)
            {
               §`o§.§1$T§(_loc1_,§4#B§,0);
            }
            _loc2_++;
         }
         §<#X§();
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§?#b§ = new §?#b§(param1 as MovieClip,this.§7$6§);
         §4"0§.§^%T§(_loc2_,3);
         return _loc2_;
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         §?#b§(param1).setData(§1! §(param2));
         super.§3u§(param1,param2,param3);
      }
      
      public function §>$V§(param1:§<#q§) : void
      {
         var _loc2_:§?#b§ = null;
         var _loc3_:int = 0;
         if(Boolean(param1) && param1.count > 0)
         {
            for each(_loc2_ in cells)
            {
               _loc3_ = param1.valueOf(parseInt(_loc2_.id));
               if(_loc3_ > 0)
               {
                  _loc2_.§,%&§(_loc3_);
               }
            }
         }
         else
         {
            for each(_loc2_ in cells)
            {
               _loc2_.§,%&§();
            }
         }
         this.§&#F§(false);
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         this.scrollPane.setVisible(!param1);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §<"b§ = false;
      }
      
      public function playAnimations() : void
      {
         if(isVisible())
         {
            §3!3§.§<%W§(this.§!#R§);
         }
      }
      
      public function stopAnimations() : void
      {
         §3!3§.§>!j§(this.§!#R§);
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

