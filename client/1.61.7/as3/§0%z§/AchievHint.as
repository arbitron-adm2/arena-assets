package §0%z§
{
   import § #m§.§?A§;
   import §!L§.§`#p§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §7"Q§.§0$L§;
   import §8$V§.*;
   import §8$Z§.§9"t§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §=!p§.§'%#§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class AchievHint implements §?A§
   {
      
      private var hint:MovieClip;
      
      private var cells:Array = [];
      
      private var icons:Array = [];
      
      private var §^!w§:§1! §;
      
      private var § &$§:int;
      
      private var awardSlot:Array;
      
      private var awardCount:Array;
      
      public function AchievHint(param1:§1! §, param2:§,$h§)
      {
         super();
         this.§^!w§ = param1;
         this.hint = §6#A§.§!&6§("AchievHint");
         this.§ &$§ = this.§^!w§.levels.length;
         this.awardSlot = [];
         this.awardCount = [];
         var _loc3_:int = 0;
         while(_loc3_ < this.§ &$§)
         {
            this.cells[_loc3_] = this.hint.getChildByName("cellLevel" + _loc3_);
            this.icons[_loc3_] = new §<$]§(MovieClip(this.cells[_loc3_]).getChildByName("achievIcon") as MovieClip,_loc3_,param2);
            this.awardSlot[_loc3_] = MovieClip(this.cells[_loc3_].getChildByName("awardSlot"));
            this.awardCount[_loc3_] = TextField(this.awardSlot[_loc3_].getChildByName("awardCount"));
            this.awardCount[_loc3_].autoSize = TextFieldAutoSize.RIGHT;
            _loc3_++;
         }
         this.§>$V§(param1);
      }
      
      private function §>$V§(param1:§1! §) : void
      {
         var _loc3_:TextField = null;
         var _loc4_:TextField = null;
         var _loc5_:TextField = null;
         var _loc6_:uint = 0;
         var _loc7_:DisplayObject = null;
         var _loc8_:§`"w§ = null;
         var _loc9_:DisplayObject = null;
         var _loc10_:DisplayObject = null;
         var _loc11_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ &$§)
         {
            §<$]§(this.icons[_loc2_]).setIconLevel(_loc2_);
            §<$]§(this.icons[_loc2_]).setAchievIcon(this.§^!w§.levels[_loc2_].icon);
            _loc3_ = TextField(MovieClip(this.cells[_loc2_]).getChildByName("title"));
            _loc3_.text = this.§^!w§.levels[_loc2_].name;
            _loc4_ = TextField(MovieClip(this.cells[_loc2_]).getChildByName("descr"));
            _loc4_.autoSize = TextFieldAutoSize.CENTER;
            _loc4_.text = this.§^!w§.§]G§(_loc2_);
            §`o§.§8#y§(_loc4_,MovieClip(this.cells[_loc2_]).getChildByName("alignHeight"));
            _loc5_ = TextField(MovieClip(this.cells[_loc2_]).getChildByName("points"));
            _loc5_.autoSize = TextFieldAutoSize.RIGHT;
            _loc6_ = this.§^!w§.levels[_loc2_].points;
            _loc5_.text = _loc6_.toString();
            _loc7_ = MovieClip(this.cells[_loc2_]).getChildByName("plus");
            if(_loc6_)
            {
               §`o§.§@"n§(_loc7_,_loc5_);
            }
            else
            {
               _loc10_ = MovieClip(this.cells[_loc2_]).getChildByName("awardBack");
               _loc11_ = MovieClip(this.cells[_loc2_]).getChildByName("wIcon");
               _loc3_.width = _loc4_.width = 280;
               _loc11_.visible = false;
               _loc5_.visible = false;
               _loc7_.visible = false;
               this.awardSlot[_loc2_].x = _loc11_.x - 10;
               _loc10_.x = this.awardSlot[_loc2_].x - 4;
            }
            _loc8_ = param1.levels[_loc2_];
            for each(_loc9_ in this.awardSlot[_loc2_])
            {
               _loc9_.visible = false;
            }
            if(Boolean(_loc8_.reward.type) && _loc8_.reward.type != "")
            {
               this.awardCount[_loc2_].visible = true;
               this.awardSlot[_loc2_].getChildByName(_loc8_.reward.type).visible = true;
               this.awardCount[_loc2_].text = _loc8_.reward.count ? _loc8_.reward.count : "";
            }
            else
            {
               this.awardSlot[_loc2_].visible = false;
            }
            _loc2_++;
         }
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint;
      }
   }
}

