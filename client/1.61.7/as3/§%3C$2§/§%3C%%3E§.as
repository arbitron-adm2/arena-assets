package §<$2§
{
   import § #9§.§3L§;
   import § $q§.§-%f§;
   import § &5§.§=#P§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §+5§.§5"<§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#H§.§>#M§;
   import §2#i§.§+%z§;
   import §3#T§.Boomerang;
   import §3#a§.*;
   import §4!!§.§6$V§;
   import §4$b§.§8D§;
   import §4'§.§`"q§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §@!i§.§1""§;
   import §@!i§.§5&4§;
   import §@$§.§+%>§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import org.gestouch.events.GestureEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§&m§;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<%>§ extends §-%f§ implements §+$9§
   {
      
      private var §6#u§:TextField;
      
      private var §?#P§:TextField;
      
      private var clanName:TextField;
      
      private var deltaPanel:§&m§;
      
      private var §]"d§:TextField;
      
      private var §2!n§:TextField;
      
      private var §&!=§:Point;
      
      private var §3!>§:Point;
      
      private var §<"F§:DisplayObject;
      
      private var §5"k§:uint = 30;
      
      private var §2"c§:uint = 0;
      
      public function §<%>§(param1:MovieClip, param2:§+%>§ = null, param3:Boolean = false, param4:Boolean = true)
      {
         super(param1,param2,param3,param4);
         this.§6#u§ = §'%s§("numberTextField");
         this.§6#u§.mouseEnabled = false;
         §7&5§.§?$k§(this.§6#u§," ");
         this.init();
         this.deltaPanel = new §&m§(getChildByName("deltaPanel"));
         this.§]"d§ = §'%s§("ratingValue");
         if(this.§]"d§)
         {
            this.§]"d§.mouseEnabled = false;
         }
         this.§2!n§ = §'%s§("rangPoints");
         if(this.§2!n§)
         {
            this.§2!n§.mouseEnabled = false;
         }
         if(getChildByName("ratingIcon"))
         {
            §'$a§("ratingIcon").mouseEnabled = false;
         }
         this.§&!=§ = new Point(§@%X§().x,this.§?#P§.x);
         this.§3!>§ = new Point(§@%X§().x - 40,this.§?#P§.x - 40);
         this.§<"F§ = getChildByName("notInTop");
         this.§<"F§.visible = false;
         param1.addEventListener(MouseEvent.CLICK,this.§'$9§);
      }
      
      protected function init() : void
      {
         this.§?#P§ = §'%s§("memberName");
         this.§?#P§.mouseEnabled = false;
         this.clanName = §'%s§("memberClanName");
         this.clanName.mouseEnabled = false;
      }
      
      protected function §'$9§(param1:MouseEvent) : void
      {
         var _loc2_:§3L§ = panel.§@%X§();
         panel.§""u§().§3%,§(_loc2_.§?&1§());
         panel.§""u§().§<$8§(param1.stageX,param1.stageY);
      }
      
      public function showDynamics(param1:Boolean) : void
      {
         this.deltaPanel.setVisible(param1);
         if(param1)
         {
            §@%X§().x = this.§&!=§.x;
            this.§?#P§.x = this.§&!=§.y;
         }
         else
         {
            §@%X§().x = this.§3!>§.x;
            this.§?#P§.x = this.§3!>§.y;
         }
      }
      
      public function §?#,§(param1:int) : void
      {
         if(this.deltaPanel.isVisible())
         {
            this.deltaPanel.§?#,§(param1);
         }
      }
      
      public function §9%@§() : void
      {
         this.deltaPanel.setVisible(false);
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc3_:int = 0;
         super.setItem(param1);
         var _loc2_:UserProfile = UserProfile(param1);
         if(!_loc2_)
         {
            return;
         }
         this.§?#P§.text = §4! §.§<&-§(_loc2_,this.§5"k§);
         if(this.§2!n§)
         {
            _loc3_ = §4! §.isMe(_loc2_) ? Application.userProfile.§]#6§() : int(_loc2_.getDailyRating());
            §7&5§.§?$k§(this.§2!n§,_loc3_.toString());
         }
         this.§`!S§(_loc2_);
      }
      
      protected function §`!S§(param1:UserProfile) : void
      {
         this.clanName.text = param1.clanMember.clanName;
      }
      
      public function showRating(param1:int) : void
      {
         var _loc2_:§1""§ = §1""§.§=$S§(param1);
         if(this.§]"d§)
         {
            §7&5§.§?$k§(this.§]"d§,§1""§.§'$d§ ? _loc2_.§9#V§.toString() : param1.toString());
         }
         if(getChildByName("fill"))
         {
            getChildByName("fill").width = getChildByName("bar").width * (_loc2_.§##'§ / (_loc2_.§-!$§ || _loc2_.§##'§));
         }
      }
      
      public function setMinDailyTop(param1:uint) : void
      {
         this.§2"c§ = param1;
      }
      
      public function setIndexNumber(param1:int) : void
      {
         var _loc2_:uint = param1 + 1;
         var _loc3_:Boolean = getItem() != null && UserProfile(getItem()).getBestRank() == 0;
         var _loc4_:Boolean = getItem() != null && UserProfile(getItem()).getDailyRating() >= this.§2"c§;
         if(getChildByName("icon_rank"))
         {
            getChildByName("icon_rank").visible = !_loc3_ && (_loc2_ > 0 && _loc2_ <= 100);
         }
         if(getChildByName("icon_0"))
         {
            getChildByName("icon_0").visible = _loc3_ && (_loc2_ > 0 && _loc2_ <= 100);
         }
         if(getChildByName("icon_1"))
         {
            getChildByName("icon_1").visible = _loc4_ && _loc2_ == 1;
         }
         if(getChildByName("icon_2"))
         {
            getChildByName("icon_2").visible = _loc4_ && _loc2_ == 2;
         }
         if(getChildByName("icon_3"))
         {
            getChildByName("icon_3").visible = _loc4_ && _loc2_ == 3;
         }
         if(param1 == -1)
         {
            §7&5§.§?$k§(this.§6#u§," ");
            this.§<"F§.visible = true;
         }
         else
         {
            §7&5§.§?$k§(this.§6#u§,String(_loc2_));
            this.§<"F§.visible = false;
         }
      }
   }
}

