package §>!_§
{
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import §!$D§.§2$^§;
   import §!$Z§.§"$I§;
   import §!L§.§+"'§;
   import §"$+§.§`&$§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%E§.*;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&#h§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §2#i§.§+%z§;
   import §2o§.§4§;
   import §2o§.§]#;§;
   import §2o§.§]#@§;
   import §3"@§.§##L§;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §4u§.§!!o§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §8#a§.ShopMenu;
   import §8$Z§.*;
   import §9%W§.§&!P§;
   import §<$2§.§+$9§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@&H§.§`d§;
   import §["3§.CraftEquipInfoHint;
   import §[$<§.§>"9§;
   import §[%'§.§<"G§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§&m§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §'!&§ extends §22§ implements §+$9§
   {
      
      private var deltaPanel:§&m§;
      
      private var §`!R§:ClanTO;
      
      private var §1#J§:TextField;
      
      private var §6%I§:TextField;
      
      private var rubyIcon:MovieClip;
      
      private var divider:MovieClip;
      
      private var iconMuted:§`&-§;
      
      private var iconExpPerm:§`&-§;
      
      private var §>%^§:§@"N§;
      
      public function §'!&§(param1:ClanTO, param2:ClanMemberTO, param3:String, param4:Boolean)
      {
         this.§`!R§ = param1;
         super(param2,§6#A§.§!&6§(param3),param4);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.deltaPanel = new §&m§(getChildByName("deltaPanel"));
         this.divider = §'$a§("divider");
         this.iconMuted = new §`&-§(§'$a§("iconMuted"));
         this.iconExpPerm = new §`&-§(§'$a§("iconExpPerm"));
         this.§>%^§ = new §@"N§(§'$a§("infoIcon"));
      }
      
      override protected function update(param1:ClanMemberTO) : void
      {
         var _loc2_:UserProfile = null;
         var _loc5_:TextField = null;
         var _loc7_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:uint = 0;
         var _loc11_:TextFormat = null;
         var _loc12_:String = null;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         var _loc15_:String = null;
         super.update(param1);
         this.divider.visible = false;
         this.iconMuted.setVisible(false);
         this.iconExpPerm.setVisible(false);
         _loc2_ = Application.userProfile;
         var _loc3_:Boolean = Boolean(_loc2_.clanMember) && this.§`!R§.id == _loc2_.clanMember.clanId;
         if(!this.§6%I§)
         {
            this.§1#J§ = §'%s§("onlineText");
            this.§6%I§ = §'%s§("payText");
            this.rubyIcon = §'$a§("rubyIcon");
            this.§1#J§.mouseEnabled = this.§6%I§.mouseEnabled = this.rubyIcon.mouseEnabled = false;
         }
         getChildByName("rubyIcon").visible = _loc3_;
         this.§1#J§.visible = this.§6%I§.visible = _loc3_;
         if(_loc3_)
         {
            _loc10_ = param1.online ? 6133778 : 9073762;
            _loc11_ = new TextFormat(§"-§.§@%f§.fontName,null,_loc10_);
            if(!param1.online)
            {
               _loc13_ = §0#2§.§`&=§(param1.lastLoginTime / §0#2§.§8$]§);
               if(_loc13_ < 1)
               {
                  _loc12_ = §0$N§.§%! §("ONLINE_HOUR");
               }
               else if(_loc13_ >= 1 && _loc13_ < 24)
               {
                  _loc12_ = §0$N§.§%! §("ONLINE_TODAY");
               }
               else if(_loc13_ >= 24 && _loc13_ < 24 * 7 * 4)
               {
                  _loc14_ = _loc13_ / 24;
                  _loc15_ = Social.§-%c§.§4!]§(_loc14_,§0$N§.DAY_PLURALS);
                  _loc12_ = §0%§.format(§0$N§.§%! §("ONLINE_DAYS"),{
                     "count":_loc14_,
                     "days":_loc15_
                  });
               }
               else
               {
                  _loc12_ = §0$N§.§%! §("ONLINE_MORE_MONTH_AGO");
               }
            }
            §&$9§.§>&F§(this.§1#J§,_loc11_,param1.online ? §0$N§.§%! §("ONLINE_INGAME") : _loc12_);
            §&$9§.§>&F§(this.§6%I§,§"-§.§6"j§,param1.donation.toString());
            this.rubyIcon.visible = this.§6%I§.visible = param1.donation > 0;
            if(param1.muteMode)
            {
               this.iconMuted.setQtip(§0$N§.§%! §("MUTED_QTIP"),§;#^§.DEFAULT,§+"'§.§3%y§);
               this.iconMuted.setVisible(true);
               this.divider.visible = true;
               this.divider.x = this.iconMuted.x + this.iconMuted.width + 5;
               getChildByName("memberRank").x = getChildByName("memberNameTextField").x = this.divider.x + 5;
            }
            if(!param1.expelPermit && param1.rank == §`&$§.OFFICER)
            {
               this.iconExpPerm.setQtip(§0$N§.§%! §("EXPPER_QTIP"),§;#^§.DEFAULT,§+"'§.§3%y§);
               this.iconExpPerm.setVisible(true);
               this.divider.visible = true;
               this.iconExpPerm.x = this.iconMuted.x + (param1.muteMode ? this.iconMuted.width + 5 : 0);
               this.divider.x = this.iconExpPerm.x + this.iconExpPerm.width + 5;
               getChildByName("memberRank").x = getChildByName("memberNameTextField").x = this.divider.x + 5;
            }
         }
         var _loc4_:DisplayObjectContainer = §'$a§("ratingIcon");
         _loc5_ = §'%s§("ratingCount");
         _loc5_.mouseEnabled = true;
         §&$9§.§>&F§(_loc5_,§"-§.§6"j§,§2"e§.§5%t§(param1.seasonRating));
         var _loc6_:§4#_§ = new §4#_§(_loc5_);
         var _loc8_:uint = 100;
         if(this.§`!R§.seasonRating >= _loc8_)
         {
            _loc7_ = §-q§.§-&%§(§-q§.§5&H§(param1.seasonRating,this.§`!R§.seasonRating),2);
            _loc9_ = §0%§.format(§<"G§.§%! §("PLAYER_RATING_PART_OF_CLAN"),{"value":_loc7_});
         }
         else
         {
            _loc9_ = §<"G§.§%! §("CLAN_RATING_TOO_SMALL");
         }
         _loc6_.setQtipPanel(new §!!o§(_loc9_),§;#^§.§[!K§);
         _loc6_.setQtip(_loc9_);
         this.§>%^§.§%%S§(param1,this.§`!R§);
      }
      
      public function setIndexNumber(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:TextField = §'%s§("numberTextField");
         _loc2_.mouseEnabled = false;
         §&$9§.§>&F§(_loc2_,§"-§.§6"j§,String(param1));
         if(clanMember.oldPlace == 0)
         {
            this.§?#,§(0);
         }
         else
         {
            _loc3_ = clanMember.oldPlace - param1;
            this.§?#,§(_loc3_);
         }
      }
      
      public function §?#,§(param1:int) : void
      {
         this.deltaPanel.§?#,§(param1);
      }
      
      public function §9%@§() : void
      {
      }
      
      public function showRating(param1:int) : void
      {
      }
      
      public function setMinDailyTop(param1:uint) : void
      {
      }
   }
}

