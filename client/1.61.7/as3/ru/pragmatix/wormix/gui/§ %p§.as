package ru.pragmatix.wormix.gui
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#k§.§9$v§;
   import §%"Z§.§2"B§;
   import §&$Y§.§6[§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §1!#§.§`!@§;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §2o§.§]#@§;
   import §7$t§.§=?§;
   import §;$8§.§6"E§;
   import §="z§.*;
   import §?#g§.§&"P§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §^§.*;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   use namespace gestouch_internal;
   
   public class § %p§ extends §`&-§
   {
      
      public function § %p§()
      {
         super(§6#A§.§!&6§(§0#2§.§0%Y§() ? §+"'§.§8&F§ : §+"'§.§>%p§));
         var _loc1_:TextField = MovieClip(§#!`§().getChildAt(0)).getChildByName("text") as TextField;
         §7&5§.§>&<§(_loc1_,§0$N§.DAILY_BONUS_BALLOON);
         setQtip(§0$N§.REFER_BONUS_AVAILABLE,§;#^§.§[!K§,§+"'§.§3%y§);
      }
      
      public function update() : void
      {
         setVisible(§8"%§.§1#e§.§8&B§);
         if(isVisible())
         {
            MovieClip(getContainer()).play();
         }
         else
         {
            MovieClip(getContainer()).stop();
         }
      }
   }
}

