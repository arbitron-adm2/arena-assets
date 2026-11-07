package §!!i§
{
   import § "d§.§,!c§;
   import § &5§.§@N§;
   import §!$d§.§<$c§;
   import §#"V§.§<"4§;
   import §#"V§.§?%>§;
   import §&&6§.*;
   import §'$j§.§'-§;
   import §+#P§.§]!E§;
   import §+$2§.§[§;
   import §+$=§.*;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§1%"§;
   import §0%[§.§]%s§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§<#_§;
   import §4$"§.WatermelonPiece;
   import §4'§.§^"p§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §?#g§.Race;
   import §@!i§.§8%6§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §]$v§.§+%n§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.system.ApplicationDomain;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §+"+§ extends §<"4§
   {
      
      private var bar:MovieClip;
      
      public function §+"+§(param1:MovieClip)
      {
         super(param1);
         this.bar = getChildByName("bar") as MovieClip;
      }
      
      public function §4$r§(param1:Function) : void
      {
         if(param1 != null)
         {
            §]%s§.onComplete(this.bar,param1);
         }
         this.bar.play();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         this.bar.gotoAndStop(0);
         super.onAddedToStage(param1);
      }
   }
}

