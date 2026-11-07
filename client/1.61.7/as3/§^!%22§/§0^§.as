package §^!"§
{
   import § #m§.§2#P§;
   import § $q§.§-%f§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"%H§.§6$3§;
   import §##y§.§9§;
   import §#%!§.§[N§;
   import §#5§.§!&"§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §+$=§.*;
   import §+%Q§.§#%9§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §+%S§.§@x§;
   import §+%S§.§[0§;
   import §,#_§.FrameTimer;
   import §0!§.§9"u§;
   import §0!Y§.§#!Z§;
   import §0%[§.§%"'§;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0%j§.§0$+§;
   import §0%z§.*;
   import §0&F§.FrameTimerEvent;
   import §3#T§.*;
   import §4!!§.*;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §8#`§.§#%r§;
   import §9%W§.§!7§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[$<§.§>"9§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import §`%&§.§`§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§<"e§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §0^§
   {
      
      public static var §?#u§:Vector.<§0^§> = new Vector.<§0^§>();
      
      public static const EASY:§0^§ = new §0^§(0,80,1,-1,0.85,{
         1:new <uint>[1,1],
         5:new <uint>[1,1],
         9:new <uint>[1,1],
         13:new <uint>[1,2],
         17:new <uint>[1,2],
         21:new <uint>[1,2],
         24:new <uint>[1,2],
         27:new <uint>[1,2]
      });
      
      public static const §4%]§:§0^§ = new §0^§(1,80,0.9,-1,0.9,{
         1:new <uint>[1,1],
         5:new <uint>[1,1],
         9:new <uint>[1,1],
         13:new <uint>[1,2],
         17:new <uint>[1,2],
         21:new <uint>[1,2],
         24:new <uint>[1,2],
         27:new <uint>[2,2]
      });
      
      §§push(§§findproperty(MEDIUM));
      §§push(§0^§);
      §§push(2);
      §§push(105);
      §§push(0.6);
      §§push(0);
      §§push(0.95);
      §§push(String(1));
      §§push(new <uint>[1,1]);
      §§push(String(5));
      §§push(new <uint>[1,1]);
      §§push(String(9));
      §§push(new <uint>[1,2]);
      §§push(String(13));
      §§push(new <uint>[1,2]);
      §§push(String(17));
      §§push(new <uint>[2,2]);
      §§push(String(21));
      §§push(new <uint>[2,2]);
      §§push(String(24));
      §§push(new <uint>[2,3]);
      §§push(String(27));
      var _temp_47:* = new <uint>[2,4];
      
      public static const MEDIUM:§0^§ = new §§pop()(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null);
      
      public static const §'&7§:§0^§ = new §0^§(3,110,0.7,0,1,{
         1:new <uint>[1,1],
         5:new <uint>[1,1],
         9:new <uint>[1,2],
         13:new <uint>[2,2],
         17:new <uint>[2,3],
         21:new <uint>[2,3],
         24:new <uint>[2,3],
         27:new <uint>[3,4]
      });
      
      public static const HARD:§0^§ = new §0^§(4,120,0.2,1,1.1,{
         1:new <uint>[1,1],
         5:new <uint>[1,2],
         9:new <uint>[2,2],
         13:new <uint>[2,3],
         17:new <uint>[3,3],
         21:new <uint>[3,4],
         24:new <uint>[3,4],
         27:new <uint>[3,4]
      });
      
      §§push(§§findproperty(§#%Q§));
      §§push(§0^§);
      §§push(5);
      §§push(130);
      §§push(0.15);
      §§push(1);
      §§push(1.15);
      §§push(String(1));
      §§push(new <uint>[1,1]);
      §§push(String(5));
      §§push(new <uint>[1,2]);
      §§push(String(9));
      §§push(new <uint>[2,2]);
      §§push(String(13));
      §§push(new <uint>[2,3]);
      §§push(String(17));
      §§push(new <uint>[3,3]);
      §§push(String(21));
      §§push(new <uint>[3,4]);
      §§push(String(24));
      
      public static const §#%Q§:§0^§ = new §§pop()(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null);
      
      private var power:uint;
      
      private var §#8§:uint;
      
      private var §^">§:Number;
      
      private var §@%T§:int;
      
      private var §4%2§:Number;
      
      private var map:Object;
      
      public function §0^§(param1:uint, param2:uint, param3:Number, param4:int, param5:Number, param6:Object)
      {
         super();
         this.power = param1;
         this.§#8§ = param2;
         this.§^">§ = param3;
         this.§@%T§ = param4;
         this.§4%2§ = param5;
         this.map = param6;
         §?#u§[§?#u§.length] = this;
      }
      
      public function §]%U§() : uint
      {
         return this.power;
      }
      
      public function §>"s§() : uint
      {
         return this.§#8§;
      }
      
      public function §;!@§() : Number
      {
         return this.§^">§;
      }
      
      public function §9%'§() : int
      {
         return this.§@%T§;
      }
      
      public function §63§() : Number
      {
         return this.§4%2§;
      }
      
      public function §3$X§(param1:uint) : Vector.<uint>
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:uint = uint.MIN_VALUE;
         for(_loc3_ in this.map)
         {
            _loc4_ = int(uint(_loc3_));
            if(param1 >= _loc4_ && param1 - _loc4_ <= param1 - _loc2_)
            {
               _loc2_ = uint(_loc4_);
            }
         }
         return this.map[_loc2_];
      }
      
      public function §!&=§(param1:uint) : uint
      {
         var _loc2_:Vector.<uint> = this.§3$X§(param1);
         return _loc2_[§-q§.random(0,_loc2_.length - 1)];
      }
   }
}

