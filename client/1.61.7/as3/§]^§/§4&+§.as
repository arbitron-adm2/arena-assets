package §]^§
{
   import § !P§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&&6§.§7$§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7"Q§.*;
   import §8#<§.§!#^§;
   import §9%W§.§!7§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §?#g§.Race;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^!"§.§^$F§;
   import §^"y§.§!n§;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import §`%&§.§8U§;
   import §`%&§.§`§;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §4&+§ implements §!n§
   {
      
      private var id:int;
      
      private var hatId:int;
      
      private var artifactId:int;
      
      private var minUserLevel:int;
      
      private var maxUserLevel:int;
      
      private var baseArsenal:Vector.<§>%Q§>;
      
      private var pricePoints:uint;
      
      private var typeParams:Vector.<§^$F§>;
      
      private var races:Vector.<Race>;
      
      public function §4&+§()
      {
         super();
      }
      
      public function initFromConfig(param1:Object) : void
      {
         this.id = param1.hatId;
         this.hatId = param1.hatId;
         this.artifactId = param1.artifactId;
         this.minUserLevel = param1.minUserLevel ? int(param1.minUserLevel) : 1;
         this.maxUserLevel = param1.maxUserLevel ? int(param1.maxUserLevel) : 30;
         this.pricePoints = param1.pricePoints;
         if(param1.typeParams)
         {
            this.typeParams = param1.typeParams;
         }
         else
         {
            this.typeParams = new <§^$F§>[§^$F§.§'$1§,§^$F§.§`"G§,§^$F§.BALANCE,§^$F§.§6! §];
         }
         if(param1.races)
         {
            this.races = param1.races;
         }
         else
         {
            this.races = Race.§;$F§();
         }
         if(param1.baseArsenal)
         {
            this.baseArsenal = param1.baseArsenal;
         }
         else
         {
            this.baseArsenal = new Vector.<§>%Q§>();
         }
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function §"!?§() : int
      {
         return this.hatId;
      }
      
      public function §8!u§() : int
      {
         return this.artifactId;
      }
      
      public function §?#J§() : uint
      {
         return this.pricePoints;
      }
      
      public function §3%j§() : Vector.<§>%Q§>
      {
         return this.baseArsenal;
      }
      
      public function §8$u§() : Vector.<§^$F§>
      {
         return this.typeParams;
      }
      
      public function §;$F§() : Vector.<Race>
      {
         return this.races;
      }
      
      public function §-!T§(param1:uint, param2:uint) : Boolean
      {
         return this.pricePoints <= param2 && param1 >= this.minUserLevel && param1 <= this.maxUserLevel;
      }
   }
}

