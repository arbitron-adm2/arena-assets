package §;!Z§
{
   import § $q§.§3U§;
   import §##j§.§`%g§;
   import §%$!§.§9$p§;
   import §%$!§.§@!o§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §@%I§.§2R§;
   import §]^§.§3$f§;
   import config.§28§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §;K§ extends §`&-§
   {
      
      private static const §<#O§:Number = 0.7;
      
      private var §+!8§:TextField;
      
      private var §^!k§:TextField;
      
      private var §,%w§:TextField;
      
      private var §6x§:TextField;
      
      private var §%%^§:§3U§;
      
      private var §?R§:§3U§;
      
      private var weapons:Vector.<§^%3§> = new Vector.<§^%3§>();
      
      public function §;K§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§+!8§ = §'%s§("hpCount");
         this.§^!k§ = §'%s§("attackCount");
         this.§,%w§ = §'%s§("armorCount");
         this.§6x§ = §'%s§("charName");
         this.§%%^§ = new §3U§(getChildByName("artifact.icon"),true);
         this.§?R§ = new §3U§(getChildByName("hat.icon"),true);
         var _loc2_:DisplayObjectContainer = DisplayObjectContainer(getChildByName("weaponCells"));
         var _loc3_:int = 0;
         var _loc4_:int = _loc2_.numChildren;
         while(_loc3_ < _loc4_)
         {
            this.weapons[_loc3_] = new §^%3§(MovieClip(_loc2_.getChildAt(_loc3_)),"",§<#O§);
            §'%s§("weaponCells.weapon" + (_loc3_ + 1) + ".count").autoSize = TextFieldAutoSize.RIGHT;
            _loc3_++;
         }
         §7&5§.§>&<§(§'%s§("params"),§0$N§.MERCS_QUEST_CHAR_PARAMS);
         §7&5§.§>&<§(§'%s§("hp"),§0$N§.HP + ":");
         §7&5§.§>&<§(§'%s§("attack"),§0$N§.ATTACK + ":");
         §7&5§.§>&<§(§'%s§("armor"),§0$N§.ARMOR + ":");
      }
      
      public function §@$`§(param1:MercenariesTeamMember) : void
      {
         setVisible(true);
         var _loc2_:§9$p§ = param1.profile.stats;
         §7&5§.§>&<§(this.§+!8§,§4! §.§@#F§(_loc2_.§8+§.value,_loc2_.§3$L§.value));
         §7&5§.§>&<§(this.§^!k§,§4! §.§@#F§(_loc2_.§'$Q§.value,_loc2_.§>%Y§.value));
         §7&5§.§>&<§(this.§,%w§,§4! §.§@#F§(_loc2_.§+#+§.value,_loc2_.§>%v§.value));
         §7&5§.§>&<§(this.§6x§,param1.profile.getCharName());
         this.§%%^§.setItem(param1.profile.§+!b§());
         this.§?R§.setItem(param1.profile.§2u§());
         var _loc3_:int = int(param1.backpack.length);
         var _loc4_:int = 0;
         while(_loc4_ < this.weapons.length)
         {
            if(_loc4_ < _loc3_)
            {
               this.weapons[_loc4_].setItem(new §`%g§(param1.backpack[_loc4_].weaponId,param1.backpack[_loc4_].count));
            }
            else
            {
               this.weapons[_loc4_].setItem(null);
            }
            _loc4_++;
         }
      }
   }
}

