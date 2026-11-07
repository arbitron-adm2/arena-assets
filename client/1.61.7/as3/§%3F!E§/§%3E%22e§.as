package §?!E§
{
   import § &5§.§%$O§;
   import §!$D§.*;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§+" §;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#W§.§?#]§;
   import §&#h§.*;
   import §'"N§.*;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2!-§.HpChangeEvent;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3"@§.§##L§;
   import §3#a§.§-!`§;
   import §4!!§.§76§;
   import §4'§.§`"q§;
   import §7!B§.§+%-§;
   import §7$t§.§2"y§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §9%k§.§=k§;
   import §<$q§.§,%3§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%c§.§]"C§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=&!§.§<$Z§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§5&4§;
   import §@!i§.§@$&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import avmplus.getQualifiedClassName;
   import com.adobe.images.PNGEncoder;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §>"e§ extends §]"C§
   {
      
      private var §"&'§:MovieClip;
      
      private var §8$L§:§+%-§;
      
      private var §3&!§:MovieClip;
      
      private var §5#O§:uint;
      
      private const HELP_RECORD_TURN1:Array = [§?#]§.LEARNING_3_TURN_1_TEXT];
      
      private const HELP_RECORD_TURN2:Array = [§?#]§.LEARNING_3_TURN_2_TEXT];
      
      private const HELP_RECORD_TURN3:Array = [§?#]§.LEARNING_3_TURN_3_PART1_TEXT,§?#]§.LEARNING_3_TURN_3_PART2_TEXT];
      
      private const HELP_RECORD_TURN4:Array = [§?#]§.LEARNING_3_TURN_4_TEXT];
      
      private const HELP_RECORD_TURN5:Array = [[§?#]§.LEARNING_3_TURN_5_N1_PART_1_TEXT,§6#A§.§!&6§(§?#]§.LEARNING_3_TURN_5_N1_MC),§?#]§.LEARNING_3_TURN_5_N1_PART_2_TEXT],[§?#]§.LEARNING_3_TURN_5_N2_TEXT,§6#A§.§!&6§(§?#]§.LEARNING_3_TURN_5_N2_MC)]];
      
      private const HELP_RECORD_TURN6:Array = [§?#]§.LEARNING_3_TURN_6_N1_TEXT];
      
      private const HELP_RECORD_TURN7:Array = [§?#]§.LEARNING_3_TURN_7_TEXT];
      
      private const HELP_RECORD_TURN9:Array = [§?#]§.LEARNING_3_TURN_9_TEXT];
      
      public function §>"e§()
      {
         super(58,true);
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc1_:§?!d§ = super.§,$j§();
         _loc1_.backpackEnabled = true;
         return _loc1_;
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[3]]];
         §%$D§("LearningMission3_CentralPart",mapRecord.§8$2§[3].x,mapRecord.§8$2§[3].y + 300,0,1,1,true);
         §%$D§("LearningMission3_LeftUpPart",mapRecord.§8$2§[3].x + 370,mapRecord.§8$2§[3].y + 80);
         §%$D§("LearningMission3_LeftDownPart",mapRecord.§8$2§[3].x - 660,mapRecord.§8$2§[3].y - 5);
         §%$D§("LearningMission3_RightPart",mapRecord.§8$2§[3].x - 480,mapRecord.§8$2§[3].y - 310);
         this.§5#O§ = 1;
      }
      
      private function §3$6§(param1:MouseEvent) : void
      {
         if(this.§5#O§ == 1)
         {
            this.§7#Z§();
         }
         else if(this.§5#O§ == 2)
         {
            tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN3);
            this.§%"8§();
         }
         else if(this.§5#O§ == 3)
         {
            this.§[$$§();
         }
         else if(this.§5#O§ == 4)
         {
            this.§<&$§();
         }
         ++this.§5#O§;
      }
      
      private function §?m§(param1:§"%$§) : void
      {
         var e:§"%$§ = param1;
         if(e.§?%H§)
         {
            Application.instance.addChild(tutorialPanel.getContainer());
            if(§1#y§ == 0)
            {
               tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN4);
               §8$a§.§&!#§(currentUnit,§0%v§.WEAPON_SELECT,function(param1:Event):void
               {
                  bagClose();
                  tutorialPanel.setTutorialRecords(HELP_RECORD_TURN5);
               });
            }
            else if(§1#y§ == 1)
            {
               §8$a§.§&!#§(currentUnit,§0%v§.WEAPON_SELECT,function(param1:Event):void
               {
                  bagClose();
                  tutorialPanel.setTutorialRecords(HELP_RECORD_TURN9);
                  showThirdTarget();
               });
            }
         }
         else
         {
            Application.scene.§7#o§.addChild(tutorialPanel);
         }
         tutorialPanel.§2%s§();
      }
      
      override protected function § "a§(param1:uint) : void
      {
         if(param1 == 1)
         {
            Application.userProfile.§1G§.§@-§([]);
            tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN1,true);
            tutorialPanel.nextHelpTextBtn.§[!u§(this.§3$6§);
            currentUnit.§3%1§(true);
            currentUnit.addEventListener(§0%v§.§&!D§,§,![§);
            §8"%§.§?!W§.§4"m§.§%!J§(false);
            Application.scene.§7#o§.§ g§ = false;
         }
         §]%G§.§!%7§(-600);
      }
      
      private function §7#Z§() : void
      {
         tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN2,true);
         this.§3&!§ = §6#A§.§!&6§("ArrowBagMenu");
         this.§3&!§.rotation = 180;
         Application.scene.§7#o§.§?!C§(this.§3&!§);
         this.§-%;§();
      }
      
      override protected function §8#G§() : void
      {
         super.§8#G§();
         this.§-%;§();
      }
      
      private function §-%;§() : void
      {
         var _loc1_:§`&-§ = null;
         if(this.§3&!§)
         {
            _loc1_ = Application.scene.§7#o§.wind;
            this.§3&!§.y = _loc1_.y + (_loc1_.height << 1) - 40;
            this.§3&!§.x = _loc1_.x + (_loc1_.width >> 1) + 13;
         }
      }
      
      private function §[$$§() : void
      {
         Application.userProfile.§1G§.§@-§([new WeaponStructure(§+%z§.BAZOOKA,-1)]);
         §8"%§.§?!W§.§4"m§.§%!J§(true);
         §=$Y§(0);
         Application.scene.addEventListener(§"%$§.NAME,this.§?m§);
      }
      
      private function §<&$§() : void
      {
         §%$D§("LearningMission3_LeftDownPart",mapRecord.§8$2§[3].x - 660,mapRecord.§8$2§[3].y - 5,0,1);
         §%$O§.§3%R§(Application.scene,currentUnit.x - 500,currentUnit.y - 150,0.6);
         this.§8$L§ = §2"i§(mapRecord.§8$2§[3].x - 530,mapRecord.§8$2§[3].y + 150,this.§`E§);
         this.§"&'§ = Application.scene.§[&3§(§+"'§.§;$O§,0,0);
         this.§"&'§.transform.colorTransform = new ColorTransform(1.2,0.6,0.6,0.5);
         §8$a§.§&!#§(this.§8$L§.physicModel,§9#1§.STABLE,function(param1:Event):void
         {
            makeMark(1);
         });
      }
      
      private function §`E§(param1:Event = null) : void
      {
         tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN6);
         this.§"&'§.visible = false;
         this.showSecondTarget();
      }
      
      private function showSecondTarget() : void
      {
         §%$D§("LearningMission3_LeftUpPart",mapRecord.§8$2§[3].x + 370,mapRecord.§8$2§[3].y + 80,0,1);
         §%$O§.§3%R§(Application.scene,currentUnit.x + 100,currentUnit.y - 150,0.56);
         this.§8$L§ = §2"i§(mapRecord.§8$2§[3].x + 650,mapRecord.§8$2§[3].y + 150,this.§@##§);
         this.§"&'§.visible = true;
         §8$a§.§&!#§(this.§8$L§.physicModel,§9#1§.STABLE,function(param1:Event):void
         {
            makeMark(0);
         });
      }
      
      private function §@##§(param1:Event = null) : void
      {
         stripWeapon();
         Application.userProfile.§1G§.§@-§([new WeaponStructure(§+%z§.GRENADE,-1)]);
         this.§"&'§.visible = false;
         tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN7);
         §=$Y§(1);
         Application.scene.addEventListener(§"%$§.NAME,this.§?m§);
      }
      
      private function showThirdTarget() : void
      {
         §%$D§("LearningMission3_RightPart",mapRecord.§8$2§[3].x - 480,mapRecord.§8$2§[3].y - 310,0,1);
         §%$O§.§3%R§(Application.scene,currentUnit.x - 100,currentUnit.y - 400,0.56);
         this.§"&'§.visible = true;
         this.§8$L§ = §2"i§(mapRecord.§8$2§[3].x - 580,mapRecord.§8$2§[3].y - 420,this.§6&;§);
         this.§"&'§.y = -100;
         §8$a§.§&!#§(this.§8$L§.physicModel,§9#1§.STABLE,function(param1:Event):void
         {
            makeMark(0,false);
         });
      }
      
      private function §6&;§(param1:Event = null) : void
      {
         Application.scene.§9$_§(this.§"&'§);
         this.§"&'§ = null;
         stripWeapon();
         tutorialPanel.nextHelpTextBtn.removeHandler(this.§3$6§);
         if(tutorialPanel.isVisible())
         {
            tutorialPanel.hide();
            tutorialPanel.destroy();
            §#!Z§.fire(§#!Z§.§8%S§);
            §2&6§.§1%h§(§<$Z§.§+%I§);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§8$L§ = null;
      }
      
      private function makeMark(param1:uint, param2:Boolean = true) : void
      {
         var _loc3_:uint = 45;
         var _loc4_:Number = Number(§0$a§.§-&-§(currentUnit.x,currentUnit.y,this.§8$L§.x,this.§8$L§.y,_loc3_,param2,true,1)[param1]);
         this.§"&'§.x = currentUnit.x + §!7§.§@$>§ * Math.cos(_loc4_);
         this.§"&'§.y = currentUnit.y + §!7§.§@$>§ * Math.sin(_loc4_);
      }
      
      private function §%"8§() : void
      {
         if(this.§3&!§)
         {
            if(Application.scene.§7#o§.§+$_§(this.§3&!§))
            {
               Application.scene.§7#o§._removeChild(this.§3&!§);
            }
            this.§3&!§ = null;
         }
      }
      
      private function bagClose() : void
      {
         §8"%§.§?!W§.§4"m§.§%!J§(false);
         §!%#§();
         Application.scene.removeEventListener(§"%$§.NAME,this.§?m§);
         Application.scene.§7#o§.addChild(tutorialPanel);
         tutorialPanel.§2%s§();
      }
   }
}

