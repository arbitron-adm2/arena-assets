package §-@§
{
   import § $q§.§3U§;
   import §!L§.§+"'§;
   import §#"V§.§8"@§;
   import §&$Y§.§6[§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §-&5§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §2!-§.NewUnitEvent;
   import §4$b§.*;
   import §<"?§.§7!@§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.globalization.DateTimeFormatter;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §2"U§
   {
      
      private var restrictedWagers:Vector.<int>;
      
      private var §?"N§:Vector.<uint>;
      
      public function §2"U§()
      {
         super();
      }
      
      public function §1"Q§(param1:Vector.<int>, param2:Vector.<uint>) : void
      {
         this.restrictedWagers = param1;
         this.§?"N§ = param2;
         this.§'"C§();
         this.§!@§(§-"P§.§>!x§,§-"P§.§,%@§);
      }
      
      private function §!@§(param1:int, param2:int) : void
      {
         if(this.restrictedWagers.indexOf(param2) > -1)
         {
            return;
         }
         var _loc3_:uint = this.§&#i§(param1);
         if(_loc3_)
         {
            this.restrictedWagers.push(param2);
            this.§?"N§.push(_loc3_);
         }
      }
      
      public function §&#i§(param1:int) : uint
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.restrictedWagers.length)
         {
            if(param1 == this.restrictedWagers[_loc2_])
            {
               return this.§?"N§[_loc2_];
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §'"C§() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.restrictedWagers.length)
         {
            if(this.§?"N§[_loc1_])
            {
               _loc2_ = §8"%§.§!"F§ + this.§?"N§[_loc1_];
               _loc3_ = §0#2§.§1" §(_loc2_);
               _loc4_ = §0%§.format(§0$N§.PVP_WAGER_AVAILABLE_FOR_PRIME,{
                  "br":" ",
                  "time":_loc3_
               });
            }
            _loc1_++;
         }
      }
   }
}

