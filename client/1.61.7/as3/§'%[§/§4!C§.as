package §'%[§
{
   import § %f§.Parasite;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%j§.§0$+§;
   import §7$t§.§^$E§;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §@!i§.§!m§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §4!C§ implements §]$5§
   {
      
      private var §[f§:§0$+§;
      
      private var album:§8#x§;
      
      private var photo:BitmapData;
      
      private var photoDescription:String;
      
      private var callback:Function;
      
      public function §4!C§(param1:String, param2:String, param3:§0$+§)
      {
         super();
         this.§[f§ = param3;
         this.album = new §8#x§();
         this.album.§#7§(param1);
         this.album.§&!U§(param2);
      }
      
      public function savePhoto(param1:BitmapData, param2:String, param3:Function) : void
      {
         this.photoDescription = param2;
         this.callback = param3;
         this.photo = param1;
         this.§[f§.getAlbums(this.§,$m§);
      }
      
      private function §,$m§(param1:§=$u§) : void
      {
         var _loc2_:§8#x§ = null;
         for each(_loc2_ in param1.getAlbums())
         {
            if(_loc2_.§@$+§() == this.album.§@$+§())
            {
               this.§[f§.savePhoto(this.photo,_loc2_.§'$U§(),this.photoDescription,this.§'#J§);
               return;
            }
         }
         this.§[f§.createAlbum(this.album.§@$+§(),this.album.§]G§(),this.§?$m§);
      }
      
      private function §'#J§(param1:§,$2§) : void
      {
         this.callback.apply(this,[param1]);
      }
      
      private function §?$m§(param1:§6$=§) : void
      {
         if(param1.success)
         {
            this.§[f§.savePhoto(this.photo,param1.album.§'$U§(),this.photoDescription,this.§'#J§);
         }
         else
         {
            this.callback.apply(this,[param1]);
         }
      }
   }
}

