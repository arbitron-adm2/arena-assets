package ru.pragmatix.wormix.messages.client
{
   import § m§.§9!^§;
   import §!!i§.§@&&§;
   import §!$d§.*;
   import §!L§.§7%0§;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&&6§.*;
   import §+#P§.§]!E§;
   import §,"v§.§@#&§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%z§.*;
   import §1#o§.§-#d§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4#`§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§[!X§;
   import §8#<§.§!#^§;
   import §9"-§.§?!s§;
   import §>1§.§^"&§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.server.EnterAccount;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class NeedMoney
   {
      
      public var value:int;
      
      public var moneyType:int;
      
      public function NeedMoney(param1:int = 0)
      {
         super();
         this.value = param1;
      }
      
      public function setMoneyType(param1:§+$A§) : void
      {
         this.moneyType = param1.value;
      }
      
      public function toString() : String
      {
         return "NeedMoney{value=" + String(this.value) + ", type=" + String(this.moneyType) + "}";
      }
   }
}

