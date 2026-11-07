package §<!W§
{
   import §!$D§.*;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&#h§.*;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0"L§.*;
   import §0%[§.§""n§;
   import §0%[§.§]2§;
   import §1#p§.§2=§;
   import §2#i§.§+%z§;
   import §2#s§.BankMenu;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4'§.§`"q§;
   import §65§.§`"C§;
   import §7$t§.§2"y§;
   import §8$Z§.*;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §=!V§.*;
   import §>!_§.§'!&§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import avmplus.getQualifiedClassName;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §'0§ extends §`"C§
   {
      
      public static const NAME:String = "PHYSICS_DEFENSE_BUFF";
      
      public static const §5& §:§&$2§ = new §&$2§(10);
      
      public static const §1O§:§&$2§ = new §&$2§(10);
      
      private static const §>!Y§:Number = 1.5;
      
      private static const §@$u§:§&$2§ = new §&$2§(15);
      
      private static const §3%m§:§&$2§ = new §&$2§(10);
      
      private var §8<§:§]$q§;
      
      public function §'0§(param1:int = -1)
      {
         super(NAME,param1);
      }
      
      private function §3%<§() : void
      {
         unit.bonuses.§]!X§(this.§8<§);
      }
      
      private function §^"f§() : void
      {
         unit.bonuses.§9=§(this.§8<§);
      }
      
      private function §!"H§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:Array = [10,20,25,30];
         for each(_loc2_ in _loc1_)
         {
            this.test(_loc2_);
         }
      }
      
      private function test(param1:int) : void
      {
         var _loc2_:int = §5& §.value + Math.min(§1O§.value,int(param1 / (§@$u§.value / §3%m§.value)));
         var _loc3_:int = §5& §.value + Math.min(§1O§.value,Math.round(param1 / §>!Y§));
         var _loc4_:int = §5& §.value + Math.min(§1O§.value,int(param1 / §>!Y§));
      }
      
      override protected function §5#F§() : void
      {
         var _loc1_:int = §5& §.value + Math.min(§1O§.value,Math.round(unit.record.getLevel() / §>!Y§));
         this.§8<§ = new §]$q§(NAME);
         this.§8<§.§3%<§(new §@"I§(Bonus.PHYSICAL_DEFENSE,_loc1_));
         this.§3%<§();
      }
      
      override protected function §0&"§() : void
      {
         this.§^"f§();
      }
   }
}

