package §=!C§
{
   import § !8§.§`!d§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!?§.§+" §;
   import §&"c§.§5$n§;
   import §&#W§.§?#]§;
   import §&$Y§.§6[§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§[0§;
   import §,!f§.*;
   import §,%$§.§0>§;
   import §-8§.§3!x§;
   import §0&F§.§0%v§;
   import §2B§.§#&E§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §9%W§.§&!P§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §=$#§.*;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?X§.§36§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.§]#i§;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §@"h§ extends §`&-§
   {
      
      private var msg:ClanChatMessageTO;
      
      private var info:Sprite;
      
      private var title:TextField;
      
      private var text:TextField;
      
      private var §9!i§:Function;
      
      public function §@"h§(param1:ClanChatMessageTO)
      {
         this.msg = param1;
         super(§6#A§.§!&6§(§+"'§.§'%o§));
      }
      
      public function §<0§(param1:Function) : void
      {
         this.§9!i§ = param1;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:ClanTO = null;
         var _loc3_:ClanMemberTO = null;
         var _loc4_:Boolean = false;
         var _loc6_:Boolean = false;
         super.§@"o§(param1);
         _loc2_ = §]#i§.§=#7§(Application.userProfile);
         _loc3_ = §=%_§.§<!5§(this.msg.publisherProfileId,_loc2_);
         _loc4_ = _loc3_ != null;
         var _loc5_:String = _loc4_ ? _loc3_.socialProfileId : this.msg.publisherProfileId.toString();
         _loc6_ = Application.userProfile.getId() == this.msg.publisherProfileId;
         var _loc7_:String = §<$&§.§1#a§(this.msg.publisherName);
         var _loc8_:String = _loc6_ ? "FFE8A3" : (_loc4_ ? §@C§.§^#e§(_loc3_.rank,_loc3_.online,true) : "787878");
         this.title = getChildByName("title") as TextField;
         this.title.setTextFormat(§"-§.§+$m§);
         this.title.htmlText = this.§8$H§() + " <b><font color=\'#" + _loc8_ + "\'>" + _loc7_ + "</font></b>" + (_loc6_ ? "" : §2"e§.§#"I§(" (id " + _loc5_ + ")","#9A9A9A"));
         this.title.addEventListener(MouseEvent.CLICK,this.§6#9§);
         this.info = getChildByName("info") as Sprite;
         this.info.x = this.title.textWidth + 10;
         this.info.visible = !_loc6_ && _loc4_;
         this.info.addEventListener(MouseEvent.CLICK,this.§[#o§);
         this.text = getChildByName("text") as TextField;
         §@C§.§&[§(this.text,_loc4_ ? _loc3_.rank : 0,true,true);
         this.text.text = this.msg.params;
         this.text.height = this.text.textHeight + 10;
      }
      
      private function §6#9§(param1:MouseEvent) : void
      {
         if(this.§9!i§ != null)
         {
            this.§9!i§(this.msg);
         }
      }
      
      private function §[#o§(param1:MouseEvent) : void
      {
         var _loc2_:ClanMemberTO = §=%_§.§<!5§(this.msg.publisherProfileId);
         var _loc3_:UserProfile = §`#p§.§"!6§(this.msg.publisherProfileId.toString());
         if(_loc3_ == null && Boolean(_loc2_))
         {
            _loc3_ = §`#p§.§"!6§(_loc2_.socialProfileId.toString());
         }
         var _loc4_:§36§ = new §36§(_loc3_,_loc2_);
         _loc4_.§<"b§ = true;
         _loc4_.§<$8§(param1.stageX,param1.stageY);
      }
      
      private function §8$H§() : String
      {
         return "<font color=\'#696969\'>" + §0#2§.§3"?§(this.msg.logDate).split(" ")[1] + "</font>";
      }
   }
}

