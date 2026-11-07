package §&#h§
{
   import § %9§.ActionQuestMenu;
   import §'$j§.§'-§;
   import §0"L§.§+# §;
   import §@!i§.§<#&§;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §,#;§
   {
      
      public static var §3$I§:Date;
      
      public static var § !F§:Date;
      
      private static const §`!+§:Array = [{
         "level":15,
         "bonus":45
      },{
         "level":50,
         "bonus":15
      }];
      
      private var §?%K§:§<#&§;
      
      private var §6F§:§'-§;
      
      private var §`#J§:ActionQuestMenu;
      
      public function §,#;§()
      {
         super();
         this.§?%K§ = §<#&§.valueOf(§-"P§.§68§);
      }
      
      public static function §8=§(param1:int) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §`!+§)
         {
            if(param1 < _loc2_.level)
            {
               return _loc2_;
            }
         }
         return {
            "level":200,
            "bonus":0
         };
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
      
      private function §&U§() : void
      {
         if(!this.§`#J§)
         {
            this.§`#J§ = new ActionQuestMenu();
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
            this.§&U§();
         }
         else
         {
            this.§8"u§();
         }
      }
      
      public function §8"u§() : void
      {
         if(this.§6F§)
         {
            this.§6F§.setVisible(false);
         }
         §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.ACTION_QUEST_THEEND,§,#W§.§6!m§);
      }
      
      public function §&# §(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         if(Boolean(param1) && Boolean(param1["DUEL_20"]))
         {
            _loc2_ = String(param1["DUEL_20"]).split(",");
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
   }
}

