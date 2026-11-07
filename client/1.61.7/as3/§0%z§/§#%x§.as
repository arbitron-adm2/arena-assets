package §0%z§
{
   import § !P§.§<#q§;
   import §!$Z§.§7$2§;
   import §!L§.§+"'§;
   import §#!5§.§>S§;
   import §##j§.§0m§;
   import §##j§.§7,§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §&#E§.§;"v§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §1#p§.*;
   import §2!-§.GameObjectDisposed;
   import §2#8§.§6"a§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§8U§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class §#%x§ extends §0&'§
   {
      
      private var scrollPane:§>S§;
      
      private var §%$T§:int;
      
      public function §#%x§()
      {
         super(§6#A§.§!&6§(§+"'§.§9"U§));
         container.scrollRect = new Rectangle(0,0,§ "N§.stageWidth,§ "N§.stageHeight);
         this.§%$T§ = §;!L§.§^#t§.length;
         this.§="3§();
         setData(§;!L§.§^#t§);
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
         while(_loc2_ < this.§%$T§)
         {
            _loc1_ = §6#A§.§!&6§("StatCell");
            if(§;!L§.§^#t§[_loc2_].id == 0)
            {
               _loc1_.height = 4;
               _loc1_.alpha = 0;
            }
            §4#B§.addChild(_loc1_);
            if(_loc2_ > 0)
            {
               §`o§.§1$T§(_loc1_,§4#B§,2);
            }
            _loc2_++;
         }
         §<#X§();
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:StatCell = new StatCell(param1 as MovieClip);
         §4"0§.§^%T§(_loc2_,4);
         return _loc2_;
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         if(param2.id != §;!L§.§2"d§)
         {
            StatCell(param1).setData(param2);
         }
         super.§3u§(param1,param2,param3);
      }
      
      public function §>$V§(param1:§<#q§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:StatCell = null;
         if(Boolean(param1) && param1.count > 0)
         {
            for each(_loc3_ in cells)
            {
               _loc2_ = param1.valueOf(parseInt(_loc3_.id));
               if(_loc2_ > 0)
               {
                  _loc3_.§,%&§(_loc2_);
               }
            }
         }
         else
         {
            for each(_loc3_ in cells)
            {
               _loc3_.§,%&§();
            }
         }
         §&#F§(false);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §<"b§ = false;
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

