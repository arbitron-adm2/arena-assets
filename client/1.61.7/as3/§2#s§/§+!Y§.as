package §2#s§
{
   import §!L§.§+"'§;
   import §#P§.§`o§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §2B§.§#&E§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §+!Y§ extends §`&-§
   {
      
      private var bonusIcon:§`&-§;
      
      private var count:int;
      
      private var type:int;
      
      private var num:int;
      
      public function §+!Y§(param1:DisplayObject, param2:int, param3:int, param4:int)
      {
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         this.num = param2;
         this.type = param3;
         this.count = param4;
         super(param1);
         var _loc5_:MovieClip = §'$a§("icons");
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_.numChildren)
         {
            _loc5_.getChildAt(_loc6_).visible = false;
            _loc6_++;
         }
         var _loc7_:MovieClip = _loc5_.getChildByName(this.§@"A§(param3)) as MovieClip;
         _loc7_.visible = true;
         if(param3 == §=$,§.§!&F§.serverCode)
         {
            _loc8_ = §3!3§.§&%!§();
            _loc7_.addChild(_loc8_);
            §`o§.§,i§(_loc8_,_loc5_.getChildByName("exp"));
            _loc8_.x = (_loc7_.width - _loc8_.width) * 0.5;
            _loc8_.y = (_loc7_.height - _loc8_.height) * 0.5;
         }
         if(param3 == §=$,§.§<$e§.serverCode)
         {
            _loc9_ = §6#A§.§!&6§(§+"'§.§;$7§);
            _loc6_ = 0;
            while(_loc6_ < _loc9_.numChildren)
            {
               _loc9_.getChildByName("box" + _loc6_).visible = param4 == §<,§.§0#i§.§2$j§[_loc6_];
               _loc6_++;
            }
            _loc7_.addChild(_loc9_);
            §`o§.§,i§(_loc9_,_loc5_.getChildByName("exp"));
            _loc9_.x = (_loc7_.width - _loc9_.width) * 0.5;
            _loc9_.y = (_loc7_.height - _loc9_.height) * 0.5;
         }
         this.bonusIcon = new §`&-§(_loc7_);
         this.bonusIcon.setQtip(this.§5C§(param3));
         this.§%#=§(false);
         this.setExist(false);
         this.setCount(param4);
         this.§>#f§(param2);
      }
      
      private function §5C§(param1:int) : String
      {
         switch(param1)
         {
            case §=$,§.FUZY.serverCode:
               return §0$N§.FUZY_QTIP;
            case §=$,§.REACTION.serverCode:
               return §0$N§.REACTION;
            case §=$,§.§<$e§.serverCode:
               return §0$N§.SEASON_WEAPONS;
            case §=$,§.§=$K§.serverCode:
               return §0$N§.EXPERIENCE;
            case §=$,§.§!&F§.serverCode:
               return §0$N§.CHRISTMASS_KEY;
            case §=$,§.§]!3§.serverCode:
               return §#&E§.§-!l§.§@!1§;
            case §=$,§.§^5§.serverCode:
               return §#&E§.§^5§.§@!1§;
            case §=$,§.§#E§.serverCode:
               return §#&E§.§#E§.§@!1§;
            case §=$,§.RUBY.serverCode:
               return §0$N§.RUBY_QTIP;
            default:
               return null;
         }
      }
      
      private function §@"A§(param1:int) : String
      {
         switch(param1)
         {
            case 1:
               return "fuzy";
            case 2:
               return "ruby";
            case 3:
               return "token";
            case 4:
               return "reaction";
            case 5:
               return "weapon";
            case 7:
               return "weapon";
            case 11:
               return "exp";
            case 13:
               return "wager";
            case 14:
               return "boss";
            default:
               return null;
         }
      }
      
      public function setExist(param1:Boolean) : void
      {
         getChildByName("check").visible = param1;
      }
      
      public function §>#f§(param1:int) : void
      {
         var _loc2_:String = §0%§.format(§0$N§.DAILY_BONUS_DAY,{"day":(param1 + 1).toString()});
         §3#1§("day",_loc2_,§"-§.§+$m§);
      }
      
      public function setCount(param1:int) : void
      {
         §3#1§("count",param1,§"-§.§6"j§);
      }
      
      public function §%#=§(param1:Boolean) : void
      {
         getChildByName("normal").visible = !param1;
      }
   }
}

