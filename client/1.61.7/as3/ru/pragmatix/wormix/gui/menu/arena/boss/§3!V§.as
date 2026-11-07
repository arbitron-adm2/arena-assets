package ru.pragmatix.wormix.gui.menu.arena.boss
{
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%$!§.§9$p§;
   import §%L§.§%%w§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §1#p§.§2=§;
   import §2B§.§8"n§;
   import §5!,§.§9$h§;
   import §9%W§.§8#p§;
   import §9%k§.*;
   import §?>§.§0!7§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§@&,§;
   import config.achievements.§!$L§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.§%%a§;
   
   public class §3!V§ extends §1#g§ implements §^c§
   {
      
      private var §<U§:§3y§;
      
      public function §3!V§(param1:String)
      {
         super();
         this.id = param1;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§<U§ = new §3y§(getChildByName("content") as MovieClip);
      }
      
      override public function activate() : void
      {
         super.activate();
         dispatchEvent(new §8"n§(§8"n§.§";§));
         §&#F§(false);
         this.§<U§.setVisible(true);
         this.§<U§.§6"q§(§8"%§.§%w§.§["x§);
      }
      
      public function §@#H§() : §3y§
      {
         return this.§<U§;
      }
      
      public function playAnimations() : void
      {
      }
      
      public function stopAnimations() : void
      {
      }
   }
}

