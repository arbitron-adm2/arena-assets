package §2#H§
{
   import § &5§.§@N§;
   import §!L§.§+"'§;
   import §#!5§.§>S§;
   import §%"1§.§@%;§;
   import §%&6§.*;
   import §%L§.§#&%§;
   import §&!&§.§&§;
   import §&!&§.§4$F§;
   import §&$Y§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §0%[§.§""n§;
   import §0%j§.§#!U§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §4!!§.§!%n§;
   import §4#2§.*;
   import §4#`§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §;$8§.§6"E§;
   import §<%E§.§,$2§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §,#V§ extends §,"R§
   {
      
      public static const NAME:String = "CASTER_SHIELD";
      
      private var §7#>§:§&$2§;
      
      private var owner:§+%]§;
      
      public function §,#V§(param1:§+%]§, param2:int)
      {
         this.owner = param1;
         param1.graphics.§&$=§(param1.record.§5"L§().getRecord().defrost);
         this.§7#>§ = new §&$2§(param2);
         §@%;§.play(§`!v§.§+Q§);
         super(null,NAME);
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:uint = Math.ceil(param1.power);
         var _loc3_:uint = _loc2_;
         if(this.§7#>§.value < _loc2_)
         {
            _loc3_ = uint(this.§7#>§.value);
         }
         this.§7#>§.value -= _loc2_;
         if(this.§7#>§.value >= 0)
         {
            param1.power = 0;
         }
         else
         {
            param1.power = this.§7#>§.value * -1;
         }
         §2!H§.§'!i§("(" + _loc3_ + ")",§2!H§.§?$!§,unit.x + unit.width * 0.5,unit.y + unit.height * 0.5,20);
         if(this.§7#>§.value <= 0)
         {
            clear();
         }
      }
      
      override protected function §0&"§() : void
      {
         this.owner.graphics.§<%C§(this.owner.record.§5"L§().getRecord().defrost);
         unit.removeEventListener(§0%v§.§&!D§,this.§?$u§);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §,#V§(this.owner,this.§7#>§.value));
      }
   }
}

