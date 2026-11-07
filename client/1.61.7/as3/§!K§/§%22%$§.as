package §!K§
{
   import §"#x§.§'"$§;
   import §#"V§.§8"@§;
   import §#5§.*;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §'!Z§.§2!H§;
   import §2!-§.DamageEvent;
   import §5"J§.*;
   import §6"'§.§&"3§;
   import §8#o§.§1@§;
   import §9%W§.§&!P§;
   import §;$%§.§'%W§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.GetMercenariesState;
   
   public class §"%$§ extends Event
   {
      
      public static const NAME:String = "BAG_MENU_TOGGLE";
      
      public var §?%H§:Boolean;
      
      public var §'%D§:Boolean;
      
      public var §`$5§:uint;
      
      public function §"%$§(param1:Boolean, param2:uint = 0, param3:Boolean = false, param4:String = "BAG_MENU_TOGGLE", param5:Boolean = false, param6:Boolean = true)
      {
         super(param4,param5,param6);
         this.§?%H§ = param1;
         this.§'%D§ = param3;
         this.§`$5§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §"%$§(this.§?%H§,this.§`$5§,this.§'%D§,type,bubbles,cancelable);
      }
   }
}

