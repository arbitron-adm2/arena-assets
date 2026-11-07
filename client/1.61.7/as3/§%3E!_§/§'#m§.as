package §>!_§
{
   import § &5§.§0&$§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.§,!<§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §8$V§.*;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.TimerEvent;
   import flash.globalization.DateTimeFormatter;
   import flash.text.TextField;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §'#m§ extends §"&=§
   {
      
      private var action:ClanAuditActionTO;
      
      public var §&%Z§:Boolean;
      
      public var §%&1§:Boolean;
      
      public var §-!?§:Array = [];
      
      public function §'#m§(param1:ClanAuditActionTO)
      {
         super(§6#A§.§!&6§(§+"'§.§#"5§));
         this.action = param1;
         this.§%&2§();
         this.§8%z§();
      }
      
      private function §%&2§() : void
      {
         var _loc1_:Date = null;
         var _loc4_:DateTimeFormatter = null;
         _loc1_ = §0#2§.§'#`§(this.action.date);
         var _loc2_:TextField = §'%s§("date");
         var _loc3_:TextField = §'%s§("time");
         _loc4_ = new DateTimeFormatter("eu-EU");
         _loc4_.setDateTimePattern("dd.MM.yyyy");
         var _loc5_:String = _loc4_.format(_loc1_);
         this.§&%Z§ = _loc4_.format(new Date()) == _loc5_;
         this.§%&1§ = _loc4_.format(new Date(new Date().getTime() - §0#2§.§5!q§)) == _loc5_;
         §&$9§.§>&F§(_loc2_,§"-§.§+$m§,_loc5_);
         _loc2_.mouseEnabled = false;
         _loc4_.setDateTimePattern("HH:mm");
         §&$9§.§>&F§(_loc3_,§"-§.§+$m§,_loc4_.format(_loc1_));
         _loc3_.mouseEnabled = false;
      }
      
      public function §+%U§() : void
      {
         var _loc1_:String = §,!<§.§%! §(this.action);
         var _loc2_:TextField = §'%s§("info");
         _loc2_.embedFonts = true;
         _loc2_.defaultTextFormat = §"-§.§+$m§;
         _loc2_.htmlText = _loc1_;
         _loc2_.mouseEnabled = true;
      }
      
      private function §8%z§() : void
      {
         if(!§`#p§.§ !§(this.action.publisherId))
         {
            this.§-!?§.push(this.action.publisherId);
         }
         if(this.action.memberId != 0 && !§`#p§.§ !§(this.action.memberId))
         {
            this.§-!?§.push(this.action.memberId);
         }
         if(this.§-!?§.length == 0)
         {
            this.§+%U§();
         }
      }
   }
}

