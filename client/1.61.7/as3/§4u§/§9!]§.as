package §4u§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%"§.§[!^§;
   import §0%"§.§`"`§;
   import §0%[§.§0%§;
   import §2#W§.§8-§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §7$t§.§[!X§;
   import §8#<§.§!#^§;
   import §<!W§.§#&#§;
   import §<!W§.§?#L§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §>$q§.*;
   import §?#g§.Race;
   import §@!N§.§&#Z§;
   import §@!i§.§<#&§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%'§.§<"G§;
   import §`#x§.*;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §9!]§ extends §!$F§
   {
      
      private static const §+! §:TextFormat = new TextFormat("Arial",11);
      
      private var §=#-§:Vector.<TextField> = new Vector.<TextField>(0);
      
      private var §,"F§:Vector.<Sprite> = new Vector.<Sprite>(0);
      
      private var §[%c§:Boolean;
      
      private var §=$x§:Boolean;
      
      private var §>##§:Boolean;
      
      public function §9!]§()
      {
         super(§6#A§.§!&6§(§+"'§.§3!o§));
      }
      
      override public function initHint(param1:§&!e§) : void
      {
         var itemsSetRecord:§[!X§;
         var descriptionTraits:String;
         var numLines:int;
         var dateText:String;
         var field:TextField = null;
         var iconCont:Sprite = null;
         var equip:§=?§ = null;
         var id:int = 0;
         var textSetName:String = null;
         var itemsSetForEquips:Vector.<Object> = null;
         var color:uint = 0;
         var names:String = null;
         var setRec:Object = null;
         var itemsSetRec:§[!X§ = null;
         var textItemName:String = null;
         var bonuses:Vector.<§@"I§> = null;
         var bonusItem:§@"I§ = null;
         var expiredTimeMinutes:int = 0;
         var expiredTime:int = 0;
         var races:Vector.<int> = null;
         var raceName:String = null;
         var raceText:String = null;
         var racesList:Array = null;
         var raceId:int = 0;
         var rs:String = null;
         var item:§&!e§ = param1;
         §4&D§.multiline = true;
         §4&D§.wordWrap = true;
         §4&D§.textColor = 5391158;
         super.initHint(item);
         if(this.§=#-§.length > 0)
         {
            for each(field in this.§=#-§)
            {
               _removeChild(field);
            }
            this.§=#-§.length = 0;
         }
         if(this.§,"F§.length > 0)
         {
            for each(iconCont in this.§,"F§)
            {
               _removeChild(iconCont);
            }
            this.§,"F§.length = 0;
         }
         equip = item as §=?§;
         id = equip.getId();
         itemsSetRecord = equip is §[!X§ ? equip as §[!X§ : null;
         if(itemsSetRecord)
         {
            §4&D§.textColor = itemsSetRecord.§+e§;
            §4&D§.text = itemsSetRecord.§0F§;
            if(this.§=$x§ && §[!^§.§]$G§(id))
            {
               textSetName = §4&D§.text;
               §4&D§.text = textSetName + " (" + §0$N§.LIGHT_VERSION + ")";
               §4&D§.textColor = §%Z§.NORMAL.§>#]§();
            }
         }
         else
         {
            itemsSetForEquips = §`"`§.§+o§(equip);
            color = §%Z§.§<#7§.§>#]§();
            if(Boolean(itemsSetForEquips && itemsSetForEquips.length) && Boolean(!§!#^§.§7%#§(id)) && !§!#^§.§3&5§(id))
            {
               if(itemsSetForEquips.length == 1)
               {
                  if(itemsSetForEquips[0].isAnti)
                  {
                     color = §%Z§.ANTISET_ITEMS.§>#]§();
                  }
                  else if(!itemsSetForEquips[0].isHidden)
                  {
                     color = §%Z§.SET_ITEMS.§>#]§();
                  }
               }
               names = "";
               if(!§8"%§.§?!W§.inBattle)
               {
                  for each(setRec in itemsSetForEquips)
                  {
                     if(!setRec.isHidden)
                     {
                        itemsSetRec = §<$c§.§#$m§(setRec.id);
                        names += "\n(" + §#&>§.§]#j§(setRec.isAnti,itemsSetRec.§7%z§()) + ")";
                     }
                  }
               }
               §4&D§.textColor = color;
               if(names)
               {
                  §4&D§.text = equip.§7%z§() + names;
               }
            }
            else if(§!#^§.§7%#§(id) || §!#^§.§3&5§(id))
            {
               §4&D§.textColor = §#&>§.§?$M§(id).getType().§>#]§();
            }
            else if(equip.isTemporalItem())
            {
            }
            if(this.§=$x§ && equip.isTemporalItem() && !§!#^§.§`!2§(int(equip.getId() / 10) * 10) && (§,$O§.§]$G§(id) || §]!E§.§]$G§(id)))
            {
               textItemName = §4&D§.text;
               §4&D§.text = textItemName + " (" + §0$N§.LIGHT_VERSION + ")";
               if(!itemsSetForEquips)
               {
                  §4&D§.textColor = §%Z§.NORMAL.§>#]§();
               }
            }
         }
         if(this.§>##§)
         {
            §4&D§.text = "???";
         }
         §8$<§ = §4&D§.y + §4&D§.height;
         descriptionTraits = "";
         numLines = 0;
         if(!this.§>##§)
         {
            bonuses = equip.getBonusList(this.§=$x§).§<%i§();
            for each(bonusItem in bonuses)
            {
               if(bonusItem.§17§())
               {
                  §+! §.color = 5391158;
                  §+! §.align = TextFormatAlign.LEFT;
                  field = §7&5§.§4#z§(0,§8$<§,bonusItem.§@$+§(),§+! §);
                  field.x = 12;
                  field.width = 157;
                  §?!C§(field);
                  this.§=#-§.push(field);
                  numLines = Math.max(numLines,field.numLines);
                  if(bonusItem.getType().§2!q§())
                  {
                     iconCont = §&#Z§.§@"R§(bonusItem.getType().§2!q§(),field.height);
                     §?!C§(iconCont);
                     iconCont.x = 12;
                     iconCont.y = field.y;
                     field.x = iconCont.width + 17;
                     iconCont.getChildByName("back").visible = false;
                     this.§,"F§.push(iconCont);
                  }
                  §+! §.color = bonusItem.getType().§4&,§();
                  §+! §.align = TextFormatAlign.RIGHT;
                  field = §7&5§.§4#z§(0,§8$<§,bonusItem.§'$o§(),§+! §);
                  §^"o§.autoSize = TextFieldAutoSize.RIGHT;
                  field.x = 170;
                  field.width = 40;
                  §?!C§(field);
                  this.§=#-§.push(field);
                  numLines = Math.max(numLines,field.numLines);
                  §8$<§ += 17 * numLines;
                  numLines = 0;
               }
               else
               {
                  descriptionTraits += bonusItem.§@$+§() + ". ";
               }
            }
         }
         if(descriptionTraits != "")
         {
            §^"o§.autoSize = TextFieldAutoSize.LEFT;
            §^"o§.multiline = true;
            §^"o§.wordWrap = true;
            §^"o§.text = descriptionTraits;
            §^"o§.y = §8$<§;
            §8$<§ += §^"o§.height;
         }
         else
         {
            §^"o§.text = "";
         }
         dateText = "";
         if(!this.§[%c§ && equip.isTemporalItem() && !§8"%§.§?!W§.inBattle)
         {
            expiredTimeMinutes = equip.§8!t§() * 60;
            if(Application.§5!>§.§^P§.§4$3§() || §8"%§.§8"!§.§ !g§())
            {
               expiredTime = Application.userProfile.§,%o§().§6# §(id);
               if(expiredTime > 0)
               {
                  expiredTimeMinutes = §0#2§.§`"r§(expiredTime);
               }
            }
            if(expiredTimeMinutes > 0)
            {
               dateText = §0$N§.EQUIP_DISAPPEAR + "\n" + §0#2§.§'!5§(expiredTimeMinutes);
            }
         }
         §`b§(dateText != "",dateText,"duration");
         if(itemsSetRecord)
         {
            if(itemsSetRecord.§'!y§())
            {
               races = itemsSetRecord.§;$F§();
               if(races.length == 1)
               {
                  raceName = Race.valueOf(races[0]).§]!D§().§7%z§();
                  raceText = §0%§.format(§0$N§.ONLY_FOR_RACE,{"race":raceName});
                  if(itemsSetRecord.isForRevived)
                  {
                     raceText += " " + §0$N§.IS_REVIVED;
                  }
               }
               else if(races.length > 1)
               {
                  racesList = [];
                  for each(raceId in races)
                  {
                     racesList.push(Race.valueOf(raceId).§]!D§().§7%z§());
                  }
                  rs = "\n" + racesList.map(function(param1:String, ... rest):String
                  {
                     return param1;
                  }).join(", ");
                  raceText = §0%§.format(§0$N§.ONLY_FOR_RACES,{"races":rs});
               }
               if(raceText)
               {
                  §`b§(true,raceText,"duration");
               }
            }
         }
         §8$Q§();
      }
      
      public function set §[!g§(param1:Boolean) : void
      {
         this.§[%c§ = param1;
      }
      
      public function get § "B§() : Boolean
      {
         return this.§=$x§;
      }
      
      public function set § "B§(param1:Boolean) : void
      {
         this.§=$x§ = param1;
      }
      
      public function set §0[§(param1:Boolean) : void
      {
         this.§>##§ = param1;
      }
   }
}

