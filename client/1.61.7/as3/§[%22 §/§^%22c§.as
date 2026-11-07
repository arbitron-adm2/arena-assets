package §[" §
{
   import §"$+§.*;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §4#`§.BattleInterface;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §9"-§.AnchorTeleportMark;
   import §9&+§.§6&=§;
   import §9&+§.§>&5§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §@!i§.§!m§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.display.DisplayObjectContainer;
   import flash.display.StageQuality;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §^"c§ extends §`&-§
   {
      
      private var §!u§:int;
      
      private var §7"W§:int;
      
      private var txt:TextField;
      
      private var cont:§`&-§;
      
      public function §^"c§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.txt = TextField(getChildByName("txt"));
         this.txt.text = "0";
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         this.§!u§ = y;
      }
      
      public function show(param1:int) : void
      {
         this.setTime(param1);
         this.setVisible(true);
         TweenMax.killTweensOf(container);
         TweenMax.to(container,0.2,{
            "startAt":{
               "y":-height,
               "alpha":0
            },
            "y":this.§!u§,
            "alpha":1,
            "ease":Linear.easeIn
         });
      }
      
      public function hide() : void
      {
         TweenMax.killTweensOf(container);
         TweenMax.to(container,0.2,{
            "startAt":{
               "y":this.§!u§,
               "alpha":1
            },
            "y":-height,
            "alpha":0,
            "onComplete":this.setVisible,
            "onCompleteParams":[false],
            "ease":Linear.easeOut
         });
      }
      
      public function setTime(param1:int) : void
      {
         this.txt.text = param1.toString();
         if(Application.instance.§#&7§())
         {
            this.txt.appendText("/" + Application.scene.§@$I§.§<#[§());
         }
         this.align();
      }
      
      override public function setVisible(param1:Boolean) : void
      {
         super.setVisible(param1);
         if(param1)
         {
            this.align();
         }
      }
      
      public function getTime() : int
      {
         return parseInt(this.txt.text.split("/")[0]);
      }
      
      public function §4"Y§(param1:§`&-§, param2:int = 0, param3:int = 0) : void
      {
         this.cont = param1;
         this.§7"W§ = param3;
         param1.§#!`§().addChild(container);
         y = this.§!u§ + param2;
         this.align();
      }
      
      public function align() : void
      {
         var _loc1_:int = 0;
         if(!this.cont || this.cont is BattleInterface)
         {
            §`o§.§%&%§(container);
            x += container.width * 0.1;
         }
         else
         {
            _loc1_ = container.width * 0.5;
            §`o§.§%&%§(container);
            x += §8"%§.§^%W§.§5!3§() ? this.§7"W§ - _loc1_ : _loc1_;
         }
      }
   }
}

