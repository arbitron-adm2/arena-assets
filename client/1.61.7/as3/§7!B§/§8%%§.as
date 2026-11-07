package §7!B§
{
   import § &5§.§0&$§;
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §"$+§.§`&$§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §4u§.ReagentHint;
   import §6%2§.§'"Y§;
   import §7$t§.§&!e§;
   import §8$V§.*;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §=&!§.§]$d§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`#x§.§"$r§;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §8%%§ extends §&"T§
   {
      
      private static const §7"&§:String = "checked";
      
      private static const §"#Y§:String = "notChecked";
      
      public static const §9!"§:int = 50;
      
      private var callback:Function;
      
      private var target:§+%]§;
      
      private var radius:int;
      
      private var §4!A§:Vector.<§"Z§> = new Vector.<§"Z§>();
      
      public function §8%%§(param1:int, param2:int, param3:Function, param4:int, param5:String = null, param6:int = 50)
      {
         super(true,§@N§.§@$8§);
         if(param5)
         {
            §!%8§ = §6#A§.§!&6§(param5);
         }
         this.x = param1;
         this.y = param2;
         this.id = param4;
         this.stable = true;
         this.callback = param3;
         this.radius = param6;
         this.§@%H§(false);
         Application.scene.§@$I§.§1$+§(this);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
      }
      
      private function §@%D§(param1:Event) : void
      {
         var _loc2_:§+%]§ = §8"%§.§?!W§.§4"m§.activeUnit;
         if(this.§4!A§.indexOf(_loc2_.squad) == -1)
         {
            this.target = _loc2_;
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(Boolean(this.target) && Boolean(!this.target.disposed) && §<H§.§8!P§(this.target,x,y,this.radius,true))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               this.§@%H§();
            }
            this.§4!A§.push(this.target.squad);
            this.callback(this.target,this);
            this.target = null;
         }
      }
      
      private function §@%H§(param1:Boolean = true) : void
      {
         if(clip)
         {
            clip.getChildByName(§7"&§).visible = param1;
            clip.getChildByName(§"#Y§).visible = !param1;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
      }
   }
}

