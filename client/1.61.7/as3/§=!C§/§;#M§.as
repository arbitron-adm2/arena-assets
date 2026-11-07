package §=!C§
{
   import § &5§.§0&$§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.§<$&§;
   import §#"V§.§!&5§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §-@§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §4&F§.*;
   import §4'§.§^"p§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§=!?§;
   import §7$t§.§;#_§;
   import §<%E§.§,$2§;
   import §<%E§.§=$u§;
   import §<%k§.*;
   import §=!p§.§8#x§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §?#g§.§-!k§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§3#j§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@$§.§+%>§;
   import §@$§.§;F§;
   import §@<§.§+%]§;
   import §[!`§.§@&3§;
   import config.§=%A§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;#M§ extends §74§
   {
      
      private var info:Sprite;
      
      private var title:TextField;
      
      private var §^%f§:Function;
      
      private var profile:UserProfile;
      
      public function §;#M§(param1:ChatMessage)
      {
         this._msg = param1;
         super(§6#A§.§!&6§(§+"'§.§'%o§));
      }
      
      public function §<0§(param1:Function) : void
      {
         this.§^%f§ = param1;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:ClanMemberTO = null;
         var _loc4_:Boolean = false;
         super.§@"o§(param1);
         _loc2_ = §=%_§.§<!5§(_msg.profileId);
         var _loc3_:Boolean = _loc2_ != null;
         _loc4_ = Application.userProfile.getId() == _msg.profileId;
         var _loc5_:String = §<$&§.§1#a§(_msg.profileName);
         this.title = getChildByName("title") as TextField;
         this.title.setTextFormat(§"-§.§+$m§);
         this.title.htmlText = §8$H§() + " <b>" + (_loc3_ ? _loc5_ : "<font color=\'#787878\'>" + _loc5_ + "</font></b>") + (_loc4_ ? "" : §2"e§.§#"I§(" (id " + _msg.profileId + ")","#9A9A9A"));
         this.title.addEventListener(MouseEvent.CLICK,this.§6#9§);
         this.info = getChildByName("info") as Sprite;
         this.info.x = this.title.textWidth + 10;
         this.info.visible = !_loc4_;
         this.info.addEventListener(MouseEvent.CLICK,this.§[#o§);
         textField = getChildByName("text") as TextField;
         textField.text = _msg.message;
         textField.height = textField.textHeight + 10;
      }
      
      private function §6#9§(param1:MouseEvent) : void
      {
         if(this.§^%f§ != null)
         {
            this.§^%f§(_msg);
         }
      }
      
      private function §[#o§(param1:MouseEvent) : void
      {
         var event:MouseEvent = param1;
         if(!this.profile)
         {
            this.profile = §`#p§.§"!6§(_msg.profileStringId) || §`#p§.§ !§(_msg.profileId);
         }
         if(this.profile)
         {
            if(this.profile.§54§().§1#&§ != _msg.socialId)
            {
               this.profile.setSocialType(§7"n§.§9&,§(_msg.socialId));
            }
            this.showMenu(event);
         }
         else
         {
            §`#p§.§#&2§([_msg.profileId],function(param1:Vector.<UserProfile>):void
            {
               if(param1.length)
               {
                  profile = param1[0];
                  profile.setSocialType(§7"n§.§9&,§(_msg.socialId));
                  showMenu(event);
               }
            });
         }
      }
      
      private function showMenu(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         _loc2_ = this.profile.§54§().equals(§8"%§.context.§54§());
         var _loc3_:§+%>§ = §;F§.create(this.profile,false,_loc2_);
         _loc3_.§<"b§ = true;
         _loc3_.§<$8§(param1.stageX,param1.stageY);
      }
   }
}

