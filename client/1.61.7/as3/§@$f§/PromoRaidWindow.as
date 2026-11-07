package §@$f§
{
   import §!L§.§+"'§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §%E§.§5%C§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §4!x§.§@& §;
   import §9%W§.§!7§;
   import §>%S§.§^!V§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.social.Social;
   
   public class PromoRaidWindow extends §@& §
   {
      
      public function PromoRaidWindow()
      {
         var _loc1_:String = null;
         super(§6#A§.§!&6§(§+"'§.§#%U§));
         §5$2§(§>!-§);
         _loc1_ = Social.settings.§@"G§().toString();
         var _loc2_:Boolean = _loc1_ == "ru" || _loc1_ == "ua";
         getChildByName("title_ru").visible = _loc2_;
         getChildByName("title_en").visible = !_loc2_;
         §'%s§("text1").defaultTextFormat = new TextFormat("Arial",16,null,false);
         §'%s§("text1").text = §0%§.format(§0$N§.§<N§("RAID_FREE_TO_PLAY_TEXT1"),{"br1":"\n"});
      }
      
      public static function §5$2§(param1:§?%>§) : void
      {
         var _loc2_:String = null;
         var _loc5_:DisplayObjectContainer = null;
         _loc2_ = Social.settings.§@"G§().toString();
         var _loc3_:Boolean = _loc2_ == "ru" || _loc2_ == "ua";
         var _loc4_:Array = [param1.simpleButton.downState,param1.simpleButton.upState,param1.simpleButton.overState];
         for each(_loc5_ in _loc4_)
         {
            §`o§.getChildByName(_loc5_,"title_ru").visible = _loc3_;
            §`o§.getChildByName(_loc5_,"title_en").visible = !_loc3_;
         }
      }
      
      override protected function okAction() : void
      {
         super.okAction();
         §5%C§.§?&F§();
      }
   }
}

