package §&#h§
{
   import § &5§.§%$O§;
   import §"!C§.§2v§;
   import §##j§.§9x§;
   import §##y§.CollisionEvent;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §,"`§.§;8§;
   import §-8§.§3!x§;
   import §0&F§.§0%v§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §<%J§.§!!`§;
   import §<%J§.RopeRaceGiftMenu;
   import §=&!§.§]$d§;
   import §?#g§.Race;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!"b§
   {
      
      private static var §3$I§:Date;
      
      public static var § !F§:Date;
      
      public static const §`&'§:int = 2;
      
      public static const §^#K§:int = 3;
      
      public static const §3%&§:int = 4;
      
      private static const §0"#§:int = 7;
      
      private static const §8$A§:int = 200;
      
      private static const §7#"§:int = 30;
      
      private var §?%K§:§<#&§;
      
      private var §6F§:§'-§;
      
      private var §`#J§:§!!`§;
      
      private var §6%<§:Function;
      
      private var §;%X§:RopeRaceGiftMenu;
      
      private var §]!5§:int;
      
      private var §%!,§:Boolean;
      
      private var §9%R§:Boolean;
      
      private var §-&;§:§1%z§;
      
      public function §!"b§()
      {
         super();
         this.§?%K§ = §<#&§.valueOf(§-"P§.§`$=§);
      }
      
      private static function §>;§(param1:UserProfile) : void
      {
         param1.§&$g§(Race.§+#T§.§]!D§());
         param1.§?!0§(Race.§+#T§.getId(),0);
         param1.setLevel(§0"#§);
         param1.stats.§8+§.value = §8$A§;
         param1.stats.§+#+§.value = §7#"§;
         param1.stats.§'$Q§.value = 0;
         param1.§7"i§(null);
         param1.§;"U§(null);
         param1.§;"!§(new <UserProfile>[param1.§ "P§()]);
      }
      
      public static function §'"p§() : Boolean
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:uint = 0;
         if(Boolean(§3$I§) && Boolean(§ !F§))
         {
            _loc1_ = §3$I§.getTime() / 1000;
            _loc2_ = § !F§.getTime() / 1000;
            _loc3_ = §0#2§.§@&6§();
            return _loc2_ > _loc3_ && _loc1_ <= _loc3_;
         }
         return false;
      }
      
      public function §3&%§() : void
      {
         §8"%§.§?!W§.§`";§(§8"%§.§?$5§.wager,§2v§.ROPE_RACE);
      }
      
      public function §1"A§(param1:Vector.<PvpProfileStructure>, param2:§]$d§) : void
      {
         var _loc5_:UserProfile = null;
         var _loc6_:PvpProfileStructure = null;
         var _loc3_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         var _loc4_:Vector.<uint> = new Vector.<uint>(0);
         for each(_loc6_ in param1)
         {
            _loc5_ = new UserProfile();
            _loc5_.§1G§.§"Q§(_loc6_);
            §>;§(_loc5_);
            _loc5_.§"]§()[0] = _loc5_;
            _loc3_[_loc3_.length] = _loc5_;
            _loc4_[_loc4_.length] = _loc6_.teamNum;
            if(_loc6_.id != Application.userProfile.getId())
            {
               §4! §.§`$@§(_loc5_);
            }
         }
         param2.setProfiles(_loc3_,_loc4_);
         param2.§6"M§();
      }
      
      private function §&U§() : void
      {
         if(!this.§`#J§)
         {
            this.§`#J§ = new §!!`§();
         }
         this.§`#J§.show();
      }
      
      public function startBattle() : void
      {
         §8"%§.§?!W§.§`";§(this.§?%K§);
      }
      
      public function §@§(param1:DisplayObject = null) : §'-§
      {
         if(!this.§6F§ && Boolean(param1))
         {
            this.§6F§ = new §'-§(param1 as SimpleButton);
            this.§6F§.§[!u§(this.§4%1§);
         }
         return this.§6F§;
      }
      
      public function §4%1§(param1:Event = null) : void
      {
         if(§'"p§())
         {
            if(Boolean(this.§-&;§) && this.§-&;§.rewards.length > 0)
            {
               this.§^&8§();
            }
            else
            {
               §5f§.§9!8§(this.§&U§);
            }
         }
         else
         {
            this.§8"u§();
         }
      }
      
      private function §^&8§() : void
      {
         if(this.§-&;§)
         {
            new RopeRaceGiftMenu().show();
         }
      }
      
      public function §8"u§() : void
      {
         if(this.§6F§)
         {
            this.§6F§.setVisible(false);
         }
         §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.RACE_QUEST_THEEND,§,#W§.§6!m§);
      }
      
      public function § %3§(param1:QuestProgressStructure) : void
      {
         var _loc2_:Object = JSON.parse(param1.progress);
         this.§9%R§ = param1.canStartNew;
         this.§%!,§ = param1.rewarded;
         this.§]!5§ = _loc2_.win;
         if(this.§6F§)
         {
            this.§6F§.setVisible(§'"p§() && Application.userProfile.getLevel() >= this.§?%K§.minLevel);
         }
      }
      
      public function §?&%§(param1:Function) : void
      {
         this.§6%<§ = param1;
         if(!this.§-&;§)
         {
            §[&G§.§8"&§.show();
            §%%w§.§,U§(new GetQuestReward(§2v§.ROPE_RACE));
         }
         else
         {
            this.§%"k§();
         }
      }
      
      public function §<&;§(param1:§9$v§) : void
      {
         §[&G§.§8"&§.hide();
         var _loc2_:GetQuestRewardResponse = GetQuestRewardResponse(param1.message);
         this.§-&;§ = §1%z§.§!!Z§(_loc2_.reward);
         this.§-&;§.§;!c§();
         if(this.§;%X§)
         {
            this.§%"k§();
         }
         else
         {
            this.§^&8§();
            if(this.§6%<§ != null)
            {
               this.§6%<§();
               this.§6%<§ = null;
            }
         }
      }
      
      private function §%"k§() : void
      {
         var _loc1_:§9x§ = null;
         if(this.§6%<§ != null)
         {
            _loc1_ = this.§-&;§.rewards[0];
            this.§-&;§.rewards.splice(0,1);
            this.§6%<§(_loc1_);
         }
         if(this.§>2§.rewards.length == 0)
         {
            this.§-&;§ = null;
         }
      }
      
      public function §&# §(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         if(Boolean(param1) && Boolean(param1["ROPE_RACE"]))
         {
            _loc2_ = String(param1["ROPE_RACE"]).split(",");
            _loc3_ = String(_loc2_[0]).split("-");
            _loc4_ = String(_loc2_[1]).split("-");
            §3$I§ = new Date(_loc3_[0],int(_loc3_[1]) - 1,_loc3_[2]);
            § !F§ = new Date(_loc4_[0],int(_loc4_[1]) - 1,_loc4_[2]);
         }
         if(this.§6F§)
         {
            this.§6F§.setVisible(§'"p§() && Application.userProfile.getLevel() >= this.§?%K§.minLevel);
         }
      }
      
      public function get wager() : §<#&§
      {
         return this.§?%K§;
      }
      
      public function get canStartNew() : Boolean
      {
         return this.§9%R§;
      }
      
      public function get §'!!§() : Boolean
      {
         return this.§%!,§;
      }
      
      public function set §'!!§(param1:Boolean) : void
      {
         this.§%!,§ = param1;
      }
      
      public function §"!4§() : Boolean
      {
         return !this.§%!,§ && this.§]!5§ > 0;
      }
      
      public function get §>2§() : §1%z§
      {
         return this.§-&;§;
      }
   }
}

