package §"% §
{
   import § !8§.§9%+§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%# §.§@a§;
   import §&!@§.§5"`§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §-!U§.*;
   import §-@§.§0"e§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%k§.§?%o§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class LevelUpDialog extends §@& §
   {
      
      private const §`!i§:int = 15;
      
      public var §>#U§:Boolean;
      
      public var §-&=§:Boolean;
      
      public var §8%I§:int;
      
      private var hp:int;
      
      private var §?$Q§:int;
      
      private var team:int;
      
      private var fuzy:int;
      
      private var ruby:int;
      
      private var token:int;
      
      private var bossToken:int;
      
      private var wagerToken:int;
      
      private var postBtn:§?%>§;
      
      private var shopBtn:§?%>§;
      
      private var §>#J§:UserProfile = Application.userProfile.§ "P§();
      
      private var §]%'§:§,%[§;
      
      private var rewardPanel:§7$U§;
      
      private var §1#q§:§`&-§;
      
      private var §%"U§:Vector.<§`&-§> = new Vector.<§`&-§>(0);
      
      private var pack:§,&F§;
      
      public function LevelUpDialog(param1:int)
      {
         this.§8%I§ = param1;
         this.pack = §?%o§.§+$Q§(param1);
         this.§>#J§.setLevel(param1);
         super(§6#A§.§!&6§(§+"'§.§3n§));
      }
      
      public static function §@#X§(param1:int, param2:Function) : void
      {
         var _loc3_:int = 0;
         var _loc4_:LevelUpDialog = null;
         var _loc5_:§,&F§ = null;
         if(§4! §.§7%>§(param1))
         {
            _loc3_ = Application.userProfile.getLevel();
            _loc4_ = new LevelUpDialog(_loc3_);
            if(param2 != null)
            {
               §""n§.single(_loc4_,§[%w§.WINDOW_CLOSE,param2);
            }
            _loc4_.show();
            _loc5_ = §?%o§.§+$Q§(_loc3_);
            §0"e§.§6s§(_loc5_.getWeapons(true),_loc5_.§2!O§(),_loc5_.§?"y§(),_loc5_.§]#x§());
         }
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§<![§;
         §=#h§ = §0$N§.BUTTON_OK;
         §<"b§ = true;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc5_:Array = null;
         var _loc6_:Vector.<Race> = null;
         var _loc7_:Race = null;
         var _loc8_:§&!e§ = null;
         super.§@"o§(param1);
         var _loc2_:DisplayObject = §4"0§.§##W§(§#!`§(),"postBtn");
         this.postBtn = §!&5§.§7#[§(_loc2_);
         this.postBtn.§[!u§(this.§,%M§);
         this.postBtn.setText(§0$N§.WIN_GAME_SHARE,§"-§.§+$m§);
         this.shopBtn = §!&5§.§7#[§(getChildByName("shopBtn"));
         this.shopBtn.§[!u§(this.§`#-§);
         this.shopBtn.setText(§0$N§.LEVEL_UP_DIALOG_BUTTON_SHOP,§"-§.§+$m§);
         this.§]%'§ = new §,%[§(getChildByName("artsItemsContainer") as MovieClip,"x");
         var _loc3_:Array = §<$c§.§-v§(this.§>#J§);
         if(_loc3_)
         {
            _loc5_ = [];
            _loc6_ = Race.§;$F§();
            for each(_loc7_ in _loc6_)
            {
               if(_loc7_.§]!D§().§,X§() == this.§8%I§ && _loc7_.§]!D§().getId() != Race.ALIEN.getId())
               {
                  _loc5_.push(§9%+§.§?%S§()[_loc7_.§]!D§().getId()]);
               }
            }
            for each(_loc8_ in _loc3_)
            {
               if(_loc8_ is §;#_§)
               {
                  _loc5_[_loc5_.length] = new §`%g§(_loc8_.getId(),0);
               }
               else if(_loc8_ is §=?§)
               {
                  _loc5_[_loc5_.length] = new §]$X§(_loc8_.getId());
               }
            }
            this.§]%'§.§[#E§(_loc5_);
         }
         else
         {
            this.§]%'§.setVisible(false);
         }
         this.rewardPanel = new §7$U§(getChildByName("rewardItemsContainer") as MovieClip);
         var _loc4_:Array = this.pack.§@$0§();
         if(_loc4_.length == 0)
         {
            this.rewardPanel.setVisible(false);
            (getChildByName("dummy") as MovieClip).visible = true;
         }
         else
         {
            (getChildByName("dummy") as MovieClip).visible = false;
            this.rewardPanel.§[#E§(_loc4_);
         }
         §'%s§("title").text = §0%§.format(§0$N§.LEVEL_UP_DIALOG_TITLE,{"level":this.§8%I§});
         §'%s§("description").text = §0$N§.LEVEL_UP_DIALOG_DESCRIPTION;
         §'%s§("bonusDescription").text = §0$N§.LEVEL_UP_DIALOG_BONUS_TEXT;
         §'%s§("newThingsDescription").text = §0$N§.LEVEL_UP_DIALOG_THINGS_TEXT;
         §4! §.§ $O§(Application.userProfile);
         this.§%!j§();
         if(this.§8%I§ < §,! §.§[b§)
         {
            this.postBtn.getContainer().parent.visible = false;
            §`o§.§^#c§(this.shopBtn.getContainer(),param1);
         }
      }
      
      private function §,%M§(param1:Event) : void
      {
         this.§>#U§ = true;
         this.hide();
      }
      
      private function §`#-§(param1:Event) : void
      {
         this.§-&=§ = true;
         this.hide();
      }
      
      private function §%!j§() : void
      {
         this.§?$Q§ = §4! §.§ $O§(this.§>#J§);
         this.hp = §<!9§.§["q§(this.§8%I§) - §<!9§.§["q§(this.§8%I§ - 1);
         this.team = §<!9§.§4p§(this.§8%I§) - §<!9§.§4p§(this.§8%I§ - 1);
         this.fuzy = this.pack.§#!G§();
         this.ruby = this.pack.§@$D§();
         this.token = this.pack.§<!M§(§#&E§.§-!l§);
         this.wagerToken = this.pack.§<!M§(§#&E§.§^5§);
         this.bossToken = this.pack.§<!M§(§#&E§.§#E§);
         if(this.§?$Q§ > 0)
         {
            this.§]"k§(§@a§.§["I§,"+" + this.§?$Q§,§0$N§.LEVEL_UP_DIALOG_PARAMS_TIPS);
         }
         if(this.hp > 0)
         {
            this.§]"k§(§@a§.§>f§,"+" + this.hp,§0$N§.LEVEL_UP_DIALOG_LIFE_TIPS);
         }
         if(this.team > 0)
         {
            this.§]"k§(§@a§.§9!#§,"+" + this.team,§0$N§.LEVEL_UP_DIALOG_COMMAND_TIPS);
         }
         if(this.fuzy > 0)
         {
            this.§]"k§(§@a§.§-$$§,this.fuzy,§0$N§.FUZY_QTIP);
         }
         if(this.ruby > 0)
         {
            this.§]"k§(§@a§.§7$X§,this.ruby,§0$N§.RUBY_QTIP);
         }
         if(this.token > 0)
         {
            this.§]"k§(§@a§.§7"R§,this.token,§#&E§.§-!l§.§@!1§);
         }
         if(this.wagerToken > 0)
         {
            this.§]"k§(§@a§.§=A§,this.wagerToken,§#&E§.§^5§.§@!1§);
         }
         if(this.bossToken > 0)
         {
            this.§]"k§(§@a§.§<"h§,this.bossToken,§#&E§.§#E§.§@!1§);
         }
         §`o§.§0#P§(this.§1#q§.getContainer(),getContainer());
         var _loc1_:DisplayObject = getChildByName("bonusDescription");
         this.§1#q§.getContainer().y = _loc1_.y + _loc1_.height;
      }
      
      private function §]"k§(param1:String, param2:Object, param3:String) : void
      {
         var _loc4_:§`&-§ = null;
         var _temp_1:* = new §`&-§(§6#A§.§!&6§(param1));
         _loc4_ = new §`&-§(§6#A§.§!&6§(param1));
         var _loc5_:TextField = _loc4_.§'%s§("count");
         _loc5_.autoSize = TextFieldAutoSize.LEFT;
         §7&5§.§?$k§(_loc5_,param2.toString());
         _loc4_.setQtip(param3);
         this.§7"%§(_loc4_);
      }
      
      private function §7"%§(param1:§`&-§) : void
      {
         var _loc2_:Sprite = null;
         if(!this.§1#q§)
         {
            _loc2_ = new Sprite();
            §#!`§().addChild(_loc2_);
            this.§1#q§ = new §`&-§(_loc2_);
         }
         this.§1#q§.addChild(param1);
         this.§%"U§.push(param1);
         if(this.§%"U§.length > 1)
         {
            §`o§.§4%4§(param1.getContainer(),this.§1#q§.§#!`§().getChildAt(this.§%"U§.length - 2),this.§`!i§);
         }
      }
      
      private function §8"i§(param1:String, param2:String) : MovieClip
      {
         §'%s§(param1 + ".text").text = param2;
         §'%s§(param1 + ".text").autoSize = TextFieldAutoSize.LEFT;
         return §'$a§(param1);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         if(§8"%§.§^%W§.§5!3§())
         {
            §8"%§.§#m§.§^!<§(Application.§5!>§.§1$i§.§6#+§());
         }
         super.show(param1);
      }
      
      override public function destroy() : void
      {
         this.§1#q§.destroy();
         this.rewardPanel.destroy();
         this.§]%'§.destroy();
         this.postBtn.destroy();
         this.shopBtn.destroy();
         super.destroy();
      }
      
      override public function hide() : void
      {
         super.hide();
         Application.§5!>§.§1$i§.mainInterface.§ $`§.§6$i§();
         if(Application.userProfile.getLevel() == §,! §.DAILY_TASKS_ACCESS)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.DAILY_TASKS_OPENED,§,#W§.§7"d§,§8"%§.§8!E§.§=!;§);
         }
      }
   }
}

