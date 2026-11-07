package §8#a§
{
   import § $q§.§3U§;
   import §!$Z§.§6=§;
   import §"$+§.§@C§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§,#;§;
   import §+$=§.§6#A§;
   import §-G§.*;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §2!-§.HpChangeEvent;
   import §2"L§.§,!t§;
   import §4#2§.*;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8!Y§.§`#Q§;
   import §9%k§.*;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §>%I§.§-#f§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!W§.§8!S§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §&$&§ extends §"&=§
   {
      
      public static const §;#p§:Number = 0.7;
      
      private var icon:§3U§;
      
      private var priceContainer:§8!S§;
      
      private var exist:DisplayObject;
      
      private var §[p§:MovieClip;
      
      private var §+#k§:MovieClip;
      
      private var §[#`§:MovieClip;
      
      private var sellPrice:int;
      
      public function §&$&§(param1:MovieClip)
      {
         super(param1);
         this.priceContainer = new §8!S§(MovieClip(getChildByName("priceContainer")));
         this.icon = new §3U§(MovieClip(param1.getChildByName("icon")));
         this.§[p§ = §'$a§("normal");
         this.§+#k§ = §'$a§("disabled");
         this.§[#`§ = §'$a§("selection");
         getChildByName("textNew").visible = false;
         getChildByName("textSale").visible = false;
         getChildByName("bundlePrice").visible = false;
         getChildByName("improve").visible = false;
         getChildByName("count").visible = false;
         this.§&&F§(false);
      }
      
      override public function setItem(param1:Object) : void
      {
         super.setItem(param1);
         var _loc2_:§&!e§ = §&!e§(param1);
         this.icon.§1&!§(§;#p§);
         this.icon.setItem(_loc2_);
         this.priceContainer.setVisible(_loc2_ != null);
         if(_loc2_)
         {
            this.sellPrice = §5&4§.§!%x§(_loc2_.§%"]§());
            this.priceContainer.§'!`§(this.sellPrice,0);
            §`o§.§+j§(this.priceContainer,this.icon.x,this.icon.x + this.icon.width);
         }
         else
         {
            this.sellPrice = 0;
         }
         setDisabled(_loc2_ == null);
         §;b§(_loc2_ != null);
         this.setExist(false);
         this.§+#k§.visible = _loc2_ == null;
         this.§[p§.visible = _loc2_ != null;
      }
      
      override protected function §#%S§(param1:MouseEvent) : void
      {
         if(!getItem())
         {
            return;
         }
         super.§#%S§(param1);
      }
      
      override public function setSelected(param1:Boolean) : void
      {
         super.setSelected(param1);
         this.setExist(param1);
      }
      
      public function §&&F§(param1:Boolean) : void
      {
         this.§[#`§.gotoAndStop(param1 ? "blue" : "green");
         this.§[p§.gotoAndStop(param1 ? "blue" : "yellow");
      }
      
      public function setExist(param1:Boolean) : void
      {
         if(!this.exist)
         {
            this.exist = getChildByName("exist");
         }
         this.exist.visible = param1;
      }
   }
}

