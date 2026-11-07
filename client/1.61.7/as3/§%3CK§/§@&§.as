package §<K§
{
   import § !8§.§`!d§;
   import § !P§.§<#q§;
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §"$+§.*;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§#&%§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §&&6§.§0_§;
   import §+$=§.§6#A§;
   import §+%S§.§]&§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0%"§.§[!^§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2#W§.§ #,§;
   import §2o§.§]#@§;
   import §4'§.§^"p§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §65§.§`"C§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §8#o§.§#$s§;
   import §9![§.§^§;
   import §9%W§.§&!P§;
   import §;!Z§.MercsQuestGiftMenu;
   import §<$2§.§+$9§;
   import §<$2§.§<%>§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=&!§.§<$Z§;
   import §=1§.*;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §@!i§.§5&4§;
   import §@$§.§6$[§;
   import §@$v§.§%3§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import config.achievements.§"!&§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §@&§ extends §^#F§
   {
      
      protected var §,$H§:Number = 0;
      
      protected var delay:uint = 1200000;
      
      protected var userProfile:UserProfile;
      
      protected var §6%=§:String;
      
      protected var result:GetRatingResult;
      
      public function §@&§(param1:String)
      {
         super(§6#A§.§!&6§(param1));
         this.§6%=§ = §+"'§.§@#x§;
         container.scrollRect = new Rectangle(0,0,§ "N§.stageWidth,§ "N§.stageHeight);
         scrollPane.update();
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         scrollPane.scrollV = 0;
      }
      
      override protected function §&%p§() : DisplayObjectContainer
      {
         scrollPane = new §>S§(getChildByName("scrollPane") as MovieClip);
         var _loc1_:Sprite = new Sprite();
         DisplayObjectContainer(scrollPane.getChildByName("content")).addChild(_loc1_);
         return _loc1_;
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§<%>§ = new §<%>§(param1 as MovieClip,new §6$[§());
         §4"0§.§^%T§(_loc2_,2);
         return _loc2_;
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         super.§3u§(param1,param2,param3);
         §<%>§(param1).setIndexNumber(param3);
      }
      
      protected function §="3§(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         if(cells.length != param1)
         {
            this.§2&5§();
            _loc2_ = 0;
            while(_loc2_ < param1)
            {
               _loc3_ = §6#A§.§!&6§(this.§6%=§);
               §4#B§.addChild(_loc3_);
               if(_loc2_ > 0)
               {
                  §`o§.§1$T§(_loc3_,§4#B§,§<$k§);
               }
               _loc2_++;
            }
            §<#X§();
            scrollPane.update();
         }
      }
      
      override protected function §2&5§() : void
      {
         super.§2&5§();
         §4#B§.removeChildren();
      }
      
      override protected function setProfiles(param1:Array) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < cells.length)
         {
            this.§&%q§(§"&=§(cells[_loc2_]),UserProfile(param1[_loc2_]));
            _loc2_++;
         }
         super.setProfiles(param1);
      }
      
      public function loadIfNeeded() : void
      {
         throw new IllegalOperationError("Call abstract method loadIfNeeded in RatingTabPage");
      }
      
      protected function §;$B§(param1:§9$v§) : void
      {
         §%%w§.§-"j§(GetRatingResult,this.§;$B§);
         this.§,$H§ = new Date().time;
         this.result = §2%d§(GetRatingResult(param1.message));
         loader = new §7%0§();
         loader.§2#X§(this.result.userProfileStructures,§1%"§.§]$<§(this.§3#0§,this));
      }
      
      protected function §3#0§(param1:Array, param2:Boolean) : void
      {
         if(param1.length)
         {
            this.§9"J§(param1);
         }
         else
         {
            this.§&#F§(false);
         }
      }
      
      protected function §9"J§(param1:Array) : void
      {
         this.§&#F§(false);
         this.§="3§(param1.length);
         setData(param1);
         §;""§(param1);
         this.setProfiles(param1);
         this.§=%D§();
         loader = null;
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
      }
      
      public function §=%D§() : void
      {
         var _loc1_:§0$L§ = RatingWindow.§0"F§(this.§6%=§ == §+"'§.§4% §,this.§6%=§ == (§1""§.§'$d§ ? §+"'§.§3!p§ : §+"'§.§@#x§),this.§6%=§ == §+"'§.§3#X§);
         §^$x§(_loc1_ as §+$9§);
         if(isShown())
         {
            _loc1_.setVisible(true);
         }
         if(this.§6%=§ == §+"'§.§3#X§)
         {
            _loc1_.setItem(§]#i§.userClan);
         }
         else if(this.userProfile)
         {
            _loc1_.setItem(this.userProfile);
         }
      }
      
      override public function update() : void
      {
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §<"b§ = false;
         §[%T§ = true;
      }
      
      public function §&%q§(param1:§"&=§, param2:UserProfile) : void
      {
         if(param2)
         {
            param1.setItem(param2);
         }
         param1.setVisible(param2 != null);
      }
   }
}

