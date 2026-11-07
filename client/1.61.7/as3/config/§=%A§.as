package config
{
   import §!!i§.§'"m§;
   import §!$d§.§<$c§;
   import §"% §.LevelUpDialog;
   import §#"V§.§?%>§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §&!m§.§-$6§;
   import §+#U§.§'#w§;
   import §-@§.§8"k§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2#x§.*;
   import §4$b§.*;
   import §5$]§.§3& §;
   import §5o§.§0!$§;
   import §6"'§.§9$Z§;
   import §6"'§.§=$@§;
   import §6",§.§[%w§;
   import §7$t§.§&!e§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §9%W§.§&!P§;
   import §;&2§.§-x§;
   import §;&2§.§9r§;
   import §;&2§.§<%Y§;
   import §;&2§.§<y§;
   import §<$q§.§"%r§;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §@!N§.§3!3§;
   import §@!i§.§,! §;
   import §@!i§.§;#L§;
   import §@!i§.§<!9§;
   import §@"x§.BattleSettingsMenu;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.media.SoundTransform;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.CraftRoom;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §=%A§
   {
      
      private static var §!!P§:Object;
      
      private static var §;"f§:Array = [new §9$Z§({
         "id":1,
         "name":"libertyRewamp",
         "className":"LibertyRewampData",
         "minLevel":4,
         "maxLevel":20,
         "water":{
            "x":0,
            "y":1300,
            "height":126,
            "color":"0xE4A464",
            "secondaryColor":"0x274456"
         },
         "pvpWaterMode":§"%r§.PVP_100,
         "clouds":{
            "x":118.55,
            "y":106.55
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,4,20,1),new §=$@§(§-"P§.§"#p§,5,16,2),new §=$@§(§-"P§.§"!0§,11,18)]
      }),new §9$Z§({
         "id":2,
         "name":"creamRewampFix",
         "className":"CreamRewampFixData",
         "minLevel":1,
         "maxLevel":5,
         "water":{
            "x":0,
            "y":1302,
            "height":100,
            "color":"0xDF4A86",
            "secondaryColor":"0xF8967E"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":800,
            "y":357,
            "scale":1.6
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,5,5,1)]
      }),new §9$Z§({
         "id":3,
         "name":"sandRewampFix",
         "className":"SandRewampFixData",
         "minLevel":1,
         "maxLevel":7,
         "water":{
            "x":0,
            "y":1313,
            "height":87,
            "color":"0xC9C8A5",
            "secondaryColor":"0x6FAACE"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":190.8,
            "y":62.4
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,4,7,1),new §=$@§(§-"P§.§"#p§,5,7,2)]
      }),new §9$Z§({
         "id":4,
         "name":"signsRewamp",
         "className":"SignsRewampData",
         "minLevel":1,
         "maxLevel":7,
         "water":{
            "x":0,
            "y":1300,
            "height":100,
            "color":"0x522E6B",
            "secondaryColor":"0xCB95D9"
         },
         "pvpWaterMode":§"%r§.PVP_100,
         "clouds":{
            "x":800,
            "y":157,
            "scale":1.4
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,4,7,1),new §=$@§(§-"P§.§"#p§,5,7,2)]
      }),new §9$Z§({
         "id":5,
         "name":"bamboo",
         "className":"BambooData",
         "minLevel":8,
         "maxLevel":12,
         "water":{
            "x":0,
            "y":1278.85,
            "height":125.8,
            "color":"0x36627C",
            "secondaryColor":"0x6FAACE"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":104.2,
            "y":121.15
         },
         "indentHeight":250,
         "indentWidth":80,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,4,12,1),new §=$@§(§-"P§.§"#p§,5,10,2)]
      }),new §9$Z§({
         "id":6,
         "name":"fruits",
         "className":"FruitsData",
         "minLevel":3,
         "maxLevel":18,
         "water":{
            "x":0,
            "y":1291,
            "height":109.05,
            "color":"0x5768A8",
            "secondaryColor":"0x9EC4E9"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":73.95,
            "y":68.55
         },
         "indentHeight":250,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,4,30,1),new §=$@§(§-"P§.§"#p§,5,20,2),new §=$@§(§-"P§.§"#p§,13,16,3)]
      }),new §9$Z§({
         "id":8,
         "name":"dino",
         "className":"DinoData",
         "minLevel":6,
         "maxLevel":14,
         "water":{
            "x":0,
            "y":1300,
            "height":102,
            "color":"0xBDBB75",
            "secondaryColor":"0x6FAACE"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "clouds":{
            "x":342.9,
            "y":62.5
         },
         "indentHeight":80,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,6,14,1),new §=$@§(§-"P§.§"#p§,6,14,2)]
      }),new §9$Z§({
         "id":14,
         "name":"treesRewamp",
         "className":"TreesRewampData",
         "minLevel":10,
         "maxLevel":20,
         "water":{
            "x":0,
            "y":1350,
            "height":50,
            "color":"0x332046",
            "secondaryColor":"0x584095"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "className":"WhiteClouds",
            "x":435,
            "y":72
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,10,30,1),new §=$@§(§-"P§.§"#p§,6,18,2)]
      }),new §9$Z§({
         "id":26,
         "name":"villaRewamp",
         "className":"VillaRewampData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1350,
            "height":50
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":346,
            "y":42
         },
         "indentHeight":100,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"!0§,12,26)]
      }),new §9$Z§({
         "id":28,
         "name":"dosers",
         "className":"DosersData",
         "minLevel":8,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1327,
            "height":75
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "clouds":{
            "className":"WhiteClouds",
            "x":435,
            "y":72
         },
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":29,
         "name":"tea_party",
         "className":"TeaPartyData",
         "minLevel":8,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1327,
            "height":75,
            "color":"0x332046",
            "secondaryColor":"0x584095"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":800,
            "y":20,
            "scale":1.3
         },
         "indentHeight":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":30,
         "name":"lab_past",
         "className":"LabPastData",
         "minLevel":10,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1345,
            "height":60,
            "color":"0x47611F",
            "secondaryColor":"0xBFCD43"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "clouds":{
            "x":0,
            "y":90,
            "scale":0.7
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,10,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,11,18)]
      }),new §9$Z§({
         "id":31,
         "name":"asteroid_battle",
         "className":"AsteroidBattleData",
         "minLevel":8,
         "maxLevel":21,
         "water":{
            "x":0,
            "y":1300,
            "height":100,
            "color":"0x332046",
            "secondaryColor":"0x584095"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":500,
            "y":83,
            "scale":1.4
         },
         "indentHeight":240,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,13,30,2),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,11,18)]
      }),new §9$Z§({
         "id":32,
         "name":"pumpkins",
         "className":"PumpkinsData",
         "minLevel":8,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1300,
            "height":100
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":800,
            "y":110,
            "scale":1.4
         },
         "indentHeight":150,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,8,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,11,26)]
      }),new §9$Z§({
         "id":33,
         "name":"hell",
         "className":"HellData",
         "minLevel":13,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1345,
            "height":60,
            "color":"0xF77B00",
            "secondaryColor":"0xFF4D00"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":269,
            "y":20
         },
         "indentHeight":140,
         "indentWidth":60,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,13,30,1),new §=$@§(§-"P§.§"#p§,13,30,2),new §=$@§(§-"P§.§"#p§,13,26,3),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,13,26)]
      }),new §9$Z§({
         "id":34,
         "name":"wildwest",
         "className":"WildWestData",
         "minLevel":8,
         "maxLevel":26,
         "water":{
            "x":0,
            "y":1350,
            "height":70,
            "color":"0x1F3569",
            "secondaryColor":"0x3E4797"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":800,
            "y":300,
            "scale":1.2
         },
         "indentHeight":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,8,16,2),new §=$@§(§-"P§.§'$L§,15,18),new §=$@§(§-"P§.§"!0§,11,18)]
      }),new §9$Z§({
         "id":35,
         "name":"mysterious_island",
         "className":"MystIslandData",
         "minLevel":11,
         "maxLevel":26,
         "water":{
            "x":0,
            "y":1328,
            "height":72,
            "color":"0x7059A6",
            "secondaryColor":"0xF0A8A8"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":268,
            "y":41
         },
         "indentHeight":240,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,11,30,1),new §=$@§(§-"P§.§"#p§,11,30,2),new §=$@§(§-"P§.§"#p§,13,18,3),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,11,18)]
      }),new §9$Z§({
         "id":36,
         "name":"glade_new",
         "className":"GladeNewData",
         "minLevel":7,
         "maxLevel":18,
         "water":{
            "x":0,
            "y":1294,
            "height":125,
            "color":"0x5768A8",
            "secondaryColor":"0x5768A8"
         },
         "pvpWaterMode":§"%r§.PVP_100,
         "clouds":{
            "x":300,
            "y":90
         },
         "indentHeight":140,
         "indentWidth":60,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,7,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§"#p§,13,18,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":37,
         "name":"dino_bones",
         "className":"DinoBonesData",
         "minLevel":1,
         "maxLevel":10,
         "water":{
            "x":0,
            "y":1294,
            "height":126,
            "color":"0xBDBB75",
            "secondaryColor":"0x6FAACE"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":120.75,
            "y":227.75
         },
         "indentWidth":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,4,10,1),new §=$@§(§-"P§.§"#p§,5,7,2)]
      }),new §9$Z§({
         "id":39,
         "name":"copper_mountain",
         "className":"CopperMountainData",
         "minLevel":7,
         "maxLevel":14,
         "preview":"preview.jpg",
         "water":{
            "x":0,
            "y":1310.8,
            "height":89.2,
            "color":"0xF06B41",
            "secondaryColor":"0xECB62A"
         },
         "pvpWaterMode":§"%r§.PVP_100,
         "clouds":{
            "x":205.8,
            "y":42.8
         },
         "indentHeight":140,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,7,14,1),new §=$@§(§-"P§.§"#p§,8,14,2)]
      }),new §9$Z§({
         "id":40,
         "name":"dracula",
         "className":"DraculaData",
         "minLevel":10,
         "maxLevel":30,
         "preview":"preview.jpg",
         "water":{
            "x":0,
            "y":1278.45,
            "height":125.8,
            "color":"0x489100",
            "secondaryColor":"0x66CC33"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "clouds":{
            "x":104.2,
            "y":52.1
         },
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,10,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":41,
         "name":"hogwarts",
         "className":"HogwartsData",
         "minLevel":16,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1319.45,
            "height":80.75,
            "color":"0x9EC642",
            "secondaryColor":"0x6FAACE"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "clouds":{
            "x":90.7,
            "y":80.9
         },
         "indentHeight":200,
         "indentWidth":60,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,16,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,16,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,16,30),new §=$@§(§-"P§.§"!0§,16,30)]
      }),new §9$Z§({
         "id":42,
         "name":"aborigine",
         "className":"AborigineData",
         "minLevel":14,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1334.45,
            "height":64.6,
            "color":"0x5A6DB6",
            "secondaryColor":"0x858DCF"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":22.1,
            "y":31.9
         },
         "indentHeight":280,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,26,3),new §=$@§(§-"P§.§"#p§,21,24,4),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,14,26)]
      }),new §9$Z§({
         "id":43,
         "name":"beach",
         "className":"BeachData",
         "minLevel":11,
         "maxLevel":25,
         "water":{
            "x":0,
            "y":1309.3,
            "height":90.25,
            "color":"0x369BD1",
            "secondaryColor":"0x6FAACE"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":110.4,
            "y":15.05
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,11,30,1),new §=$@§(§-"P§.§"#p§,11,30,2),new §=$@§(§-"P§.§"#p§,13,18,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,11,21)]
      }),new §9$Z§({
         "id":44,
         "name":"underwater",
         "className":"UnderwaterData",
         "minLevel":12,
         "maxLevel":30,
         "preview":"preview.jpg",
         "water":{
            "x":0,
            "y":1312.25,
            "height":90.25,
            "color":"0x463168",
            "secondaryColor":"0x7B72D1"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "indentHeight":50,
         "indentWidth":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":45,
         "name":"paradise",
         "className":"ParadiseData",
         "minLevel":4,
         "maxLevel":14,
         "water":{
            "x":0,
            "y":1329,
            "height":71,
            "color":"0x369BD1",
            "secondaryColor":"0x6FAACE"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "clouds":{
            "x":110.4,
            "y":15.05
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,4,14,1),new §=$@§(§-"P§.§"#p§,6,10,2),new §=$@§(§-"P§.§"!0§,11,18)]
      }),new §9$Z§({
         "id":46,
         "name":"war",
         "className":"WarData",
         "minLevel":11,
         "maxLevel":26,
         "water":{
            "x":0,
            "y":1331.75,
            "height":70.75,
            "color":"0xF06B41",
            "secondaryColor":"0xEEAB59"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":81.6,
            "y":86
         },
         "indentHeight":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,11,30,1),new §=$@§(§-"P§.§"#p§,11,26,2),new §=$@§(§-"P§.§"#p§,13,22,3),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,11,18)]
      }),new §9$Z§({
         "id":47,
         "name":"basketball",
         "className":"BasketballData",
         "minLevel":8,
         "maxLevel":25,
         "water":{
            "x":0,
            "y":1312,
            "height":88,
            "color":"0xE8F3F7",
            "secondaryColor":"0x6FAACE"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":67.25,
            "y":62.4
         },
         "indentHeight":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,13,30,2),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,11,26)]
      }),new §9$Z§({
         "id":48,
         "name":"sawmill",
         "className":"SawmillData",
         "minLevel":7,
         "maxLevel":24,
         "water":{
            "x":0,
            "y":1312,
            "height":88,
            "color":"0xE8F3F7",
            "secondaryColor":"0x6FAACE"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":124.4,
            "y":55.9
         },
         "indentHeight":60,
         "indentWidth":140,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,7,30,1),new §=$@§(§-"P§.§"#p§,13,30,2),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,11,21)]
      }),new §9$Z§({
         "id":49,
         "name":"rock",
         "className":"RockData",
         "minLevel":8,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1559.4,
            "height":71.65,
            "color":"0x7059A6",
            "secondaryColor":"0xF0A8A8"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":268.9,
            "y":341.05
         },
         "mapHeight":1630,
         "indentHeight":100,
         "indentWidth":140,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":50,
         "name":"arsenal",
         "className":"ArsenalData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1253.15,
            "height":155.85,
            "color":"0x2298E2",
            "secondaryColor":"0xFEBC92"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":67.25,
            "y":62.4
         },
         "indentHeight":260,
         "indentWidth":140,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,13,26,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,12,26)]
      }),new §9$Z§({
         "id":51,
         "name":"italy",
         "className":"ItalyData",
         "minLevel":7,
         "maxLevel":18,
         "water":{
            "x":0,
            "y":1253.15,
            "height":155.9,
            "color":"0x2256A2",
            "secondaryColor":"0x33CDA8"
         },
         "pvpWaterMode":§"%r§.PVP_0_M50,
         "clouds":{
            "x":67.25,
            "y":62.4
         },
         "indentHeight":60,
         "indentWidth":140,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,6,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§'$L§,15,18),new §=$@§(§-"P§.§"!0§,11,18)]
      }),new §9$Z§({
         "id":52,
         "name":"fastfood",
         "className":"FastfoodData",
         "minLevel":11,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1312,
            "height":88,
            "color":"0x6FAACE",
            "secondaryColor":"0xE8F3F7"
         },
         "pvpWaterMode":§"%r§.PVP_100,
         "clouds":{
            "x":59.75,
            "y":55.9
         },
         "indentHeight":100,
         "indentWidth":60,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,11,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":53,
         "name":"jungle",
         "className":"JungleData",
         "minLevel":10,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1253,
            "height":147,
            "color":"0x2256A2",
            "secondaryColor":"0x339966"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":109.85,
            "y":62.4
         },
         "indentHeight":100,
         "indentWidth":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,10,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":54,
         "name":"retro",
         "className":"RetroData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1329.45,
            "height":71.65,
            "color":"0x5C3D7E",
            "secondaryColor":"0xFBD5AE"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":268.95,
            "y":94.9
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":55,
         "name":"spongebob",
         "className":"SpongeBobData",
         "minLevel":14,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1295.95,
            "height":113.1,
            "color":"0x2256A2",
            "secondaryColor":"0x339966"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "indentHeight":160,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":56,
         "name":"helloween",
         "className":"HelloweenData",
         "minLevel":10,
         "maxLevel":30,
         "preview":"preview.jpg",
         "water":{
            "x":0,
            "y":1313.2,
            "height":86.8,
            "color":"0x475F1B",
            "secondaryColor":"0x99CC00"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":229.7,
            "y":136.3
         },
         "indentHeight":160,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,11,26)]
      }),new §9$Z§({
         "id":57,
         "name":"london",
         "className":"LondonData",
         "minLevel":15,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1253.15,
            "height":155.9,
            "color":"0x339966",
            "secondaryColor":"0x2256A2"
         },
         "pvpWaterMode":§"%r§.PVP_200_M50,
         "clouds":{
            "x":145.8,
            "y":86.35
         },
         "indentHeight":160,
         "indentWidth":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,15,30,1),new §=$@§(§-"P§.§"#p§,15,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,15,21)]
      }),new §9$Z§({
         "id":58,
         "name":"castle",
         "className":"CastleData",
         "minLevel":14,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1271.3,
            "height":128.7,
            "color":"0x7DCC9E",
            "secondaryColor":"0x18411C"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":235.15,
            "y":88.3
         },
         "indentHeight":260,
         "indentWidth":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":59,
         "name":"frozen_dragon",
         "className":"FrozenDragonData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1509.85,
            "height":90.15,
            "color":"0xDCBFE8",
            "secondaryColor":"0x307B9C"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":117.1,
            "y":343.1
         },
         "mapHeight":1600,
         "indentHeight":100,
         "indentWidth":60,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":60,
         "name":"glacier",
         "className":"GlacierData",
         "minLevel":12,
         "maxLevel":29,
         "water":{
            "x":0,
            "y":1271.3,
            "height":129,
            "color":"0xECCBEE",
            "secondaryColor":"0x445AC6"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,26,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,12,26)]
      }),new §9$Z§({
         "id":61,
         "name":"viking",
         "className":"VikingData",
         "minLevel":13,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1271.3,
            "height":129,
            "color":"0xA4DBF2",
            "secondaryColor":"0x2E7898"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":146,
            "y":103.4
         },
         "indentHeight":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,13,30,1),new §=$@§(§-"P§.§"#p§,13,30,2),new §=$@§(§-"P§.§"#p§,13,27,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30)]
      }),new §9$Z§({
         "id":62,
         "name":"congelation",
         "className":"CongelationData",
         "minLevel":10,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1621.3,
            "height":128.7,
            "color":"0xA4DBF2",
            "secondaryColor":"0x2E7898"
         },
         "pvpWaterMode":§"%r§.PVP_100_M25,
         "clouds":{
            "x":117.1,
            "y":143.1
         },
         "mapHeight":1750,
         "indentHeight":-200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,10,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,24,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,11,26)]
      }),new §9$Z§({
         "id":63,
         "name":"siege",
         "className":"SiegeData",
         "minLevel":15,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1271.3,
            "height":128.7,
            "color":"0xA4DBF2",
            "secondaryColor":"0x2E7898"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":108.35,
            "y":65.8
         },
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,15,30,1),new §=$@§(§-"P§.§"#p§,15,30,2),new §=$@§(§-"P§.§"#p§,16,24,3),new §=$@§(§-"P§.§"#p§,21,24,4),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,15,21)]
      }),new §9$Z§({
         "id":64,
         "name":"naval_battle",
         "className":"NavalBattleData",
         "minLevel":18,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1271.3,
            "height":128.7,
            "color":"0xA4DBF2",
            "secondaryColor":"0x2E7898"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "clouds":{
            "x":154.65,
            "y":94.65
         },
         "indentHeight":200,
         "indentWidth":600,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,18,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,21,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,18,30),new §=$@§(§-"P§.§"!0§,18,30)]
      }),new §9$Z§({
         "id":65,
         "name":"sea_fort",
         "className":"SeaFortData",
         "minLevel":11,
         "maxLevel":27,
         "water":{
            "x":0,
            "y":1271.3,
            "height":135.85,
            "color":"0x5BD9E3",
            "secondaryColor":"0x307B9C"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "clouds":{
            "x":154.65,
            "y":64.25
         },
         "indentHeight":100,
         "indentWidth":50,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,11,30,1),new §=$@§(§-"P§.§"#p§,11,26,2),new §=$@§(§-"P§.§"#p§,13,26,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":66,
         "name":"pirate_bay",
         "className":"PirateBayData",
         "minLevel":14,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1290.6,
            "height":114,
            "color":"0x777B9C",
            "secondaryColor":"0xCE626A"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":154.65,
            "y":64.25
         },
         "indentWidth":100,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":67,
         "name":"lagoon",
         "className":"LagoonData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1319,
            "height":92,
            "color":"0x2661B7",
            "secondaryColor":"0xDEF5FE"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":154.65,
            "y":0
         },
         "indentWidth":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":68,
         "name":"kraken",
         "className":"KrakenData",
         "minLevel":13,
         "maxLevel":28,
         "water":{
            "x":0,
            "y":1127.5,
            "height":281.55,
            "color":"0x096099",
            "secondaryColor":"0xAAE6FF"
         },
         "pvpWaterMode":§"%r§.PVP_0_M50,
         "clouds":{
            "x":59.15,
            "y":23.75
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,13,30,1),new §=$@§(§-"P§.§"#p§,13,30,2),new §=$@§(§-"P§.§"#p§,13,23,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,13,21)]
      }),new §9$Z§({
         "id":69,
         "name":"three_islands",
         "className":"ThreeIslandsData",
         "minLevel":10,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1319,
            "height":90,
            "color":"0xAAE6FF",
            "secondaryColor":"0x096099"
         },
         "pvpWaterMode":§"%r§.PVP_100,
         "clouds":{
            "x":154.65,
            "y":23.45
         },
         "indentWidth":260,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,10,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,11,26)]
      }),new §9$Z§({
         "id":70,
         "name":"cradle",
         "className":"CradleData",
         "minLevel":13,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1318,
            "height":91,
            "color":"0x918ADD",
            "secondaryColor":"0x3982B3"
         },
         "notFloodable":true,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,13,30,1),new §=$@§(§-"P§.§"#p§,13,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,13,30)]
      }),new §9$Z§({
         "id":71,
         "name":"crash",
         "className":"CrashData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1319,
            "height":90,
            "color":"0xAAE6FF",
            "secondaryColor":"0x096099"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":400,
            "y":30,
            "scale":1.4
         },
         "indentWidth":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":72,
         "name":"dungeon",
         "className":"DungeonData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1330,
            "height":79,
            "color":"0xFF9F00",
            "secondaryColor":"0x615134"
         },
         "notFloodable":true,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,16,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":73,
         "name":"endless_desert",
         "className":"EndlessDesertData",
         "minLevel":8,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1297,
            "height":112,
            "color":"0xAAE6FF",
            "secondaryColor":"0x096099"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "clouds":{
            "x":400,
            "y":30,
            "scale":1.4
         },
         "indentHeight":300,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,8,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":74,
         "name":"forest_hut",
         "className":"ForestHutData",
         "version":1,
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1268,
            "height":135,
            "color":"0x425F91",
            "secondaryColor":"0x6D9CB1"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":361,
            "y":100,
            "scale":1.6
         },
         "indentHeight":400,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":75,
         "name":"maniac",
         "className":"ManiacData",
         "minLevel":11,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1268,
            "height":135,
            "color":"0x425F91",
            "secondaryColor":"0x6D9CB1"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "clouds":{
            "x":80,
            "y":25,
            "scale":1
         },
         "indentHeight":400,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,11,30,1),new §=$@§(§-"P§.§"#p§,11,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":76,
         "name":"valley_mills",
         "className":"ValleyMillsData",
         "minLevel":17,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1268,
            "height":135,
            "color":"0x425F91",
            "secondaryColor":"0x6D9CB1"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":80,
            "y":25,
            "scale":1.6
         },
         "indentHeight":300,
         "indentWidth":150,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,17,30,1),new §=$@§(§-"P§.§"#p§,17,30,2),new §=$@§(§-"P§.§"#p§,17,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,17,30),new §=$@§(§-"P§.§"!0§,17,30)]
      }),new §9$Z§({
         "id":77,
         "name":"road_races",
         "className":"RoadRacesData",
         "minLevel":13,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1313,
            "height":91,
            "color":"0x1A7699",
            "secondaryColor":"0x7DD2EE"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":129,
            "y":46,
            "scale":1
         },
         "indentHeight":100,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,13,30,1),new §=$@§(§-"P§.§"#p§,13,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,13,30)]
      }),new §9$Z§({
         "id":78,
         "name":"highway",
         "className":"HighwayData",
         "version":1,
         "minLevel":16,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1313,
            "height":91,
            "color":"0x1C79B7",
            "secondaryColor":"0x41AFDE"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "clouds":{
            "x":129,
            "y":45,
            "scale":1
         },
         "indentHeight":200,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,16,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,16,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,16,30),new §=$@§(§-"P§.§"!0§,16,30)]
      }),new §9$Z§({
         "id":79,
         "name":"gas_station",
         "className":"GasStationData",
         "minLevel":15,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1313,
            "height":92,
            "color":"0x378284",
            "secondaryColor":"0x24AFE3"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "clouds":{
            "x":126,
            "y":45,
            "scale":1
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,15,30,1),new §=$@§(§-"P§.§"#p§,15,30,2),new §=$@§(§-"P§.§"#p§,15,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,15,30)]
      }),new §9$Z§({
         "id":80,
         "name":"abandoned_mines",
         "className":"AbandonedMinesData",
         "version":1,
         "minLevel":16,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1313,
            "height":91,
            "color":"0x378284",
            "secondaryColor":"0x24AFE3"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,16,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,16,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,16,30),new §=$@§(§-"P§.§"!0§,16,30)]
      }),new §9$Z§({
         "id":81,
         "name":"city_miners",
         "className":"CityMinersData",
         "minLevel":16,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1238,
            "height":167,
            "color":"0x378284",
            "secondaryColor":"0x24AFE3"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "indentHeight":200,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,16,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,16,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,16,30),new §=$@§(§-"P§.§"!0§,16,30)]
      }),new §9$Z§({
         "id":82,
         "name":"escape",
         "className":"EscapeData",
         "minLevel":14,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1264,
            "height":136,
            "color":"0xA4DBF2",
            "secondaryColor":"0x2E7898"
         },
         "pvpWaterMode":§"%r§.PVP_200_M50,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "indentHeight":200,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":83,
         "name":"fishing_village",
         "className":"FishingVillageData",
         "minLevel":10,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1259,
            "height":146,
            "color":"0x378284",
            "secondaryColor":"0x24AFE3"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "indentHeight":350,
         "indentWidth":700,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,10,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":84,
         "name":"village",
         "className":"VillageData",
         "version":1,
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1278,
            "height":128,
            "color":"0xFF2C31",
            "secondaryColor":"0xFFBF00"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "indentHeight":300,
         "indentWidth":600,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":85,
         "name":"apocalypse",
         "className":"ApocalypseData",
         "minLevel":17,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1265,
            "height":140,
            "color":"0x242B62",
            "secondaryColor":"0x55935F"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "indentHeight":300,
         "indentWidth":600,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,17,30,1),new §=$@§(§-"P§.§"#p§,17,30,2),new §=$@§(§-"P§.§"#p§,17,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,17,30),new §=$@§(§-"P§.§"!0§,17,30)]
      }),new §9$Z§({
         "id":86,
         "name":"church",
         "className":"ChurchData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1313,
            "height":91,
            "color":"0x378284",
            "secondaryColor":"0x24AFE3"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "indentHeight":100,
         "indentWidth":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":87,
         "name":"dark_knight",
         "className":"DarkKnightData",
         "minLevel":14,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1313,
            "height":91,
            "color":"0x000033",
            "secondaryColor":"0xFFFFCC"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "clouds":{
            "x":111.5,
            "y":71.8,
            "scale":1
         },
         "indentHeight":100,
         "indentWidth":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":88,
         "name":"prison",
         "className":"PrisonData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1313,
            "height":91,
            "color":"0x24AFE3",
            "secondaryColor":"0x378284"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "clouds":{
            "x":111.5,
            "y":71.8,
            "scale":1
         },
         "indentHeight":100,
         "indentWidth":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":89,
         "name":"zeon",
         "className":"ZeonData",
         "minLevel":14,
         "maxLevel":30,
         "indentHeight":200,
         "indentWidth":400,
         "notFloodable":true,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":90,
         "name":"estate",
         "className":"EstateData",
         "minLevel":16,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1330,
            "height":73.6,
            "color":"0x1A334A",
            "secondaryColor":"0x4E81AF"
         },
         "pvpWaterMode":§"%r§.PVP_600,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "indentHeight":200,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,16,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,16,30),new §=$@§(§-"P§.§"!0§,16,30)]
      }),new §9$Z§({
         "id":91,
         "name":"psionic",
         "className":"PsionicData",
         "minLevel":17,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1331,
            "height":68.9,
            "color":"0x73388E",
            "secondaryColor":"0xECB62A"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "indentHeight":200,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,17,30,1),new §=$@§(§-"P§.§"#p§,17,30,2),new §=$@§(§-"P§.§"#p§,17,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,17,30),new §=$@§(§-"P§.§"!0§,17,30)]
      }),new §9$Z§({
         "id":92,
         "name":"druid",
         "className":"DruidData",
         "version":1,
         "minLevel":15,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1309,
            "height":91,
            "color":"0x0ED9DE",
            "secondaryColor":"0x126FE0"
         },
         "pvpWaterMode":§"%r§.PVP_600,
         "indentHeight":200,
         "indentWidth":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,18,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,18,30)]
      }),new §9$Z§({
         "id":93,
         "name":"mars",
         "className":"MarsData",
         "minLevel":10,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1309,
            "height":91,
            "color":"0x0ED9DE",
            "secondaryColor":"0x126FE0"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "indentHeight":200,
         "indentWidth":400,
         "pvpLevels":[]
      }),new §9$Z§({
         "id":94,
         "name":"mushrooms",
         "className":"MushroomsData",
         "minLevel":8,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1309,
            "height":91,
            "color":"0x0ED9DE",
            "secondaryColor":"0xD28CD9"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "indentHeight":200,
         "indentWidth":400,
         "scaleBg":0.55,
         "scaleBgFullscreen":0.65,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":95,
         "name":"saturn",
         "className":"SaturnData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1263,
            "height":137,
            "color":"0x0ED9DE",
            "secondaryColor":"0x126FE0"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":96,
         "name":"assasin",
         "className":"AssasinData",
         "minLevel":12,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "indentHeight":200,
         "indentWidth":200,
         "notFloodable":true,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,18,24,3),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,12,26)]
      }),new §9$Z§({
         "id":97,
         "name":"halloween2",
         "className":"Halloween2Data",
         "minLevel":10,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "indentHeight":200,
         "indentWidth":200,
         "notFloodable":true,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,10,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,11,30)]
      }),new §9$Z§({
         "id":98,
         "name":"snowoods",
         "className":"SnowoodsData",
         "minLevel":12,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1308,
            "height":91,
            "color":"0x0ED9DE",
            "secondaryColor":"0x8DBCF5"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":99,
         "name":"archbot",
         "className":"ArchbotData",
         "minLevel":10,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1308,
            "height":91,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,13,22,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,12,26)]
      }),new §9$Z§({
         "id":100,
         "name":"jarl",
         "className":"JarlData",
         "minLevel":15,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1308,
            "height":91,
            "color":"0x3D71AF",
            "secondaryColor":"0x703DB6"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,15,30,1),new §=$@§(§-"P§.§"#p§,15,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,14,26)]
      }),new §9$Z§({
         "id":101,
         "name":"mines2_fix",
         "className":"Mines2Data",
         "minLevel":14,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1308,
            "height":91,
            "color":"0x1C7284",
            "secondaryColor":"0x70D3F4"
         },
         "pvpWaterMode":§"%r§.PVP_600,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":102,
         "name":"lianas",
         "className":"LianasData",
         "minLevel":12,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1358,
            "height":45,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,15,30,2),new §=$@§(§-"P§.§"#p§,15,24,3),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,12,26)]
      }),new §9$Z§({
         "id":103,
         "name":"barbarians",
         "className":"BarbariansData",
         "minLevel":14,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1338,
            "height":65,
            "color":"0x666600",
            "secondaryColor":"0xFFCC00"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":104,
         "name":"castles2_fix",
         "className":"Castles2Data",
         "minLevel":18,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1335,
            "height":65,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "scaleBg":0.55,
         "scaleBgFullscreen":0.835,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,18,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,18,30),new §=$@§(§-"P§.§"!0§,18,30)]
      }),new §9$Z§({
         "id":105,
         "name":"oldlondon",
         "className":"OldLondonData",
         "minLevel":15,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_600,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,15,30,1),new §=$@§(§-"P§.§"#p§,15,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,15,30)]
      }),new §9$Z§({
         "id":106,
         "name":"newjungle",
         "className":"NewJungleData",
         "minLevel":8,
         "maxLevel":18,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,8,30,2),new §=$@§(§-"P§.§'$L§,15,18),new §=$@§(§-"P§.§"!0§,11,18)]
      }),new §9$Z§({
         "id":107,
         "name":"graveyard",
         "className":"GraveyardData",
         "minLevel":12,
         "maxLevel":26,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x2F4366",
            "secondaryColor":"0x727CA6"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,8,30,2),new §=$@§(§-"P§.§"#p§,13,18,3),new §=$@§(§-"P§.§'$L§,15,18),new §=$@§(§-"P§.§"!0§,12,21)]
      }),new §9$Z§({
         "id":108,
         "name":"prerie",
         "className":"PrerieData",
         "minLevel":14,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,14,30,3),new §=$@§(§-"P§.§"#p§,21,26,4),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":109,
         "name":"totem",
         "className":"TotemData",
         "minLevel":8,
         "maxLevel":18,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,8,24,2),new §=$@§(§-"P§.§"#p§,13,16,3),new §=$@§(§-"P§.§'$L§,15,18),new §=$@§(§-"P§.§"!0§,11,18)]
      }),new §9$Z§({
         "id":110,
         "name":"jungletop",
         "className":"JungleTopData",
         "minLevel":16,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_920,
         "indentHeight":800,
         "indentWidth":500,
         "pvpLevels":[]
      }),new §9$Z§({
         "id":111,
         "name":"rift",
         "className":"RiftData",
         "minLevel":16,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_920,
         "indentHeight":800,
         "indentWidth":500,
         "pvpLevels":[]
      }),new §9$Z§({
         "id":112,
         "name":"farm",
         "className":"FarmData",
         "minLevel":14,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":113,
         "name":"blades",
         "className":"BladesData",
         "minLevel":15,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_700,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,15,30,1),new §=$@§(§-"P§.§"#p§,15,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,26,4),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,15,30)]
      }),new §9$Z§({
         "id":114,
         "name":"twinpeaks",
         "className":"TwinPeaksData",
         "minLevel":15,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x5E0404",
            "secondaryColor":"0xff9a00"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "indentHeight":200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,15,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,15,30)]
      }),new §9$Z§({
         "id":115,
         "name":"cave",
         "className":"CaveData",
         "minLevel":16,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1330,
            "height":79,
            "color":"0xFF9F00",
            "secondaryColor":"0x615134"
         },
         "notFloodable":true,
         "mission":false,
         "pvpLevels":[]
      }),new §9$Z§({
         "id":116,
         "name":"grassedruins",
         "className":"GrassedRuinsData",
         "minLevel":14,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,18,23,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,14,26)]
      }),new §9$Z§({
         "id":117,
         "name":"chasm",
         "className":"ChasmData",
         "minLevel":8,
         "maxLevel":16,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,16,1),new §=$@§(§-"P§.§"#p§,8,12,2),new §=$@§(§-"P§.§'$L§,15,18)]
      }),new §9$Z§({
         "id":118,
         "name":"crossing",
         "className":"CrossingData",
         "minLevel":5,
         "maxLevel":14,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_100,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,5,10,1),new §=$@§(§-"P§.§"#p§,5,10,2),new §=$@§(§-"P§.§"!0§,11,14)]
      }),new §9$Z§({
         "id":119,
         "name":"dayoftheDead",
         "className":"DayoftheDeadData",
         "minLevel":14,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x4C2791",
            "secondaryColor":"0x7A51FF"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "indentWidth":300,
         "indentHeight":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,16,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":120,
         "name":"muerto_fix",
         "className":"MuertoData",
         "minLevel":12,
         "maxLevel":25,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x4C2791",
            "secondaryColor":"0x7A51FF"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,25,1),new §=$@§(§-"P§.§"#p§,14,25,2),new §=$@§(§-"P§.§"#p§,18,23,3),new §=$@§(§-"P§.§"!0§,12,21)]
      }),new §9$Z§({
         "id":121,
         "name":"frozen_island",
         "className":"FrozenIslandData",
         "minLevel":18,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "indentWidth":300,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,18,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,21,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,18,30),new §=$@§(§-"P§.§"!0§,18,30)]
      }),new §9$Z§({
         "id":122,
         "name":"frozen_bay_fix",
         "className":"FrozenBayData",
         "minLevel":15,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_600,
         "indentWidth":300,
         "indentHeight":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,15,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,15,30)]
      }),new §9$Z§({
         "id":123,
         "name":"ice_jungle",
         "className":"IceJungleData",
         "minLevel":14,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x36659D",
            "secondaryColor":"0x89E5E5"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,14,30)]
      }),new §9$Z§({
         "id":124,
         "name":"swamp",
         "className":"SwampData",
         "minLevel":15,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0xB9BF80",
            "secondaryColor":"0x757949"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "indentWidth":300,
         "indentHeight":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,15,30,1),new §=$@§(§-"P§.§"#p§,15,30,2),new §=$@§(§-"P§.§"#p§,15,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,15,30)]
      }),new §9$Z§({
         "id":125,
         "name":"swamp_hut_fix",
         "className":"SwampHutData",
         "minLevel":18,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":0,
            "scale":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0xB9BF80",
            "secondaryColor":"0x757949"
         },
         "pvpWaterMode":§"%r§.PVP_600,
         "indentWidth":300,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,18,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,18,30),new §=$@§(§-"P§.§"!0§,18,30)]
      }),new §9$Z§({
         "id":126,
         "name":"space_race",
         "className":"SpaceRaceData",
         "version":1,
         "script":§<y§,
         "pvpWithFriend":false,
         "pvpWager":false,
         "mission":false,
         "hotSeat":false,
         "scenario":false,
         "ropeRace":true,
         "raceFinishRadius":0,
         "minLevel":1,
         "maxLevel":20,
         "indentWidth":300,
         "indentHeight":2300
      }),new §9$Z§({
         "id":127,
         "name":"deepspace_fix",
         "className":"DeepSpaceData",
         "minLevel":12,
         "maxLevel":20,
         "indentWidth":300,
         "notFloodable":true,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,18,1),new §=$@§(§-"P§.§"#p§,12,18,2)]
      }),new §9$Z§({
         "id":128,
         "name":"train2_resize",
         "className":"Train2Data",
         "minLevel":14,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1354,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "indentWidth":1400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,16,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,30),new §=$@§(§-"P§.§"!0§,15,30)]
      }),new §9$Z§({
         "id":129,
         "name":"mining_resize_fix",
         "className":"MiningData",
         "minLevel":20,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_800,
         "indentWidth":200,
         "indentHeight":500,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,20,30,1),new §=$@§(§-"P§.§"#p§,20,30,2),new §=$@§(§-"P§.§"#p§,22,30,3),new §=$@§(§-"P§.§"#p§,24,30,4),new §=$@§(§-"P§.§'$L§,20,30),new §=$@§(§-"P§.§"!0§,20,30)]
      }),new §9$Z§({
         "id":130,
         "name":"launch_fix",
         "className":"LaunchData",
         "minLevel":18,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1354,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "indentWidth":1500,
         "indentHeight":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,18,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,21,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,18,30),new §=$@§(§-"P§.§"!0§,18,30)]
      }),new §9$Z§({
         "id":131,
         "name":"dragonBattle",
         "className":"DragonBattleData",
         "minLevel":21,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "indentWidth":1200,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,21,30,1),new §=$@§(§-"P§.§"#p§,21,30,2),new §=$@§(§-"P§.§"#p§,21,30,3),new §=$@§(§-"P§.§"#p§,25,30,4),new §=$@§(§-"P§.§'$L§,21,30),new §=$@§(§-"P§.§"!0§,21,30)]
      }),new §9$Z§({
         "id":132,
         "name":"dump_fix",
         "className":"DumpData",
         "minLevel":10,
         "maxLevel":24,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,10,30,1),new §=$@§(§-"P§.§"#p§,10,30,2),new §=$@§(§-"P§.§"#p§,13,16,3),new §=$@§(§-"P§.§'$L§,15,18)]
      }),new §9$Z§({
         "id":133,
         "name":"shipGraveyard_fix",
         "className":"ShipGraveyardData",
         "minLevel":8,
         "maxLevel":22,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.STABLE,
         "indentWidth":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,8,30,1),new §=$@§(§-"P§.§"#p§,8,14,2),new §=$@§(§-"P§.§'$L§,15,18),new §=$@§(§-"P§.§"!0§,11,26)]
      }),new §9$Z§({
         "id":134,
         "name":"projectx_fix",
         "className":"ProjectXData",
         "minLevel":18,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x7B9B12",
            "secondaryColor":"0xAEDDF5"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "indentWidth":300,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,18,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,18,30),new §=$@§(§-"P§.§"!0§,18,30)]
      }),new §9$Z§({
         "id":135,
         "name":"tunnels",
         "className":"TunnelsData",
         "version":1,
         "minLevel":24,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_700,
         "indentWidth":300,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,24,30,1),new §=$@§(§-"P§.§"#p§,24,30,2),new §=$@§(§-"P§.§"#p§,24,30,3),new §=$@§(§-"P§.§"#p§,24,30,4),new §=$@§(§-"P§.§'$L§,24,30),new §=$@§(§-"P§.§"!0§,24,30)]
      }),new §9$Z§({
         "id":136,
         "name":"projectx_race",
         "className":"ProjectxRaceData",
         "version":1,
         "script":§<%Y§,
         "pvpWithFriend":false,
         "pvpWager":false,
         "mission":false,
         "hotSeat":false,
         "scenario":false,
         "ropeRace":true,
         "raceFinishRadius":0,
         "minLevel":1,
         "maxLevel":30,
         "indentWidth":600,
         "indentHeight":1000
      }),new §9$Z§({
         "id":137,
         "name":"projectx_lab_race",
         "className":"ProjectxLabRaceData",
         "version":1,
         "script":§9r§,
         "pvpWithFriend":false,
         "pvpWager":false,
         "mission":false,
         "hotSeat":false,
         "scenario":false,
         "ropeRace":true,
         "raceFinishRadius":0,
         "minLevel":1,
         "maxLevel":30,
         "indentWidth":600,
         "indentHeight":300
      }),new §9$Z§({
         "id":138,
         "name":"nightLandfill_fix",
         "className":"NightLandfillData",
         "minLevel":10,
         "maxLevel":30,
         "clouds":{
            "x":200,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x4C2791",
            "secondaryColor":"0x7A51FF"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "indentWidth":1000,
         "indentHeight":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,10,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,16,30,3),new §=$@§(§-"P§.§"#p§,21,26,4),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,11,26)]
      }),new §9$Z§({
         "id":139,
         "name":"nightMonsters",
         "className":"NightMonstersData",
         "minLevel":13,
         "maxLevel":30,
         "clouds":{
            "x":200,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x4C2791",
            "secondaryColor":"0x7A51FF"
         },
         "pvpWaterMode":§"%r§.PVP_100,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,13,30,1),new §=$@§(§-"P§.§"#p§,13,30,2),new §=$@§(§-"P§.§"#p§,16,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,13,30)]
      }),new §9$Z§({
         "id":140,
         "name":"bigSnake_fix",
         "className":"BigSnakeData",
         "minLevel":18,
         "maxLevel":30,
         "clouds":{
            "x":200,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1324,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_200,
         "indentWidth":400,
         "indentHeight":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,18,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,18,24,3),new §=$@§(§-"P§.§'$L§,18,24)]
      }),new §9$Z§({
         "id":141,
         "name":"sharks",
         "className":"SharksData",
         "version":1,
         "minLevel":21,
         "maxLevel":30,
         "clouds":{
            "x":200,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1340,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_500,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,22,30,1),new §=$@§(§-"P§.§"#p§,22,30,2),new §=$@§(§-"P§.§"#p§,22,30,3),new §=$@§(§-"P§.§"#p§,25,30,4),new §=$@§(§-"P§.§'$L§,21,30),new §=$@§(§-"P§.§"!0§,21,30)]
      }),new §9$Z§({
         "id":142,
         "name":"iceberg",
         "className":"IcebergData",
         "minLevel":9,
         "maxLevel":24,
         "clouds":{
            "x":200,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1340,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,9,30,1),new §=$@§(§-"P§.§"#p§,10,18,2),new §=$@§(§-"P§.§"#p§,13,16,3),new §=$@§(§-"P§.§'$L§,15,21)]
      }),new §9$Z§({
         "id":143,
         "name":"yeti",
         "className":"YetiData",
         "minLevel":16,
         "maxLevel":30,
         "clouds":{
            "x":200,
            "y":100,
            "scale":1.5,
            "alpha":0.5
         },
         "water":{
            "x":0,
            "y":1340,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_700,
         "indentWidth":300,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,16,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,16,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,16,30),new §=$@§(§-"P§.§"!0§,16,30)]
      }),new §9$Z§({
         "id":144,
         "name":"castles3",
         "className":"Castles3Data",
         "minLevel":11,
         "maxLevel":23,
         "water":{
            "x":0,
            "y":1351.3,
            "height":50,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "clouds":{
            "x":235.15,
            "y":88.3
         },
         "indentHeight":260,
         "indentWidth":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,12,30,2),new §=$@§(§-"P§.§"#p§,15,30,3),new §=$@§(§-"P§.§"#p§,21,26,4),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,11,26)]
      }),new §9$Z§({
         "id":145,
         "name":"glacier2",
         "className":"Glacier2Data",
         "minLevel":19,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1331.3,
            "height":69,
            "color":"0xECCBEE",
            "secondaryColor":"0x445AC6"
         },
         "pvpWaterMode":§"%r§.PVP_700,
         "indentHeight":100,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,19,30,1),new §=$@§(§-"P§.§"#p§,19,30,2),new §=$@§(§-"P§.§"#p§,19,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,19,30),new §=$@§(§-"P§.§"!0§,19,30)]
      }),new §9$Z§({
         "id":146,
         "name":"gangstersCity",
         "className":"GangstersCityData",
         "version":2,
         "minLevel":18,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1350,
            "height":50,
            "color":"0x3AE704",
            "secondaryColor":"0xF0FF74"
         },
         "pvpWaterMode":§"%r§.PVP_700,
         "indentWidth":300,
         "indentHeight":300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,18,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,18,26),new §=$@§(§-"P§.§"!0§,18,30)]
      }),new §9$Z§({
         "id":147,
         "name":"octopus",
         "className":"OctopusData",
         "minLevel":18,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":936,
            "height":540,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_0_M300,
         "pvpLevels":[]
      }),new §9$Z§({
         "id":148,
         "name":"outpost",
         "className":"OutpostData",
         "minLevel":18,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1340,
            "height":60,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_600,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,18,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,18,30),new §=$@§(§-"P§.§"!0§,18,30)]
      }),new §9$Z§({
         "id":149,
         "name":"villianBase",
         "className":"VillianBaseData",
         "minLevel":13,
         "maxLevel":26,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1340,
            "height":60,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_300,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,13,30,1),new §=$@§(§-"P§.§"#p§,15,30,2),new §=$@§(§-"P§.§'$L§,15,21),new §=$@§(§-"P§.§"!0§,13,26)]
      }),new §9$Z§({
         "id":150,
         "name":"medieval_battle",
         "className":"MedievalBattleData",
         "minLevel":12,
         "maxLevel":30,
         "water":{
            "x":0,
            "y":1300,
            "height":100
         },
         "clouds":{
            "x":800,
            "y":107,
            "scale":1.2
         },
         "pvpWaterMode":§"%r§.PVP_400,
         "indentHeight":250,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,12,30,1),new §=$@§(§-"P§.§"#p§,16,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,26,4),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,12,30)]
      }),new §9$Z§({
         "id":151,
         "name":"stone_jungle",
         "className":"StoneJungleData",
         "minLevel":16,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1350,
            "height":50,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_800,
         "indentWidth":300,
         "indentHeight":400,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,16,30,1),new §=$@§(§-"P§.§"#p§,18,30,2),new §=$@§(§-"P§.§"#p§,18,30,3),new §=$@§(§-"P§.§"#p§,21,30,4),new §=$@§(§-"P§.§'$L§,16,30),new §=$@§(§-"P§.§"!0§,16,30)]
      }),new §9$Z§({
         "id":152,
         "name":"biom",
         "className":"BiomData",
         "minLevel":14,
         "maxLevel":30,
         "clouds":{
            "x":0,
            "y":100,
            "scale":1.5,
            "alpha":1
         },
         "water":{
            "x":0,
            "y":1354,
            "height":75,
            "color":"0x3D71AF",
            "secondaryColor":"0x99FFFF"
         },
         "pvpWaterMode":§"%r§.PVP_100,
         "indentWidth":400,
         "indentHeight":200,
         "pvpLevels":[new §=$@§(§-"P§.§"#p§,14,30,1),new §=$@§(§-"P§.§"#p§,14,30,2),new §=$@§(§-"P§.§"#p§,16,26,3),new §=$@§(§-"P§.§'$L§,15,26),new §=$@§(§-"P§.§"!0§,15,30)]
      }),new §9$Z§({
         "id":153,
         "name":"spiders_lair_resize",
         "className":"SpidersLairData",
         "minLevel":18,
         "maxLevel":30,
         "notFloodable":true,
         "mission":false,
         "indentHeight":600,
         "pvpLevels":[]
      }),new §9$Z§({
         "id":154,
         "name":"spiders_lair_race",
         "className":"SpidersLairRaceData",
         "version":3,
         "script":§-x§,
         "pvpWithFriend":false,
         "pvpWager":false,
         "mission":false,
         "hotSeat":false,
         "scenario":false,
         "ropeRace":true,
         "raceFinishRadius":80,
         "minLevel":1,
         "maxLevel":30,
         "indentWidth":600,
         "indentHeight":1000
      })];
      
      public function §=%A§()
      {
         super();
      }
      
      public static function §1^§() : Array
      {
         return §;"f§;
      }
      
      public static function §8#9§() : Object
      {
         var _loc1_:Vector.<§9$Z§> = null;
         var _loc2_:String = null;
         var _loc3_:§9$Z§ = null;
         var _loc4_:§=$@§ = null;
         if(!§!!P§)
         {
            §!!P§ = {};
            for each(_loc3_ in §;"f§)
            {
               for each(_loc4_ in _loc3_.pvpLevels)
               {
                  _loc2_ = §=$@§.§9#7§(_loc4_.type,_loc4_.§,#?§);
                  if(!§!!P§[_loc2_])
                  {
                     §!!P§[_loc2_] = new Vector.<§9$Z§>(0);
                  }
                  _loc1_ = §!!P§[_loc2_];
                  if(_loc1_.indexOf(_loc3_) == -1)
                  {
                     _loc1_.push(_loc3_);
                  }
               }
            }
         }
         return §!!P§;
      }
      
      public static function §7S§(param1:int) : §9$Z§
      {
         var _loc2_:§9$Z§ = null;
         for each(_loc2_ in §;"f§)
         {
            if(_loc2_.getId() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §;$"§() : void
      {
         var data:Object = null;
         var level:String = null;
         var str:String = null;
         var type:String = null;
         data = {};
         var ar:Array = §;"f§.map(function(param1:§9$Z§, ... rest):String
         {
            var _loc3_:* = undefined;
            var _loc4_:* = undefined;
            var _loc5_:* = undefined;
            var _loc6_:* = undefined;
            _loc3_ = param1.minLevel;
            _loc4_ = param1.maxLevel;
            while(_loc3_ <= _loc4_)
            {
               if(!data[_loc3_])
               {
                  data[_loc3_] = {};
               }
               if(!data[_loc3_].mission)
               {
                  data[_loc3_].mission = 0;
               }
               ++data[_loc3_].mission;
               _loc3_++;
            }
            for each(_loc6_ in param1.pvpLevels)
            {
               _loc3_ = _loc6_.minLevel;
               _loc4_ = _loc6_.maxLevel;
               while(_loc3_ <= _loc4_)
               {
                  if(!data[_loc3_])
                  {
                     data[_loc3_] = {};
                  }
                  _loc5_ = _loc6_.softkey;
                  if(!data[_loc3_][_loc5_])
                  {
                     data[_loc3_][_loc5_] = 0;
                  }
                  ++data[_loc3_][_loc5_];
                  _loc3_++;
               }
            }
            return "\n" + param1.id + " " + param1.name + " " + §<"G§.§%! §(§8"k§.§!"#§ + param1.name.toUpperCase()) + "\n";
         });
         for(level in data)
         {
            str = "";
            for(type in data[level])
            {
               str += type + " " + data[level][type] + ", ";
            }
         }
      }
   }
}

