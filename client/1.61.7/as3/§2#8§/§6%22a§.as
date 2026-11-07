package §2#8§
{
   import § #m§.§;#^§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0!§.§7`§;
   import §0!§.§8$Y§;
   import §0%[§.§0%§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §4#2§.*;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §8$Z§.§9"t§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§7"U§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import config.§=%A§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.gui.controls.§`,§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §6"a§ extends §9$k§
   {
      
      private static const §-!F§:Boolean = false;
      
      private static const §#&6§:Number = 50;
      
      private var §[#T§:UserProfile;
      
      private var §8$K§:§`&-§;
      
      public function §6"a§(param1:UserProfile, param2:Function = null)
      {
         super(param2);
         this.§[#T§ = param1;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         if(§-!F§)
         {
            this.§8$K§ = new §`&-§(§6#A§.§!&6§("SalesLabel"));
            §&$9§.§>&F§(this.§8$K§.§'%s§("title"),§"-§.§6"j§,"-" + String(§#&6§) + "%");
            §&$9§.§>&F§(this.§8$K§.§'%s§("desc"),§"-§.§+$m§,§<"G§.§%! §("SALES_LABEL"));
            addChild(this.§8$K§);
            this.§8$K§.x = 630;
            this.§8$K§.y = 430;
         }
      }
      
      override protected function §;""§(param1:Array) : void
      {
         super.§;""§(param1);
         if(§-!F§)
         {
            this.§8$K§.setVisible(Boolean(unitCard.isVisible()) && !emptyPanel.isVisible() && !§3!a§.isVisible() && Boolean(§4#B§.visible));
         }
      }
      
      override protected function §]#4§() : void
      {
         §3!a§.setVisible(false);
         if(!§2=§.§9$M§(this.§[#T§))
         {
            §1$,§();
         }
      }
      
      override protected function §-5§() : void
      {
         var _loc1_:§'$2§ = null;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         if(§-!F§)
         {
            _loc1_ = §5&4§.§9Z§(this.§[#T§,this.§[#T§.getLevel(),this.§[#T§.§4!^§());
            _loc2_ = Math.max(300,§&$z§.ingamePrice - Math.floor(§#&6§ / 100 * _loc1_.ingamePrice));
            _loc3_ = Math.ceil(_loc2_ / 100);
            §&$z§.ingamePrice = _loc2_;
            §&$z§.realPrice = _loc3_;
         }
      }
      
      override protected function §]%5§(param1:§+$A§, param2:uint) : void
      {
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc3_:UserProfile = selected;
         var _loc4_:int = int(§4!^§());
         _loc5_ = §0$c§.§5G§(Application.userProfile);
         _loc6_ = §<!9§.§4p§(Application.userProfile.getLevel());
         _loc7_ = §0$c§.§1!B§(Application.userProfile);
         var _loc8_:Boolean = this.§[#T§.isActive() && _loc5_ < _loc6_ && _loc7_ < 1;
         §8"%§.§%!m§.replace(_loc3_,param1,param2,_loc4_,this.§[#T§.getId(),_loc8_,§<$u§);
      }
   }
}

