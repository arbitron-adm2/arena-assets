package §=#g§
{
   import § !P§.*;
   import §!L§.§+"'§;
   import §"%H§.*;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §+$=§.§6#A§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §8$V§.*;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!"X§
   {
      
      public static const §5%_§:uint = 0;
      
      public static const §%j§:uint = 1;
      
      public static const §;%;§:uint = 2;
      
      public static const §<#Z§:uint = 3;
      
      public static const §[&I§:uint = 4;
      
      public static const §`"V§:uint = 5;
      
      public static const §4&;§:uint = 6;
      
      private static const §`%O§:uint = 640;
      
      private static const §8&@§:uint = 1200;
      
      private var §5!K§:Dictionary = new Dictionary();
      
      private var §0!>§:Dictionary = new Dictionary();
      
      private var §7%O§:Dictionary = new Dictionary();
      
      private var §%%§:§1#g§;
      
      private var §?r§:§1#g§;
      
      private var §>!W§:Number;
      
      private var §[&<§:Number;
      
      private var §-"2§:Number;
      
      private var §4"E§:DisplayObject;
      
      public function §!"X§()
      {
         super();
         this.§%%§ = new §1#g§(§6#A§.§!&6§(§+"'§.§!%U§));
         this.§?r§ = new §1#g§(§6#A§.§!&6§(§+"'§.§7"t§));
      }
      
      private static function §7"X§(param1:DisplayObject) : Boolean
      {
         return param1.name == "mainMenuBg";
      }
      
      private static function §[$4§(param1:DisplayObject, param2:§%!x§) : void
      {
         param1.scaleX = param2.scale;
         param1.scaleY = param2.scale;
         param1.x += param2.offsetX;
         param1.y += param2.offsetY;
      }
      
      public function get § &H§() : Number
      {
         return this.§[&<§;
      }
      
      public function §&#t§(param1:*, param2:uint) : void
      {
         this.§0!>§[param1] = param2;
         switch(param2)
         {
            case §4&;§:
               this.§'$;§(param1);
               break;
            case §5%_§:
               this.§+&2§(param1);
               break;
            case §%j§:
               this.§[n§(param1);
               break;
            case §;%;§:
               this.§>"`§(param1);
               break;
            case §<#Z§:
               this.§&!]§(param1);
               break;
            case §[&I§:
               this.§'"@§(param1);
               break;
            case §`"V§:
               this.§<!]§(param1);
               break;
            default:
               this.§'$;§(param1);
               throw new Error("Invalid align type!");
         }
      }
      
      public function §`$y§(param1:*) : void
      {
         var _loc2_:uint = uint(this.§0!>§[param1]);
         if(_loc2_)
         {
            this.§2$I§(param1);
            this.§&#t§(param1,_loc2_);
         }
      }
      
      public function §2$I§(param1:*) : void
      {
         delete this.§5!K§[param1];
         delete this.§0!>§[param1];
      }
      
      public function align() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:uint = 0;
         for(_loc1_ in this.§5!K§)
         {
            if(!_loc1_)
            {
               continue;
            }
            _loc2_ = uint(this.§0!>§[_loc1_]);
            switch(_loc2_)
            {
               case §4&;§:
                  this.§5$C§(_loc1_,this.§[&<§,this.§-"2§);
                  break;
               case §%j§:
                  this.§7%`§(_loc1_,this.§[&<§,this.§-"2§);
                  break;
               case §;%;§:
                  this.§[[§(_loc1_,this.§[&<§,this.§-"2§);
                  break;
               case §5%_§:
                  this.§0#P§(_loc1_,this.§[&<§,this.§-"2§);
                  break;
               case §<#Z§:
                  this.§%"s§(_loc1_,this.§[&<§,this.§-"2§);
                  break;
               case §[&I§:
                  this.§"##§(_loc1_,this.§[&<§,this.§-"2§);
                  break;
               case §`"V§:
                  this.§6#E§(_loc1_,this.§[&<§,this.§-"2§);
                  break;
               default:
                  this.§+#&§(_loc1_,this.§[&<§,this.§-"2§);
            }
         }
      }
      
      public function §@!b§(param1:DisplayObject) : void
      {
         var _loc2_:§&%5§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§%!x§ = null;
         if(param1.scaleX != 1)
         {
            this.§1"V§(param1);
         }
         if(§8"%§.§^%W§.§?&8§())
         {
            _loc2_ = §8"%§.§^%W§.getCorrectResolution2();
            _loc3_ = _loc2_.§'$#§() / §`%O§ * §8&@§;
            _loc4_ = (param1.height - §`%O§) * (Application.instance.stage.stageHeight / §`%O§);
            _loc5_ = (_loc2_.§'$#§() + _loc4_) / param1.height;
            _loc6_ = new §%!x§(_loc5_);
            this.§7%O§[param1] = _loc6_;
            §[$4§(param1,_loc6_);
            this.§>!W§ = _loc2_.§@%<§() / 2 - _loc3_ / 2;
            this.§[&<§ = this.§>!W§ < 0 ? 0 : this.§>!W§;
            this.§-"2§ = (this.§-"2§ = this.§[&<§ + _loc3_) > _loc2_.§@%<§() ? _loc2_.§@%<§() : this.§-"2§;
            if(§7"X§(param1))
            {
               param1.x = this.§>!W§;
               this.§^!<§(param1);
            }
            this.align();
         }
      }
      
      private function §1"V§(param1:*) : void
      {
         var _loc2_:§%!x§ = this.§7%O§[param1];
         var _loc3_:§%!x§ = new §%!x§();
         delete this.§7%O§[param1];
         _loc3_.scale = 1;
         _loc3_.offsetX = -_loc2_.offsetX;
         _loc3_.offsetY = -_loc2_.offsetY;
         §[$4§(param1,_loc3_);
         if(§7"X§(param1))
         {
            this.§7%k§();
         }
         this.align();
      }
      
      public function §^!<§(param1:DisplayObject) : void
      {
         this.§7%k§();
         var _loc2_:§%!x§ = this.§7%O§[param1];
         Application.§5!>§.§[!B§.addChild(this.§%%§);
         Application.§5!>§.§[!B§.addChild(this.§?r§);
         this.§%%§.scaleX = this.§%%§.scaleY = _loc2_.scale;
         this.§?r§.scaleX = this.§?r§.scaleY = _loc2_.scale;
         this.§%%§.x = this.§[&<§;
         this.§?r§.x = this.§-"2§;
      }
      
      public function §7%k§() : void
      {
         if(this.§%%§.parent == Application.§5!>§.§[!B§)
         {
            Application.§5!>§.§[!B§.removeChild(this.§%%§);
            Application.§5!>§.§[!B§.removeChild(this.§?r§);
         }
      }
      
      public function clear() : void
      {
         this.§0!>§ = new Dictionary();
         this.§5!K§ = new Dictionary();
      }
      
      private function §7%`§(param1:*, param2:Number, param3:Number) : void
      {
         param1.x = param2 + this.§5!K§[param1].x;
      }
      
      private function §[[§(param1:*, param2:Number, param3:Number) : void
      {
         param1.x = param3 + this.§5!K§[param1].x;
      }
      
      private function §0#P§(param1:*, param2:Number, param3:Number) : void
      {
         param1.x = §8"%§.§^%W§.getCorrectResolution2().§@%<§() / 2 + this.§5!K§[param1].x;
      }
      
      private function §%"s§(param1:*, param2:Number, param3:Number) : void
      {
         param1.x = §8"%§.§^%W§.getCorrectResolution2().§@%<§() / 2 + this.§5!K§[param1].x;
         param1.y = §8"%§.§^%W§.getCorrectResolution2().§'$#§() + this.§5!K§[param1].y;
      }
      
      private function §"##§(param1:*, param2:Number, param3:Number) : void
      {
         param1.x = param2 + this.§5!K§[param1].x;
         param1.y = §8"%§.§^%W§.getCorrectResolution2().§'$#§() + this.§5!K§[param1].y;
      }
      
      private function §6#E§(param1:*, param2:Number, param3:Number) : void
      {
         param1.x = param3 + this.§5!K§[param1].x;
         param1.y = §8"%§.§^%W§.getCorrectResolution2().§'$#§() + this.§5!K§[param1].y;
      }
      
      private function §+#&§(param1:*, param2:Number, param3:Number) : void
      {
         param1.x = this.§5!K§[param1].x;
         param1.y = this.§5!K§[param1].y;
      }
      
      private function §5$C§(param1:*, param2:Number, param3:Number) : void
      {
         param1.x = this.§>!W§;
      }
      
      private function §[n§(param1:*) : void
      {
         this.§5!K§[param1] = new Point(param1.x,param1.y);
      }
      
      private function §>"`§(param1:*) : void
      {
         this.§5!K§[param1] = new Point(param1.x - §8"%§.§^%W§.getCorrectResolution2().§@%<§(),param1.y - §8"%§.§^%W§.getCorrectResolution2().§'$#§());
      }
      
      private function §+&2§(param1:*) : void
      {
         this.§5!K§[param1] = new Point(param1.x - §8"%§.§^%W§.getCorrectResolution2().§@%<§() / 2,param1.y);
      }
      
      private function §&!]§(param1:*) : void
      {
         this.§5!K§[param1] = new Point(param1.x - §8"%§.§^%W§.getCorrectResolution2().§@%<§() / 2,param1.y - §8"%§.§^%W§.getCorrectResolution2().§'$#§());
      }
      
      private function §'"@§(param1:*) : void
      {
         this.§5!K§[param1] = new Point(param1.x,param1.y - §8"%§.§^%W§.getCorrectResolution2().§'$#§());
      }
      
      private function §<!]§(param1:*) : void
      {
         this.§5!K§[param1] = new Point(param1.x - §8"%§.§^%W§.getCorrectResolution2().§@%<§(),param1.y - §8"%§.§^%W§.getCorrectResolution2().§'$#§());
      }
      
      private function §'$;§(param1:*) : void
      {
         this.§5!K§[param1] = new Point(param1.x,param1.y);
      }
   }
}

