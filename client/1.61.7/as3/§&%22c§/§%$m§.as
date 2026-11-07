package §&"c§
{
   import §!!i§.§@&&§;
   import §%"1§.§@%;§;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §4'§.§^"p§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §=!p§.§!"9§;
   import §=&!§.§<$Z§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class §%$m§
   {
      
      public var §=!P§:int = 0;
      
      public var §&6§:int = 0;
      
      public var §&#H§:int = 0;
      
      public var §-#E§:int = 0;
      
      public var power:int = 0;
      
      public var §3"]§:int = 0;
      
      public var angle:Number = 0;
      
      public var §<"r§:Number = 0;
      
      public var useGravity:Boolean = true;
      
      public var §`#M§:Boolean = false;
      
      public var §%#0§:Boolean = false;
      
      public function §%$m§(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.§=!P§ = param1;
         this.§&6§ = param2;
         this.§&#H§ = param3;
         this.§-#E§ = param4;
      }
      
      public function clone() : §%$m§
      {
         var _loc1_:§%$m§ = new §%$m§();
         _loc1_.§=!P§ = this.§=!P§;
         _loc1_.§&6§ = this.§&6§;
         _loc1_.§&#H§ = this.§&#H§;
         _loc1_.§-#E§ = this.§-#E§;
         _loc1_.power = this.power;
         _loc1_.§3"]§ = this.§3"]§;
         _loc1_.angle = this.angle;
         _loc1_.§<"r§ = this.§<"r§;
         _loc1_.useGravity = this.useGravity;
         _loc1_.§`#M§ = this.§`#M§;
         _loc1_.§%#0§ = this.§%#0§;
         return _loc1_;
      }
   }
}

