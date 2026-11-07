package §4%_§
{
   import § m§.§2&G§;
   import §!!!§.§7&%§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"% §.LevelUpDialog;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §##y§.CollisionEvent;
   import §#%!§.*;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §1#0§.§;4§;
   import §1#p§.§"Z§;
   import §2"L§.*;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §5!,§.§]"G§;
   import §7!B§.§1"?§;
   import §7"Q§.*;
   import §9%W§.§`"y§;
   import §;"9§.*;
   import §<!W§.§7!L§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=!p§.§1%?§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[$<§.§[!$§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.plugins.*;
   import config.§28§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import ru.inspirit.net.*;
   import ru.inspirit.net.events.MultipartURLLoaderEvent;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.AddGladiatorTeamMember;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ZombieGrave extends §1"?§
   {
      
      public static const §=!-§:§&$2§ = new §&$2§(3);
      
      private static const §2b§:§&$2§ = new §&$2§(20);
      
      private static const §0!3§:§&$2§ = new §&$2§(35);
      
      private static const §+$'§:§&$2§ = new §&$2§(22);
      
      private static const §0!2§:§&$2§ = new §&$2§(95);
      
      private static const §]&%§:ColorTransform = new ColorTransform(1,1,1,1,-50,-50,-50,0);
      
      private var name:String;
      
      private var level:uint;
      
      private var attack:uint;
      
      private var armor:uint;
      
      private var hp:uint;
      
      private var skin:int;
      
      private var squad:§"Z§;
      
      private var §"%,§:§!#H§;
      
      private var aiArsenal:§,%8§;
      
      private var §^!i§:UserProfile;
      
      private var hpMultiplier:Number;
      
      private var zombieContainer:MovieClip;
      
      private var §`!?§:MovieClip;
      
      private var §9%m§:§[!$§;
      
      private var §>"[§:Function;
      
      private var §!X§:Function;
      
      private var §3#L§:Boolean;
      
      private var §"! §:Boolean;
      
      private var §>#I§:Boolean;
      
      public function ZombieGrave(param1:String, param2:int, param3:int, param4:§+%]§, param5:String, param6:uint, param7:§"Z§, param8:§,%8§ = null, param9:Number = 0, param10:int = 0, param11:int = 0, param12:int = 0, param13:Boolean = false)
      {
         var pref:String;
         var clipName:String = param1;
         var x:int = param2;
         var y:int = param3;
         var unit:§+%]§ = param4;
         var name:String = param5;
         var level:uint = param6;
         var squad:§"Z§ = param7;
         var aiArsenal:§,%8§ = param8;
         var hpMultiplier:Number = param9;
         var skin:int = param10;
         var attack:int = param11;
         var armor:int = param12;
         var attachTrail:Boolean = param13;
         super(clipName,x,y,unit);
         this.name = name;
         this.level = level;
         this.squad = squad;
         this.aiArsenal = aiArsenal;
         this.hpMultiplier = hpMultiplier || §=!-§.value;
         this.hp = this.hpMultiplier * level;
         this.attack = uint(attack) || uint(2 * level);
         this.armor = armor;
         this.skin = skin;
         this.zombieContainer = MovieClip(clip.getChildByName("zombieContainer"));
         pref = skin > 0 ? §28§.§[%;§(skin) : "";
         this.§`!?§ = §6#A§.§!&6§(pref + §+"'§.§2#A§);
         this.zombieContainer.addChild(this.§`!?§);
         clip.transform.colorTransform = §]&%§;
         this.§"%,§ = §8$a§.§&!#§(Application.scene,§0%v§.EOT,this.§,!l§);
         if(attachTrail)
         {
            this.§9%m§ = §1"-§.§;%k§(this,§;n§.§7q§,10);
            §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:Event):void
            {
               if(§9%m§)
               {
                  §9%m§.remove();
               }
               §9%m§ = null;
            });
         }
      }
      
      private static function §4&?§(param1:int, param2:Boolean = false) : Boolean
      {
         return param1 < Application.scene.height - Application.scene.§#%0§() && (§8"%§.§?!W§.§4"m§.§6"M§().length > 0 || param2);
      }
      
      public function §,!l§(param1:Event) : void
      {
         this.spawnZombie();
         if(this.§>#I§)
         {
            this.§"%,§ = §8$a§.§&!#§(Application.scene,§0%v§.EOT,this.§,!l§);
         }
      }
      
      public function spawnZombie(param1:Boolean = false) : void
      {
         var zy:int = 0;
         var ignoreAlive:Boolean = param1;
         if(disposed || this.§>#I§)
         {
            return;
         }
         zy = this.§%$'§();
         if(§4&?§(zy,ignoreAlive) && (this.squad.§'"H§() > 0 || ignoreAlive))
         {
            physicModel.keepUnstable = true;
            if(!§>#9§.unit(x,zy,true))
            {
               §'"$§.§]#I§(null,x,zy,null,§2b§.value,§0!3§.value,§+$'§.value,false,true);
               this.§`!?§.play();
               §§push(§8$a§);
               §§push(§0!2§.value);
               with({})
               {
                  
                  var _temp_4:* = function():void
                  {
                     var _loc1_:§+%]§ = null;
                     if(!disposed)
                     {
                        zy = §%$'§();
                        if(§4&?§(zy,ignoreAlive))
                        {
                           §"! § = true;
                           §-#M§.§-t§(getOwner(),x,zy,§0!2§.value * 2);
                           if(!§^!i§)
                           {
                              §^!i§ = UserProfile.§'#3§(name,level,Race.§"$H§,hp,armor,attack,0,0,skin);
                           }
                           if(§>"[§ != null)
                           {
                              §>"[§(§^!i§);
                           }
                           _loc1_ = Race.create(§^!i§,x,zy);
                           _loc1_.§;!s§();
                           _loc1_.§=%P§();
                           if(Boolean(getOwner()) && !getOwner().disposed)
                           {
                              _loc1_.turn(getOwner().direction);
                           }
                           else
                           {
                              §-#M§.§0"g§(_loc1_);
                           }
                           if(aiArsenal)
                           {
                              _loc1_.aiArsenal = aiArsenal;
                           }
                           squad.addUnit(_loc1_);
                           if(§3#L§ && !squad.isAi())
                           {
                              _loc1_.buffs.addValue(new §]"G§());
                              §]"G§(_loc1_.buffs.getBuff(§]"G§.NAME)).setCanUseOnTurn();
                           }
                           if(§!X§ != null)
                           {
                              §!X§(_loc1_);
                           }
                        }
                        disposed = true;
                     }
                  };
                  var _temp_5:* = onWaitAndDoSpawnZombie = function():void
                  {
                     var _loc1_:§+%]§ = null;
                     if(!disposed)
                     {
                        zy = §%$'§();
                        if(§4&?§(zy,ignoreAlive))
                        {
                           §"! § = true;
                           §-#M§.§-t§(getOwner(),x,zy,§0!2§.value * 2);
                           if(!§^!i§)
                           {
                              §^!i§ = UserProfile.§'#3§(name,level,Race.§"$H§,hp,armor,attack,0,0,skin);
                           }
                           if(§>"[§ != null)
                           {
                              §>"[§(§^!i§);
                           }
                           _loc1_ = Race.create(§^!i§,x,zy);
                           _loc1_.§;!s§();
                           _loc1_.§=%P§();
                           if(Boolean(getOwner()) && !getOwner().disposed)
                           {
                              _loc1_.turn(getOwner().direction);
                           }
                           else
                           {
                              §-#M§.§0"g§(_loc1_);
                           }
                           if(aiArsenal)
                           {
                              _loc1_.aiArsenal = aiArsenal;
                           }
                           squad.addUnit(_loc1_);
                           if(§3#L§ && !squad.isAi())
                           {
                              _loc1_.buffs.addValue(new §]"G§());
                              §]"G§(_loc1_.buffs.getBuff(§]"G§.NAME)).setCanUseOnTurn();
                           }
                           if(§!X§ != null)
                           {
                              §!X§(_loc1_);
                           }
                        }
                        disposed = true;
                     }
                  };
               }
               §§pop().§%!E§(§§pop(),_temp_5);
            }
            else
            {
               disposed = true;
            }
         }
         else
         {
            physicModel.keepUnstable = false;
            if(ignoreAlive)
            {
               disposed = true;
            }
         }
      }
      
      public function §%$'§() : int
      {
         return y - §<H§.§-#C§;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(this.§"%,§.§&#4§())
         {
            this.§"%,§.stop();
         }
         this.§"%,§ = null;
      }
      
      public function §'#b§(param1:UserProfile) : void
      {
         this.§^!i§ = param1;
      }
      
      public function §1$&§() : void
      {
         this.§3#L§ = true;
      }
      
      public function set §7##§(param1:Function) : void
      {
         this.§!X§ = param1;
      }
      
      public function set §?&@§(param1:Function) : void
      {
         this.§>"[§ = param1;
      }
      
      public function get spawnSuccess() : Boolean
      {
         return this.§"! §;
      }
      
      public function get §3!v§() : Boolean
      {
         return this.§>#I§;
      }
      
      public function set §3!v§(param1:Boolean) : void
      {
         this.§>#I§ = param1;
      }
   }
}

