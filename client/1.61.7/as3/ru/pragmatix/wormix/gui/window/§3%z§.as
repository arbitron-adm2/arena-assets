package ru.pragmatix.wormix.gui.window
{
   import § "L§.§`#r§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§[&$§;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §+&<§.§@$L§;
   import §+&<§.§^@§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2"L§.§,!t§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.§`s§;
   import §<!W§.§#&#§;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §?$7§.§6%k§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§5%8§;
   import §]^§.§-$T§;
   import §^"y§.*;
   import com.greensock.TweenLite;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §3%z§
   {
      
      private var parentCont:MovieClip;
      
      private var parentContPanel:MovieClip;
      
      private var §^#D§:int;
      
      private var cont:MovieClip;
      
      private var panel:MovieClip;
      
      private var line:MovieClip;
      
      private var §[#4§:TextField;
      
      public function §3%z§(param1:MovieClip, param2:MovieClip)
      {
         super();
         this.parentCont = param1;
         this.parentContPanel = param2;
         this.§^#D§ = this.parentContPanel.height;
         this.cont = §6#A§.§!&6§(§+"'§.§+#`§);
         this.parentCont.addChild(this.cont);
         this.panel = this.cont.getChildByName("panel") as MovieClip;
         this.line = this.cont.getChildByName("line") as MovieClip;
         this.§[#4§ = this.cont.getChildByName("msg") as TextField;
         this.panel.width = this.line.width = this.parentCont.width - 40;
         this.panel.visible = false;
         this.§[#4§.width = this.panel.width - 20;
         this.§[#4§.mouseEnabled = false;
         this.§[#4§.selectable = false;
         this.§[#4§.autoSize = TextFieldAutoSize.LEFT;
         this.§[#4§.text = "";
         §`o§.§%&%§(this.cont);
         this.setText(§0$N§.§`&4§());
      }
      
      public function show() : void
      {
      }
      
      private function getTargetHeight() : Number
      {
         return this.§^#D§ + this.panel.height + 12;
      }
      
      public function setText(param1:String, param2:Boolean = false) : void
      {
      }
      
      public function setVisible(param1:Boolean) : void
      {
         this.cont.visible = param1;
         if(param1)
         {
            this.§[#4§.alpha = 1;
            this.§+&1§();
         }
         else
         {
            TweenLite.killTweensOf(this);
            TweenLite.killTweensOf(this.§[#4§);
            TweenLite.killTweensOf(this.parentContPanel);
         }
      }
      
      private function §+&1§() : void
      {
         if(!this.cont.visible)
         {
            return;
         }
         TweenLite.to(this,2,{"onComplete":function():void
         {
            if(!cont.visible)
            {
               return;
            }
            TweenLite.to(§[#4§,0.5,{
               "alpha":0,
               "onComplete":function():void
               {
                  if(!cont.visible)
                  {
                     return;
                  }
                  setText(§0$N§.§`&4§());
                  TweenLite.to(parentContPanel,0.5,{
                     "height":getTargetHeight(),
                     "onComplete":function():void
                     {
                        TweenLite.to(§[#4§,0.5,{
                           "alpha":1,
                           "onComplete":function():void
                           {
                              if(!cont.visible)
                              {
                                 return;
                              }
                              §+&1§();
                           }
                        });
                     }
                  });
               }
            });
         }});
      }
   }
}

