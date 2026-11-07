package ru.pragmatix.wormix.messages.server
{
   import § m§.§9!^§;
   import §"#x§.§'"$§;
   import §"%H§.§`"w§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§!#x§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%[§.§#&B§;
   import §+%S§.§2!x§;
   import §+%S§.§2&>§;
   import §,"v§.§@#&§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#o§.§-#d§;
   import §1#p§.§"Z§;
   import §1&-§.§]%4§;
   import §2!-§.DamageEvent;
   import §2"L§.§##l§;
   import §2#i§.§+%z§;
   import §4$b§.§2m§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §8$V§.*;
   import §9"-§.§?!s§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$K§.§3#j§;
   import §?%J§.*;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.*;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class ColiseumStateResponse
   {
      
      public var num:int;
      
      public var isOpen:Boolean;
      
      public var winCount:int;
      
      public var defeatCount:int;
      
      public var drawCount:int;
      
      public var error:int;
      
      public var openFrom:int;
      
      public var openTo:int;
      
      public var regenerateCount:int;
      
      public var teamStructures:Array;
      
      public var teamCandidatesStructures:Array;
      
      public var profileId:int;
      
      public function ColiseumStateResponse()
      {
         super();
      }
      
      public function toString() : String
      {
         var _loc1_:int = int(§0#2§.§!$r§(this.openFrom));
         var _loc2_:int = §0#2§.§`"r§(this.openFrom) % 60;
         var _loc3_:int = int(§0#2§.§!$r§(this.openTo));
         var _loc4_:int = §0#2§.§`"r§(this.openTo) % 60;
         return "ColiseumStateResponse { error=" + this.error + ", num=" + this.num + ", open=" + this.isOpen + ", win=" + this.winCount + ", defeat=" + this.defeatCount + ", draw=" + this.drawCount + ", regenerateCount=" + this.regenerateCount + ", openFrom=" + this.openFrom + ", openTo=" + this.openTo + ", open=(" + _loc1_ + ":" + _loc2_ + " - " + _loc3_ + ":" + _loc4_ + ")" + ", team=" + this.teamStructures + ", teamCandidats=" + this.teamCandidatesStructures + " }";
      }
   }
}

