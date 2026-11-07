package §,&8§
{
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&!?§.*;
   import §&#E§.§4##§;
   import §+$=§.§1§;
   import §+$=§.AbstractConfigLoader;
   import §-@§.§+"A§;
   import §-@§.§5h§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §2"L§.§^$y§;
   import §7$t§.§&!e§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §=#g§.*;
   import §?"[§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §@r§ extends AbstractConfigLoader
   {
      
      public static const §!!O§:String = "***";
      
      private static const §]!^§:§&`§ = new §&`§(§@r§);
      
      private var §6!l§:Vector.<String> = new Vector.<String>(0);
      
      private var §&"x§:Vector.<RegExp> = new Vector.<RegExp>(0);
      
      public function §@r§(param1:String, param2:String, param3:Vector.<String>)
      {
         super(param1,param2,param3,§1§.XML);
      }
      
      override protected function §>!s§(param1:XML, param2:String) : void
      {
         var options:String;
         var xmlList:XMLList = null;
         var sortLengthWord:Function = null;
         var str:String = null;
         var xml:XML = param1;
         var path:String = param2;
         sortLengthWord = function(param1:String, param2:String):Number
         {
            if(param1.length > param2.length)
            {
               return -1;
            }
            if(param1.length < param2.length)
            {
               return 1;
            }
            return 0;
         };
         xmlList = xml.*;
         var i:int = 0;
         var n:int = xmlList.length();
         while(i < n)
         {
            this.§6!l§.push(xmlList[i]);
            i++;
         }
         this.§6!l§.sort(sortLengthWord);
         options = "igx";
         for each(str in this.§6!l§)
         {
            this.§&"x§.push(new RegExp(str,options));
         }
      }
      
      public function §'#X§(param1:String) : String
      {
         var _loc2_:Array = null;
         var _loc6_:RegExp = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:String = null;
         _loc2_ = param1.split(" ");
         var _loc3_:uint = _loc2_.length;
         var _loc4_:Array = [];
         var _loc5_:String = "";
         for each(_loc6_ in this.§&"x§)
         {
            _loc9_ = 0;
            while(_loc9_ < _loc3_)
            {
               _loc10_ = _loc2_[_loc9_].toLowerCase();
               _loc11_ = _loc10_.replace(_loc6_,§!!O§);
               _loc4_[_loc9_] = _loc11_;
               if(_loc11_ != _loc10_)
               {
                  _loc2_[_loc9_] = _loc11_;
               }
               _loc9_++;
            }
         }
         _loc7_ = 0;
         _loc8_ = int(_loc4_.length);
         while(_loc7_ < _loc8_)
         {
            if(_loc2_[_loc7_].toLowerCase() == _loc4_[_loc7_])
            {
               _loc4_.splice(_loc7_,1,_loc2_[_loc7_]);
            }
            _loc5_ += _loc4_[_loc7_] + (_loc7_ < _loc8_ - 1 ? " " : "");
            _loc7_++;
         }
         return _loc5_;
      }
      
      override protected function get log() : §&`§
      {
         return §]!^§;
      }
   }
}

