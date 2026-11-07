package §+%o§
{
   import § !P§.§9%Z§;
   import § #m§.§2#P§;
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §@$v§.§%3§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §]!`§ extends §`&-§ implements §?A§
   {
      
      private const §<l§:int = 49;
      
      private const §,$q§:int = this.§<l§ >> 1;
      
      private var hint:MovieClip = null;
      
      private var §;$4§:§[&H§;
      
      private const §,v§:String = "HintProgressAchiev";
      
      private var nameAchiev:TextField;
      
      private var descrAchiev:TextField;
      
      private var progressBar:§%3§;
      
      private var awardSlot:MovieClip;
      
      private var awardCount:TextField;
      
      public function §]!`§(param1:MovieClip, param2:Boolean = true)
      {
         super(param1);
         if(param2)
         {
            this.§;$4§ = new §[&H§(param1);
            this.§;$4§.§@!y§(this,§2#P§.§<%T§(§;#^§.RIGHT));
         }
         this.hint = §6#A§.§!&6§(this.§,v§);
         this.nameAchiev = TextField(this.hint.getChildByName("nameAchiev"));
         this.nameAchiev.width = this.hint.width - 20;
         this.descrAchiev = TextField(this.hint.getChildByName("descrAchiev"));
         this.progressBar = new §%3§(MovieClip(this.hint.getChildByName("achievProgressBar")),null,true);
         this.awardSlot = MovieClip(this.hint.getChildByName("awardSlot"));
         this.awardCount = TextField(this.awardSlot.getChildByName("awardCount"));
         this.awardCount.autoSize = TextFieldAutoSize.LEFT;
         if(param1.getChildByName("dark"))
         {
            param1.getChildByName("dark").visible = !§0#2§.§0%Y§();
         }
         if(param1.getChildByName("light"))
         {
            param1.getChildByName("light").visible = §0#2§.§0%Y§();
         }
      }
      
      public function update(param1:§1! §, param2:int) : void
      {
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc3_:int = §9%Z§.§]![§(param1,param2);
         var _loc4_:MovieClip = §6#A§.§!&6§(param1.levels[_loc3_].icon);
         _loc4_.width = _loc4_.height = this.§<l§;
         var _loc5_:Shape = new Shape();
         _loc5_.graphics.beginFill(0,1);
         _loc5_.graphics.drawCircle(this.§,$q§,this.§,$q§,this.§,$q§);
         var _loc6_:MovieClip = MovieClip(§#!`§().getChildByName("icon"));
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_.numChildren)
         {
            _loc6_.removeChildAt(_loc7_);
            _loc7_++;
         }
         if(param1.id >= §!$L§.§`x§)
         {
            _loc8_ = §6#A§.§!&6§(§+"'§.§@!d§);
            _loc9_ = _loc4_;
            _loc9_.width = _loc9_.height = this.§<l§ * 0.8;
            _loc8_.addChild(_loc9_);
            _loc9_.x = (_loc8_.width - _loc9_.width) * 0.5;
            _loc9_.y = (_loc8_.height - _loc9_.height) * 0.5;
            _loc8_.width = _loc8_.height = this.§<l§ * 1.5;
            _loc4_ = _loc8_;
         }
         _loc6_.addChild(_loc5_);
         _loc4_.mask = _loc5_;
         _loc6_.addChild(_loc4_);
         if(param1.id >= §!$L§.§`x§)
         {
            _loc4_.x = (this.§<l§ - _loc4_.width) * 0.5;
            _loc4_.y = (this.§<l§ - _loc4_.height) * 0.5;
         }
         if(this.hint)
         {
            this.§%%S§(param1,param2,_loc3_);
         }
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint;
      }
      
      private function §%%S§(param1:§1! §, param2:int, param3:int) : void
      {
         this.nameAchiev.text = §0%§.format(§0$N§.ACHIEV_GOAL_TITLE,{"name":param1.levels[param3].name});
         this.descrAchiev.text = param1.§]G§(param3);
         this.progressBar.setValue(param2);
         this.progressBar.§]"M§(param1.levels[param3].maxValue ? param1.levels[param3].maxValue : 0);
         this.§7&1§(param1.levels[param3]);
      }
      
      private function §7&1§(param1:§`"w§) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in this.awardSlot)
         {
            _loc2_.visible = false;
         }
         if(Boolean(param1.reward.type) && param1.reward.type != "")
         {
            this.awardCount.visible = true;
            this.awardSlot.getChildByName(param1.reward.type).visible = true;
            this.awardCount.text = param1.reward.count ? param1.reward.count : "";
         }
         else
         {
            this.awardSlot.visible = false;
         }
      }
   }
}

