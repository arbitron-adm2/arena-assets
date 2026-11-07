package § "L§
{
   import §"$+§.§`&$§;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&!?§.§+" §;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&#W§.§?#]§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§2!I§;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §2%0§ extends §&"T§
   {
      
      protected static const §3P§:int = 5;
      
      protected var target:§+%]§;
      
      protected var head:MovieClip;
      
      protected var barrel:MovieClip;
      
      protected var §=W§:Point;
      
      protected var paramSet:§5$n§;
      
      protected var power:int;
      
      protected var § !-§:int;
      
      protected var §<#6§:int = 0;
      
      protected var §;&9§:Boolean = true;
      
      public function §2%0§(param1:int, param2:int, param3:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§ !-§ = param3;
         this.§8&8§();
         clip.rotation = param3;
         Application.scene.§@$I§.§1$+§(this);
         this.§=W§ = new Point();
      }
      
      protected function §8&8§() : void
      {
         this.head = clip.getChildByName("head") as MovieClip;
         this.barrel = this.head.getChildByName("barrel") as MovieClip;
         this.barrel.rotation = this.head.rotation = this.§ !-§;
      }
      
      protected function getBarrelPoint(param1:Number) : Point
      {
         this.§=W§.setTo(x,y);
         var _loc2_:Number = §-q§.§7%8§(clip.rotation);
         this.§=W§.x += this.barrel.x * Math.cos(param1 + _loc2_) - this.barrel.y * Math.sin(param1 + _loc2_);
         this.§=W§.y += this.barrel.x * Math.sin(param1 + _loc2_) + this.barrel.y * Math.cos(param1 + _loc2_);
         return this.§=W§;
      }
      
      protected function §<%8§() : void
      {
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(this.§;&9§ && !Application.scene.§@$I§.§=%d§())
         {
            §1"-§.explode(§;n§.§1"E§,x,y,§3P§,§`!v§.§`%9§);
         }
         super.§[$u§(param1);
      }
   }
}

