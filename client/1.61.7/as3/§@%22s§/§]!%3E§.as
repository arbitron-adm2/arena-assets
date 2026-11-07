package §@"s§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § #m§.§2#P§;
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §#"V§.§?%>§;
   import §#%!§.*;
   import §#P§.§`o§;
   import §&!@§.§!6§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.QuestGiftItem;
   import §'%!§.§;%q§;
   import §+$=§.§6#A§;
   import §+%S§.§=t§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%[§.§]%s§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1A§.§#"§;
   import §2!-§.DamageEvent;
   import §2#H§.§"j§;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4'§.§`"q§;
   import §7"Q§.§0$L§;
   import §9&+§.*;
   import §<!W§.§7!L§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.*;
   import §@!i§.§!m§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.messages.client.ExecuteSpecialDeal;
   import ru.pragmatix.wormix.messages.client.LeaveFromChat;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §]!>§ extends §#&3§
   {
      
      private static var §,#0§:int;
      
      private static const §,$o§:int = 50;
      
      private static const §&!D§:ColorTransform = new ColorTransform(1,1,1,1,-100,-100,-70);
      
      private static const §8&5§:ColorTransform = new ColorTransform();
      
      private var enemies:Vector.<§+%]§>;
      
      private var §<%I§:Boolean = true;
      
      public function §]!>§(param1:§+%]§, param2:int, param3:int)
      {
         super(param1,param2,param3);
         addEventListener(§0%v§.§&!D§,this.§""0§);
      }
      
      public static function §=_§() : uint
      {
         return §,#0§ = 0;
      }
      
      public static function §9$9§() : uint
      {
         var _loc1_:* = §§findproperty(§,#0§);
         var _temp_2:* = _loc1_.§,#0§;
         §§push(_temp_2);
         var _loc2_:Number = _temp_2 + 1;
         _loc1_.§,#0§ = _loc2_;
         return §§pop() % 2 == 0 ? §+%z§.SPIDER_UPG_1A : §+%z§.SPIDER_UPG_1B_FROST;
      }
      
      override protected function §;#?§() : uint
      {
         return §9$9§();
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:§"Z§ = null;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:§+%]§ = null;
         if(Boolean(!disposed && param1.power > 0 && param1.source) && Boolean(param1.source.owner) && Boolean(param1.source.owner.squad))
         {
            _loc2_ = param1.source.owner;
            _loc3_ = param1.source.owner.squad;
            if(!_loc3_.isAi() && !§&&2§)
            {
               this.enemies = §8"%§.§?!W§.§4"m§.§6"M§(owner);
               _loc4_ = §8"%§.§?!W§.§4"m§.§4$C§().length;
               _loc5_ = 0;
               for each(_loc6_ in this.enemies)
               {
                  if(Boolean(_loc6_) && Boolean(!_loc6_.disposed) && (_loc3_ != _loc6_.squad || _loc4_ == 1))
                  {
                     _loc5_++;
                     if(_loc6_.buffs.hasBuff(§1%I§.NAME))
                     {
                        _loc6_.buffs.§6C§(§1%I§.NAME);
                        this.§4"7§(_loc2_);
                        return;
                     }
                  }
               }
               if(!§&&2§ && owner.buffs.hasBuff(§"j§.NAME))
               {
                  this.§4"7§(_loc2_);
               }
            }
         }
         super.§""0§(param1);
      }
      
      private function §4"7§(param1:§+%]§) : void
      {
         if(!disposed)
         {
            if(!§&&2§)
            {
               §&&2§ = true;
               clip.transform.colorTransform = §&!D§;
            }
            if(this.§<%I§ && owner.buffs.hasBuff(§"j§.NAME))
            {
               owner.buffs.§6C§(§"j§.NAME);
               if(Boolean(param1) && !param1.disposed)
               {
                  §'"$§.§]#I§(param1,owner.x,owner.y,owner,§,$o§,20,10,true,true);
               }
            }
         }
      }
      
      public function disableClear() : void
      {
         this.§<%I§ = false;
      }
      
      public function resetDamaged() : void
      {
         if(§&&2§)
         {
            §&&2§ = false;
            clip.transform.colorTransform = §8&5§;
         }
      }
      
      override protected function §8%^§(param1:Event) : void
      {
         super.§8%^§(param1);
         this.enemies = null;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         removeEventListener(§0%v§.§&!D§,this.§""0§);
         this.enemies = null;
         super.§[$u§(param1);
      }
   }
}

