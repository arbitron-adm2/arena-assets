package config
{
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§-$s§;
   import §+%S§.§2$#§;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §3"_§.*;
   import §3#T§.§5!M§;
   import §4#2§.*;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §28§
   {
      
      public static const §#%5§:Object = {
         "staticClip":"Static",
         "stayClip":"Stay",
         "goClip":"Go",
         "prepareToJumpClip":"PrepareToJump",
         "endJumpClip":"EndJump",
         "jumpClip":"Jump",
         "jumpBackClip":"JumpBack",
         "jetpack":"Jetpack",
         "jetpackStay":"JetpackStay",
         "breathClip":"Breath",
         "clapClip":"Clap",
         "sadClip":"Sad",
         "damaged":"Boom",
         "roar":"Boom",
         "happy":"Happy",
         "pieceClip":"Piece",
         "hammer":"HammerHit",
         "bat":"Bat",
         "rope":"Rope",
         "stateActions":["Wink","Wave","Happy","ThinkDeath","ThinkPizza","ThinkGrenade","ThinkCoffee"],
         "stateActionsInHat":["Wink","Wave","ThinkDeath","ThinkPizza","ThinkGrenade","ThinkCoffee"],
         "hatClip":"hat",
         "eyesClip":"eyes",
         "leftHand":"leftHand",
         "rightHand":"rightHand",
         "shocker":"ShockerUnit",
         "defrost":"HotShield",
         "antifrost":"AntiFrostShield",
         "defrostAttack":"AttackShield",
         "defrostArmory":"ArmoryShield",
         "bannerAura":"FlagAura",
         "darkAura":"DarkAura"
      };
      
      private static const §#"-§:Array = [{
         "raceId":2,
         "configName":"boxer",
         "racePrefix":"Boxer",
         "name":"RACE_BOXER_NAME",
         "modify":[{
            "id":§5%T§.§`%o§,
            "name":"SKIN_BOXER_STEEL",
            "prefix":"Steel",
            "realprice":50
         },{
            "id":§5%T§.§["§,
            "name":"SKIN_BOXER_BERSERK",
            "prefix":"Berserk",
            "realprice":50
         },{
            "id":§5%T§.§'%j§,
            "name":"SKIN_BOXER_DETECTIVE",
            "prefix":"Detective",
            "realprice":50
         }]
      },{
         "raceId":5,
         "configName":"zombie",
         "racePrefix":"Zombie",
         "name":"RACE_ZOMBIE_NAME",
         "featureClips":["ears"],
         "modify":[{
            "id":§5%T§.§`$K§,
            "name":"SKIN_ZOMBIE_ROT",
            "prefix":"Rot",
            "realprice":50
         },{
            "id":§5%T§.§3#Y§,
            "name":"SKIN_ZOMBIE_ASH",
            "prefix":"Ash",
            "realprice":50
         },{
            "id":§5%T§.§8%y§,
            "name":"SKIN_ZOMBIE_TALKATIVE",
            "prefix":"Talkative",
            "realprice":50
         }]
      },{
         "raceId":4,
         "configName":"rabbit",
         "racePrefix":"Rabbit",
         "name":"RACE_RABBIT_NAME",
         "featureClips":["ears"],
         "modify":[{
            "id":§5%T§.§>%D§,
            "name":"SKIN_RABBIT_WILD",
            "prefix":"Wild",
            "realprice":50
         },{
            "id":§5%T§.§1#$§,
            "name":"SKIN_RABBIT_MURK",
            "prefix":"Murk",
            "realprice":50
         },{
            "id":§5%T§.§?"Y§,
            "name":"SKIN_RABBIT_SINGER",
            "prefix":"Singer",
            "realprice":50
         }]
      },{
         "raceId":3,
         "configName":"demon",
         "racePrefix":"Demon",
         "name":"RACE_DEMON_NAME",
         "featureClips":["ears"],
         "modify":[{
            "id":§5%T§.§=#b§,
            "name":"SKIN_DEMON_HIDER",
            "prefix":"Hider",
            "realprice":50
         },{
            "id":§5%T§.§4#=§,
            "name":"SKIN_DEMON_WILLIE",
            "prefix":"Willie",
            "realprice":50
         },{
            "id":§5%T§.§?%@§,
            "name":"SKIN_DEMON_BOILED",
            "prefix":"Boiled",
            "realprice":50
         }]
      },{
         "raceId":6,
         "configName":"cat",
         "racePrefix":"Cat",
         "name":"RACE_CAT_NAME",
         "featureClips":["ears"],
         "modify":[{
            "id":§5%T§.§<"0§,
            "name":"SKIN_CAT_ICE",
            "prefix":"Ice",
            "realprice":50
         },{
            "id":§5%T§.§5&&§,
            "name":"SKIN_CAT_WEREWOLF",
            "prefix":"Were",
            "realprice":50
         },{
            "id":§5%T§.§?$P§,
            "name":"SKIN_CAT_FUZZY",
            "prefix":"Fuzzy",
            "realprice":50
         }]
      },{
         "raceId":7,
         "configName":"dragon",
         "name":"RACE_DRAGON_NAME",
         "racePrefix":"Dragon",
         "modify":[{
            "id":§5%T§.§6!$§,
            "name":"SKIN_DRAGON_NIGHT",
            "prefix":"Night",
            "realprice":50
         },{
            "id":§5%T§.§!$H§,
            "name":"SKIN_DRAGON_FIERY",
            "prefix":"Fiery",
            "realprice":50
         },{
            "id":§5%T§.§6I§,
            "name":"SKIN_DRAGON_BANKER",
            "prefix":"Banker",
            "realprice":50
         }]
      },{
         "raceId":8,
         "configName":"robot",
         "racePrefix":"Bot",
         "name":"RACE_ROBOT_NAME",
         "modify":[{
            "id":§5%T§.§-%Z§,
            "name":"SKIN_ROBOT_CUTTER",
            "prefix":"Cutter",
            "realprice":50
         },{
            "id":§5%T§.§?"E§,
            "name":"SKIN_ROBOT_DOZER",
            "prefix":"Dozer",
            "realprice":50
         },{
            "id":§5%T§.§>"m§,
            "name":"SKIN_ROBOT_COP",
            "prefix":"Cop",
            "realprice":50
         }]
      },{
         "raceId":9,
         "configName":"rhino",
         "racePrefix":"Rhino",
         "name":"RACE_RHINO_NAME",
         "featureClips":["horn"],
         "modify":[{
            "id":§5%T§.§,!6§,
            "name":"SKIN_RHINO_GOON",
            "prefix":"Goon",
            "realprice":50
         },{
            "id":§5%T§.§2#l§,
            "name":"SKIN_RHINO_BLADE",
            "prefix":"Blade",
            "realprice":50
         },{
            "id":§5%T§.§!$ §,
            "name":"SKIN_RHINO_FUGITIVE",
            "prefix":"Fugitive",
            "realprice":50
         }]
      },{
         "raceId":0,
         "configName":"boar",
         "racePrefix":"Boar",
         "name":"RACE_BOAR_NAME",
         "modify":[{
            "id":§5%T§.§]"?§,
            "name":"SKIN_BOAR_HULK",
            "prefix":"Hulk",
            "realprice":50
         },{
            "id":§5%T§.§<%M§,
            "name":"SKIN_BOAR_HELL",
            "prefix":"Hell",
            "realprice":50
         },{
            "id":§5%T§.§"!x§,
            "name":"SKIN_BOAR_BURGLAR",
            "prefix":"Burglar",
            "realprice":50
         }]
      },{
         "raceId":10,
         "configName":"alien",
         "racePrefix":"Alien",
         "name":"RACE_ALIEN_NAME",
         "featureClips":["ears","topHorn"],
         "rewriteCommonClips":{
            "stateActions":["Giggle","Treat","Handtrick","ZombieParody"],
            "stateActionsInHat":["Giggle","Treat","Handtrick","ZombieParody"]
         },
         "modify":[{
            "id":§5%T§.§##Y§,
            "name":"SKIN_ALIEN_TOAD",
            "prefix":"Toad",
            "realprice":50
         },{
            "id":§5%T§.§]"2§,
            "name":"SKIN_ALIEN_FORGED",
            "prefix":"Forged",
            "realprice":50
         },{
            "id":§5%T§.§-f§,
            "name":"SKIN_ALIEN_MANIAC",
            "prefix":"Maniac",
            "realprice":50
         }]
      },{
         "raceId":11,
         "configName":"crab",
         "racePrefix":"Crab",
         "name":"RACE_CRAB_NAME"
      },{
         "raceId":12,
         "configName":"donut",
         "racePrefix":"Donut",
         "name":"RACE_DONUT_NAME"
      },{
         "raceId":13,
         "configName":"snail",
         "racePrefix":"Snail",
         "name":"RACE_SNAIL_NAME"
      }];
      
      public function §28§()
      {
         super();
      }
      
      public static function get list() : Array
      {
         return §#"-§;
      }
      
      public static function §,%9§(param1:int) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §#"-§)
         {
            if(_loc2_.modify)
            {
               for each(_loc3_ in _loc2_.modify)
               {
                  if(_loc3_.id == param1)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §[%;§(param1:int) : String
      {
         var _loc3_:Object = null;
         var _loc2_:Object = §,%9§(param1);
         if(_loc2_)
         {
            for each(_loc3_ in _loc2_.modify)
            {
               if(_loc3_.id == param1)
               {
                  return _loc3_.prefix;
               }
            }
         }
         return "";
      }
   }
}

