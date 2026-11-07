package §["3§
{
   import § $q§.§3U§;
   import § &5§.§@N§;
   import §!L§.§+"'§;
   import §#"V§.§<"4§;
   import §##y§.§9§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§;!4§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §4u§.§;$H§;
   import §7$t§.§&!e§;
   import §9&+§.§>&5§;
   import §="z§.*;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §?"8§ extends §<"4§ implements §?%Q§
   {
      
      protected var tick:DisplayObject;
      
      protected var textCount:TextField;
      
      protected var icon:§3U§;
      
      protected var greenBg:DisplayObject;
      
      protected var yellowBg:DisplayObject;
      
      protected var §^%C§:Boolean = false;
      
      public function §?"8§()
      {
         super(§6#A§.§!&6§(§+"'§.§6j§));
         this.icon = new §3U§(getChildByName("item"),true);
         this.tick = getChildByName("tick");
         this.textCount = §'%s§("count");
         this.greenBg = getChildByName("greenBg");
         this.yellowBg = getChildByName("yellowBg");
         MovieClip(container).buttonMode = false;
      }
      
      public function setItem(param1:§&!e§, param2:int) : void
      {
         throw new Error("Abstract method call!");
      }
      
      protected function §`$ §() : void
      {
         this.greenBg.visible = this.§^%C§;
         this.yellowBg.visible = !this.§^%C§;
      }
      
      protected function §<"&§(param1:§&!e§, param2:§;$H§ = null) : void
      {
         this.icon.setItem(param1,param2);
      }
      
      public function §7$@§() : Boolean
      {
         return this.§^%C§;
      }
   }
}

