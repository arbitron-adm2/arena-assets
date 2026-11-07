package §@$§
{
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §&§.§>%s§;
   import §+5§.§8#%§;
   import §-@§.§0"e§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2#8§.§'A§;
   import §2#s§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@!N§.§2"e§;
   import §@!i§.§<!9§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^-§.Rope;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&%z§ extends §6$[§
   {
      
      private var §'d§:Boolean;
      
      private var §6m§:Boolean;
      
      public function §&%z§(param1:UserProfile = null, param2:ClanMemberTO = null, param3:Boolean = true, param4:Boolean = true)
      {
         this.§'d§ = param3;
         this.§6m§ = param4;
         super(param1,param2);
         teamMemberType = §2=§.FRIEND;
      }
      
      override protected function §5%i§() : void
      {
         if(isMe)
         {
            if(userProfile.§!#E§())
            {
               §+$C§();
            }
         }
         else
         {
            §<#C§();
            §2#5§();
            §1"O§();
            §["?§();
            §<% §();
            §!%m§();
            if(this.§'d§ && this.§`%Y§())
            {
               this.§%$@§();
            }
            §"&D§();
            if(userProfile.§!#E§())
            {
               this.§3%`§();
            }
            if(this.§6m§)
            {
               this.§?#0§();
            }
         }
         §0%C§();
         §7&B§();
         if(!isMe)
         {
            §5&G§();
         }
         cells[cells.length - 1].§+"$§(false);
      }
      
      protected function §`%Y§(param1:Boolean = false) : Boolean
      {
         if(§4! §.isMe(userProfile))
         {
            return false;
         }
         return !param1 || userProfile.getLevel() <= Application.userProfile.getLevel();
      }
      
      protected function §%$@§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Function = null;
         var _loc4_:String = null;
         var _loc5_:§&&H§ = null;
         var _loc1_:UserProfile = Application.userProfile;
         if(§<!9§.§4p§(_loc1_.getLevel()) > 1)
         {
            _loc2_ = !_loc1_.§?%$§(userProfile.getId());
            _loc3_ = _loc2_ ? this.§#&+§ : this.§"$A§;
            _loc4_ = _loc2_ ? (teamMemberType == §2=§.§"!$§ ? §0$N§.CONTEXT_MENU_ADD_USER_TO_TEAM : §0$N§.ADD_IN_GROUP) : §0$N§.REPLACE_IN_GROUP;
            _loc5_ = §<%5§(_loc3_,§`&C§.§ $3§,_loc4_);
            _loc5_.§ %b§(_loc2_);
         }
      }
      
      protected function §?#0§() : void
      {
         §<%5§(this.§5$G§,§`&C§.§&$3§,§0$N§.CONTEXT_VISIT_USER);
      }
      
      override protected function §3%`§() : void
      {
         var _loc1_:Boolean = Application.userProfile.§!#E§() && Application.userProfile.clanMember.clanId == userProfile.clanMember.clanId && §=%_§.§<!5§(userProfile.getId()) == null;
         if(!_loc1_)
         {
            §<%5§(§6%$§,§`&C§.§"#g§,§<"G§.§%! §("SHOW_CLAN_INFO_BTN"),true);
         }
      }
      
      protected function §"$A§(param1:Event) : void
      {
         §8"%§.§%!m§.§2"X§(userProfile);
         if(isShown())
         {
            hide();
         }
      }
      
      protected function §#&+§(param1:Event) : void
      {
         var swap:§'A§ = null;
         var event:Event = param1;
         var fnBuy:Function = §1%"§.§]$<§(function(param1:UserProfile = null):void
         {
            new §>%s§(userProfile,teamMemberType,param1).show();
         },this);
         if(!Application.userProfile.§'$k§() || teamMemberType == §2=§.§"!$§ && !§0$c§.§6%s§())
         {
            swap = new §'A§(userProfile,teamMemberType,fnBuy);
            swap.show();
         }
         else
         {
            fnBuy.call();
         }
         if(isShown())
         {
            hide();
         }
      }
      
      protected function §5$G§(param1:Event) : void
      {
         Application.§5!>§.§'%w§(userProfile);
         if(isShown())
         {
            hide();
         }
      }
   }
}

