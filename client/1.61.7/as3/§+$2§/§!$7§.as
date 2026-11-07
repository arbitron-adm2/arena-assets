package §+$2§
{
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§]%s§;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4'§.§#"l§;
   import §7!B§.§&"T§;
   import §7$t§.§2"y§;
   import §7$t§.§^$E§;
   import §9%W§.§`"y§;
   import §<%k§.§`!v§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §!$7§ extends §,#W§
   {
      
      public function §!$7§()
      {
         var _loc2_:TextField = null;
         var _loc1_:String = §2"e§.§;"e§(§0$N§.DAILY_TASKS_INFO,"{br}","\n\n");
         super(§0$N§.DAILY_TASKS,_loc1_,§,#W§.§6!m§);
         _loc2_ = §'%s§("msg");
         var _loc3_:TextField = §'%s§("title");
         var _loc4_:Number = _loc2_.width;
         var _loc5_:Number = panel.width;
         panel.width = 540;
         _loc2_.width = panel.width - (_loc5_ - _loc4_);
         §`o§.§%&%§(_loc2_);
         §`o§.§%&%§(_loc3_);
         §`o§.§%&%§(§>!-§.getContainer().parent);
         height = _loc2_.height + 175;
         §>!-§.getContainer().parent.y = height - 80;
      }
   }
}

