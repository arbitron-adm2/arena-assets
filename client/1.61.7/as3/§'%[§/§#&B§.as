package §'%[§
{
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §#"V§.§8"@§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+%S§.§?3§;
   import §,#c§.ArenaMenu;
   import §1#p§.*;
   import §2#x§.*;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §@!N§.§4"0§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.adobe.serialization.json.JSONEncoder;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §#&B§ extends §="e§
   {
      
      private var uid:String;
      
      private var message:String;
      
      public function §#&B§(param1:§]s§)
      {
         super(param1);
      }
      
      public function saveWallPhoto(param1:String, param2:String, param3:BitmapData, param4:Function = null) : void
      {
         this.uid = param1;
         this.message = param2;
         super.savePhoto(param3,param4);
      }
      
      override protected function getUploadServer() : void
      {
         §?$6§.§1%&§(this + ".getUploadServer... ");
         §[f§.getWallUploadServer(§4!P§);
      }
      
      override protected function uploadPhoto() : void
      {
         §?$6§.§1%&§(this + ".uploadPhoto: " + this.uid + " " + this.message);
         §[f§.§?!<§(this.uid,photo,this.message,uploadServer,§9"R§);
      }
   }
}

