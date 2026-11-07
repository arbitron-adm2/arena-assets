package §1!#§
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%j§.*;
   import §0%z§.*;
   import §2#i§.§+%z§;
   import §2#s§.BankMenu;
   import §5"J§.*;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §8$Z§.§9!&§;
   import §9%W§.§!"G§;
   import §<!W§.§=!6§;
   import §<%E§.§0#G§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=&6§.§&"K§;
   import §>%S§.§^!V§;
   import §?$7§.§6%k§;
   import §@!i§.§"-§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetColiseumReward;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §-e§ extends BankMenu
   {
      
      private var § #q§:MovieClip;
      
      public function §-e§(param1:Array, param2:Array, param3:String)
      {
         super(param1,param2,param3);
      }
      
      override protected function init(param1:String, param2:Array, param3:Array) : void
      {
         super.init(param1,param2,param3);
         this.§#!V§();
      }
      
      private function §#!V§() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(§&"K§.§-!T§())
         {
            this.§ #q§ = §6#A§.§!&6§(§+"'§.§#%@§);
            §?!C§(this.§ #q§);
            this.§ #q§.y = -5;
            _loc1_ = this.§ #q§.getChildByName("text") as TextField;
            _loc2_ = §&"K§.BONUS.toString();
            _loc3_ = §0$N§.§%! §("ACTION_BONUS_LABEL").replace("{bonus}",_loc2_);
            §7&5§.§>&<§(_loc1_,_loc3_);
         }
      }
      
      override public function §4$?§(param1:int, param2:Boolean = false) : void
      {
         super.§4$?§(param1,param2);
         if(this.§ #q§)
         {
            this.§ #q§.visible = param1 == -1 || param1 > 1;
         }
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(this.§ #q§)
         {
            this.§ #q§.visible = §3%D§ == -1 || §3%D§ > 1;
         }
      }
   }
}

