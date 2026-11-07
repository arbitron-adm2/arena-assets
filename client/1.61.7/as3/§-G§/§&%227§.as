package §-G§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"$+§.§,!<§;
   import §#!5§.§>S§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2#x§.§@!U§;
   import §2B§.§#&E§;
   import §6%2§.§#"B§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^%%§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<$q§.§?!d§;
   import §=!p§.§1e§;
   import §>!_§.§'#m§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.GetAbandonedFriends;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.server.BuySkinResponse;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&"7§ extends §1#g§
   {
      
      private static const §+"I§:uint = 30 * 1000;
      
      private static var canRefresh:Boolean = true;
      
      private var cont:DisplayObjectContainer;
      
      private var §4#B§:DisplayObjectContainer;
      
      private var scrollPane:§>S§;
      
      private var §%[§:§"&=§;
      
      private var §!%§:§"&=§;
      
      private var §>&0§:§"&=§;
      
      private var §1?§:Vector.<§'#m§> = new Vector.<§'#m§>();
      
      public function §&"7§()
      {
         super(§6#A§.§!&6§(§+"'§.§9!,§));
      }
      
      public static function §3#-§() : void
      {
         canRefresh = true;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.cont = getChildByName("display") as DisplayObjectContainer;
         this.§4#B§ = this.cont.getChildByName("content") as DisplayObjectContainer;
         this.scrollPane = new §>S§(this.cont);
         this.§ "l§(false);
      }
      
      private function §5#L§() : void
      {
         this.§ "l§(true);
         this.reset();
         §8"%§.§!&I§.common.§@"#§(this.§!$y§);
      }
      
      private function §!$y§(param1:Vector.<ClanAuditActionTO>) : void
      {
         var notLoadedProfiles:Array;
         var i:int;
         var plug:§"&=§ = null;
         var actionCell:§'#m§ = null;
         var id:int = 0;
         var actions:Vector.<ClanAuditActionTO> = param1;
         canRefresh = false;
         §1%"§.delay(function():void
         {
            canRefresh = true;
         },this,§+"I§);
         if(actions.length == 0)
         {
            plug = this.§5&%§(§0$N§.CLAN_NO_ACTIVITY_THIS_MONTH);
            plug.y = height / 3;
            this.§ "l§(false);
            return;
         }
         notLoadedProfiles = [];
         §=%_§.§=#L§(actions);
         i = actions.length - 1;
         while(i >= 0)
         {
            if(§,!<§.§5#v§.indexOf(actions[i].action) != -1)
            {
               actionCell = new §'#m§(actions[i]);
               for each(id in actionCell.§-!?§)
               {
                  if(notLoadedProfiles.indexOf(id) == -1)
                  {
                     notLoadedProfiles.push(id);
                  }
               }
               this.§`%U§(actionCell);
               this.§1?§.push(actionCell);
               this.§4#B§.addChild(actionCell.getContainer());
               §`o§.§1$T§(actionCell.getContainer(),this.§4#B§);
            }
            i--;
         }
         if(notLoadedProfiles.length > 0)
         {
            §`#p§.§#&2§(notLoadedProfiles,this.§=$9§);
         }
         else
         {
            this.§ "l§(false);
         }
         this.scrollPane.update();
      }
      
      private function §`%U§(param1:§'#m§) : void
      {
         if(param1.§%&1§ && !this.§>&0§)
         {
            this.§>&0§ = this.§5&%§(§0$N§.RATING_YESTERDAY);
         }
         else if(param1.§&%Z§ && !this.§!%§)
         {
            this.§!%§ = this.§5&%§(§0$N§.RATING_TO_DAY);
         }
         else if(!param1.§&%Z§ && !param1.§%&1§ && !this.§%[§)
         {
            this.§%[§ = this.§5&%§(§0$N§.CLAN_HISTORY_HEADER);
         }
      }
      
      private function §5&%§(param1:String) : §"&=§
      {
         var _loc2_:§"&=§ = null;
         _loc2_ = new §"&=§(§6#A§.§!&6§(§+"'§.§-$B§));
         var _loc3_:TextField = _loc2_.§'%s§("text");
         §&$9§.§>&F§(_loc3_,§"-§.§+$m§,param1);
         this.§4#B§.addChild(_loc2_.getContainer());
         if(this.§4#B§.numChildren > 1)
         {
            §`o§.§1$T§(_loc2_.getContainer(),this.§4#B§);
         }
         return _loc2_;
      }
      
      private function §=$9§(param1:Vector.<UserProfile>) : void
      {
         var _loc2_:§'#m§ = null;
         for each(_loc2_ in this.§1?§)
         {
            if(_loc2_.§-!?§.length > 0)
            {
               _loc2_.§+%U§();
            }
         }
         this.§ "l§(false);
      }
      
      private function § "l§(param1:Boolean) : void
      {
         this.cont.visible = !param1;
         §&#F§(param1);
      }
      
      private function reset() : void
      {
         if(this.scrollPane.scrollV > 0)
         {
            this.scrollPane.scrollV = 0;
         }
         this.§4#B§.removeChildren();
         this.§%[§ = null;
         this.§!%§ = null;
         this.§>&0§ = null;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(canRefresh)
         {
            this.§5#L§();
         }
         this.scrollPane.§]%E§();
      }
      
      override public function deactivate() : void
      {
         this.scrollPane.§@%i§();
         super.deactivate();
      }
   }
}

