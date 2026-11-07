package §!!!§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §#k§.§9$v§;
   import §'!Z§.§1"-§;
   import §+%S§.§2$#§;
   import §0&F§.§0%v§;
   import §3#T§.Boomerang;
   import §4'§.§^"p§;
   import §<%E§.§;!y§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §?#g§.§-!k§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@$§.§+%>§;
   import §]$v§.§<§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.§9+§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §+$k§ extends §`&-§
   {
      
      private var §7#^§:Vector.<§4#_§> = new Vector.<§4#_§>(0);
      
      private var §2$l§:TextField;
      
      private var newLabel2:TextField;
      
      private var newLabel3:TextField;
      
      public function §+$k§(param1:DisplayObjectContainer)
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§4#_§ = null;
         var _loc6_:TextField = null;
         super(param1);
         var _loc2_:int = 0;
         var _loc3_:int = §#!`§().numChildren;
         while(_loc2_ < _loc3_)
         {
            _loc4_ = §#!`§().getChildAt(_loc2_);
            if(_loc4_ is TextField)
            {
               _loc6_ = _loc4_ as TextField;
               if(_loc4_.name.indexOf("textNew1") == 0)
               {
                  this.§2$l§ = _loc6_;
               }
               else if(_loc4_.name.indexOf("textNew2") == 0)
               {
                  this.newLabel2 = _loc6_;
               }
               else if(_loc4_.name.indexOf("textNew3") == 0)
               {
                  this.newLabel3 = _loc6_;
               }
               _loc6_.text = "";
               _loc6_.visible = false;
            }
            else
            {
               _loc5_ = new §4#_§(_loc4_);
               this.§7#^§.push(_loc5_);
            }
            _loc2_++;
         }
      }
      
      public function update(param1:§`!d§) : void
      {
         var _loc4_:§4#_§ = null;
         var _loc5_:§-!k§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:§?$8§ = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc2_:uint = §@&&§.getProfile().§7$F§().length;
         var _loc3_:int = §@&&§.getProfile().getLevel();
         for each(_loc4_ in this.§7#^§)
         {
            _loc5_ = param1.§%§(_loc4_.id);
            _loc4_.setVisible(_loc5_ != null);
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.getLevel() <= _loc3_ && (!_loc5_.§5K§() || _loc2_ >= §9+§.§#%H§);
               _loc7_ = new §?$8§(_loc5_.§@$+§(),_loc5_.§]G§(),_loc5_.getLevel(),_loc3_,_loc5_.§5K§(),_loc2_,§9+§.§#%H§);
               _loc4_.setQtipPanel(_loc7_,§;#^§.LEFT);
               _loc8_ = MovieClip(_loc4_.getContainer());
               _loc8_.alpha = _loc6_ ? 1 : 0.5;
               if(_loc5_.getLevel() == 1)
               {
                  this.§'y§(_loc5_,this.§2$l§);
               }
               else if(_loc5_.getLevel() > 1)
               {
                  _loc9_ = MovieClip(_loc8_.getChildByName("border"));
                  _loc9_.getChildByName("simple").visible = false;
                  _loc9_.getChildByName("red").visible = !_loc6_;
                  _loc9_.getChildByName("green").visible = _loc6_;
                  if(_loc5_.§5K§())
                  {
                     this.§'y§(_loc5_,this.newLabel3);
                  }
                  else
                  {
                     this.§'y§(_loc5_,this.newLabel2);
                  }
               }
            }
         }
      }
      
      private function §'y§(param1:§-!k§, param2:TextField) : void
      {
         param2.visible = Boolean(param1.§-&C§()) && param1.§-&C§() != §^"p§.NONE;
         if(param2.visible)
         {
            §&$9§.§>&F§(param2,§"-§.§+$m§,§^"p§.getText(param1.§-&C§()));
         }
         else
         {
            param2.text = "";
         }
      }
   }
}

