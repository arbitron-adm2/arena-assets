package §2B§
{
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import § K§.§2""§;
   import §!$D§.*;
   import §!$Z§.§6=§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §#"V§.§<"4§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §-@§.§-#m§;
   import §-@§.§^8§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §0&F§.§`"^§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2"v§.*;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4#`§.§+!l§;
   import §4u§.§<!c§;
   import §5!,§.§?!P§;
   import §5"J§.§4!m§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$7§.§!§;
   import §?$7§.§+l§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§]$y§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetFriendsForMission;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §^%y§ extends §`&-§ implements §?A§
   {
      
      private var §"&3§:TextField;
      
      private var hint:§<!c§;
      
      private var §;$4§:§[&H§;
      
      private var count:int;
      
      private var type:§#&E§;
      
      public function §^%y§(param1:§#&E§, param2:§`&-§)
      {
         super(param2.§'$a§(param1.name));
         this.type = param1;
         this.§"&3§ = §'%s§(param1 == §#&E§.§-!l§ ? "count" : "bookmark.count");
         this.§;$4§ = new §[&H§(container);
      }
      
      public static function §7#_§(param1:uint) : String
      {
         var _loc8_:int = 0;
         var _loc2_:uint = §8"%§.§[%h§.§]",§() / 1000;
         var _loc3_:Number = §8"%§.§[%h§.§&H§() / 1000;
         var _loc4_:uint = §-#m§.§%&E§ - param1;
         var _loc5_:Number = §0#2§.§@&6§();
         var _loc6_:String = §0$N§.BATTLE_TOKENS_RESTORES;
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_)
         {
            _loc8_ = _loc3_ + _loc7_ * _loc2_;
            _loc6_ += "\n" + §0#2§.§1" §(_loc5_ + _loc8_,true) + (_loc7_ + 1 < _loc4_ ? "," : "");
            _loc7_++;
         }
         if(§2$^§.isVipExist())
         {
            _loc6_ += "\n" + §0$N§.VIP_TOKENS_RESTORE_FAST;
         }
         return _loc6_;
      }
      
      public function update() : void
      {
         var _loc1_:String = null;
         if(§8"%§.§%w§.getArenaMenu().isShown())
         {
            §1%"§.delay(this.update,this,60 * 1000);
         }
         this.count = this.getCurrentCount();
         §7&5§.§?$k§(this.§"&3§,String(this.count));
         setVisible(this.§+#B§());
         if(!this.hint)
         {
            this.hint = new §<!c§();
         }
         §<$=§();
         this.§;$4§.§`Z§();
         if(this.count < this.§[#y§())
         {
            setQtip("");
            _loc1_ = this.§;"b§(this.count);
            this.hint.§`b§(true,_loc1_,"text");
            this.hint.§&Z§(150);
            this.§<$U§(this.hint);
         }
         else
         {
            this.hint = null;
            setQtip(this.type.§@!1§ + "\n" + this.type.text + (this.type == §#&E§.§-!l§ && §2$^§.isVipExist() ? "\n" + §0$N§.VIP_TOKENS_RESTORE_FAST : ""));
         }
      }
      
      private function §+#B§() : Boolean
      {
         var _loc1_:int = Application.userProfile.getLevel();
         var _loc2_:§2""§ = Social.settings.§7#-§();
         switch(this.type)
         {
            case §#&E§.§-!l§:
               return !§8"%§.§%w§.getArenaMenu().getTabPanel().§ T§();
            case §#&E§.§^5§:
               return _loc1_ >= _loc2_.valueOf(§-"P§.§"#p§).minLevel;
            case §#&E§.§#E§:
               return _loc1_ >= §+l§.§?!$§;
            case §#&E§.§1!L§:
               return _loc1_ >= §+l§.§?!$§;
            case §#&E§.§9"#§:
               return _loc1_ >= _loc2_.valueOf(§-"P§.§,%@§).minLevel;
            default:
               return true;
         }
      }
      
      private function getCurrentCount() : int
      {
         switch(this.type)
         {
            case §#&E§.§-!l§:
               return §8"%§.§[%h§.§`t§();
            case §#&E§.§^5§:
               return §8"%§.§%w§.§-!8§();
            case §#&E§.§#E§:
               return §8"%§.§%w§.§ #;§();
            case §#&E§.§1!L§:
               return int(§6%k§.superBossAvailable);
            case §#&E§.§9"#§:
               return int(§8"%§.§%$r§.§5!_§ && !§8"%§.§%$r§.§6$T§);
            default:
               return -1;
         }
      }
      
      private function §[#y§() : int
      {
         switch(this.type)
         {
            case §#&E§.§-!l§:
               return §-#m§.§%&E§;
            case §#&E§.§^5§:
               return §^8§.§%&E§;
            case §#&E§.§#E§:
               return §^8§.§%&E§;
            case §#&E§.§1!L§:
               return §^8§.§%&E§;
            case §#&E§.§9"#§:
               return 0;
            default:
               return 0;
         }
      }
      
      public function §;"b§(param1:uint) : String
      {
         switch(this.type)
         {
            case §#&E§.§-!l§:
               return §7#_§(param1);
            case §#&E§.§^5§:
               return this.§8&?§(§0$N§.WAGER_TOKEN);
            case §#&E§.§#E§:
               return this.§8&?§(§0$N§.BOSS_TOKEN);
            case §#&E§.§1!L§:
               return this.§8&?§(§0$N§.SUPERBOSS_TOKEN);
            case §#&E§.§9"#§:
               return "";
            default:
               return null;
         }
      }
      
      private function §8&?§(param1:String) : String
      {
         return §0%§.format(§0$N§.ONE_TOKEN_RESTORE,{"token":param1.toLowerCase()});
      }
      
      public function §<$U§(param1:§<!c§) : void
      {
         this.hint = param1;
         this.§;$4§.§@!y§(this);
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint ? this.hint.getContainer() : null;
      }
   }
}

