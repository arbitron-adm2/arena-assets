package §<$2§
{
   import §"$+§.§ G§;
   import §"$+§.§@C§;
   import §&!?§.§0%W§;
   import §2#V§.§-#U§;
   import §7"Q§.§"&=§;
   import §8$Z§.§9"t§;
   import §9%W§.§&!P§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§&m§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §##<§ extends §"&=§ implements §+$9§
   {
      
      private var deltaPanel:§&m§;
      
      private var §1%,§:TextField;
      
      private var §<"F§:DisplayObject;
      
      private var numberTextField:TextField;
      
      public function §##<§(param1:MovieClip)
      {
         super(param1);
         this.deltaPanel = new §&m§(getChildByName("deltaPanel"));
         this.§<"F§ = getChildByName("notInTop");
         this.§<"F§.visible = false;
         this.numberTextField = §'%s§("numberTextField");
         §&$9§.§>&F§(this.numberTextField,§"-§.§6"j§," ");
         this.§1%,§ = §'%s§("ratingValue");
         this.§1%,§.mouseEnabled = false;
      }
      
      override public function setItem(param1:Object) : void
      {
         super.setItem(param1);
         var _loc2_:ClanTO = param1 as ClanTO;
         var _loc3_:DisplayObjectContainer = §'$a§("clanEditLogo");
         _loc3_.mouseEnabled = false;
         var _loc4_:TextField = §'%s§("clanName");
         _loc4_.mouseEnabled = false;
         var _loc5_:MovieClip = §'$a§("ratingIcon");
         _loc5_.mouseEnabled = false;
         var _loc6_:MovieClip = §'$a§("emptyClanLogo");
         _loc6_.mouseEnabled = false;
         var _loc7_:TextField = §'%s§("clanCapacity");
         _loc7_.mouseEnabled = false;
         _loc3_.visible = _loc2_ != null;
         this.§1%,§.visible = _loc2_ != null;
         _loc5_.visible = _loc2_ != null;
         _loc6_.visible = !_loc2_;
         _loc7_.visible = _loc2_ != null;
         if(_loc2_)
         {
            if(Application.userProfile.§!#E§() && Application.userProfile.clanMember.clanId == _loc2_.id)
            {
               _loc4_.htmlText = "<b>" + _loc2_.name + "</b>";
            }
            else
            {
               _loc4_.text = _loc2_.name;
            }
            _loc7_.text = _loc2_.size + " / " + § G§.getLevel(_loc2_.level).capacity;
            §=%_§.§!-§(container["clanEditLogo"],_loc2_.emblem);
         }
         else
         {
            _loc4_.text = §<"G§.§%! §("NOT_IN_CLAN");
            §&$9§.§>&F§(§'%s§("numberTextField"),§"-§.§6"j§,"...");
         }
         §0A§(MouseEvent.CLICK,this.click);
      }
      
      private function click(param1:MouseEvent) : void
      {
         var _loc2_:ClanTO = getItem() as ClanTO;
         if(_loc2_)
         {
            §9"t§.§]"N§(_loc2_.id);
         }
      }
      
      override public function destroy() : void
      {
         §!%P§(MouseEvent.CLICK,this.click);
         super.destroy();
      }
      
      public function setIndexNumber(param1:int) : void
      {
         var _loc2_:Boolean = getItem() != null && ClanTO(getItem()).seasonRating >= §@C§.§7$T§;
         getChildByName("icon_1").visible = _loc2_ && param1 == 1;
         getChildByName("icon_2").visible = _loc2_ && param1 == 2;
         getChildByName("icon_3").visible = _loc2_ && param1 == 3;
         if(param1 == -1)
         {
            this.numberTextField.visible = false;
            §&$9§.§>&F§(this.numberTextField,§"-§.§6"j§," ");
            this.§<"F§.visible = true;
         }
         else
         {
            this.numberTextField.visible = true;
            §&$9§.§>&F§(this.numberTextField,§"-§.§6"j§,String(param1));
            this.§<"F§.visible = false;
         }
      }
      
      public function §?#,§(param1:int) : void
      {
         this.deltaPanel.setVisible(true);
         this.deltaPanel.§?#,§(param1);
      }
      
      public function §9%@§() : void
      {
         this.deltaPanel.setVisible(false);
      }
      
      public function showRating(param1:int) : void
      {
         §&$9§.§>&F§(this.§1%,§,§"-§.§6"j§,§2"e§.§5%t§(param1));
      }
      
      public function setMinDailyTop(param1:uint) : void
      {
      }
   }
}

