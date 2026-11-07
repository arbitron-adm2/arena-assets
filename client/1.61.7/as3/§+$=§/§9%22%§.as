package §+$=§
{
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%#u§.*;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §1#p§.§2=§;
   import §4f§.§-&§;
   import §7"Q§.§0$L§;
   import §7$t§.§9#x§;
   import §<"?§.§3>§;
   import §<%E§.§'$g§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §?$L§.§0"-§;
   import §`"x§.*;
   import §`#x§.§"$r§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §9"%§ extends Event
   {
      
      public static var LOAD_ERROR:String = "LOAD_ERROR";
      
      public var msg:String;
      
      public function §9"%§(param1:String = "Load Error")
      {
         super(LOAD_ERROR);
         this.msg = param1;
      }
      
      override public function clone() : Event
      {
         return new §9"%§(this.msg);
      }
   }
}

