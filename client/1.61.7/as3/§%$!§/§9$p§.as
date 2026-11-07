package §%$!§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §1#p§.§2=§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §?#g§.§&"P§;
   import §?#g§.§-!k§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §9$p§
   {
      
      public var hat:§^$E§;
      
      public var artifact:§^%%§;
      
      public var §%" §:§[!X§;
      
      public var raceRecord:§`!d§;
      
      public var skin:§&"P§;
      
      public var §8+§:§&$2§ = new §&$2§(0);
      
      public var §+#+§:§&$2§ = new §&$2§(0);
      
      public var §'$Q§:§&$2§ = new §&$2§(0);
      
      public var §3$L§:§&$2§ = new §&$2§(0);
      
      public var §>%v§:§&$2§ = new §&$2§(0);
      
      public var §>%Y§:§&$2§ = new §&$2§(0);
      
      private var record:UserProfile;
      
      public function §9$p§()
      {
         super();
      }
      
      public function §3!-§(param1:§^$E§) : void
      {
         var _loc2_:Boolean = §2=§.§9$M§(this.record);
         if(this.hat)
         {
            this.§6"Y§(this.hat.getBonusList(_loc2_));
         }
         this.hat = param1;
         if(param1)
         {
            this.§"§(param1.getBonusList(_loc2_));
         }
      }
      
      public function §7"p§(param1:§^%%§) : void
      {
         var _loc2_:Boolean = §2=§.§9$M§(this.record);
         if(this.artifact)
         {
            this.§6"Y§(this.artifact.getBonusList(_loc2_));
         }
         this.artifact = param1;
         if(param1)
         {
            this.§"§(param1.getBonusList(_loc2_));
         }
      }
      
      public function §^$D§(param1:§[!X§) : void
      {
         var _loc2_:Boolean = §2=§.§9$M§(this.record);
         if(this.§%" §)
         {
            this.§6"Y§(this.§%" §.getBonusList(_loc2_));
         }
         this.§%" § = param1;
         if(param1)
         {
            this.§"§(param1.getBonusList(_loc2_));
         }
      }
      
      public function §&#n§(param1:§`!d§) : void
      {
         if(this.raceRecord)
         {
            this.§6"Y§(this.raceRecord.getBonusList());
         }
         if(this.hat)
         {
            this.hat = §<$c§.§^&1§(this.hat.getId(),param1);
         }
         this.raceRecord = param1;
         this.§"§(param1.getBonusList());
      }
      
      private function §"§(param1:§]$q§) : void
      {
         this.change(param1,1);
      }
      
      private function §6"Y§(param1:§]$q§) : void
      {
         this.change(param1,-1);
      }
      
      private function change(param1:§]$q§, param2:int) : void
      {
         this.§3$L§.value += this.§'"S§(param1,Bonus.HP) * param2;
         var _loc3_:int = this.§'"S§(param1,Bonus.§,,§);
         if(_loc3_ > 0)
         {
            this.§3$L§.value += Math.round(§-q§.§8$G§(_loc3_,this.§8+§.value)) * param2;
         }
         this.§>%v§.value += this.§'"S§(param1,Bonus.ARMOR) * param2 + this.§'"S§(param1,Bonus.SQUAD_ARMOR) * param2;
         this.§>%Y§.value += this.§'"S§(param1,Bonus.ATTACK) * param2 + this.§'"S§(param1,Bonus.SQUAD_ATTACK) * param2;
      }
      
      private function §'"S§(param1:§]$q§, param2:Bonus) : int
      {
         var _loc4_:§@"I§ = null;
         var _loc5_:§-!k§ = null;
         var _loc6_:String = null;
         var _loc3_:Boolean = param1.getSourceType() == §]$q§.RACE;
         for each(_loc4_ in param1.§<%i§())
         {
            if(_loc4_.getType() == param2)
            {
               for each(_loc5_ in this.record.getRace().§+%t§())
               {
                  if(_loc3_ && Boolean(_loc5_.§<%i§()))
                  {
                     for each(_loc6_ in _loc5_.§<%i§())
                     {
                        if(_loc6_ == _loc4_.getType().§7%z§() && _loc5_.getLevel() > this.record.getLevel())
                        {
                           return 0;
                        }
                     }
                  }
               }
               return _loc4_.getValue();
            }
         }
         return 0;
      }
      
      public function §'c§(param1:UserProfile) : void
      {
         this.record = param1;
      }
   }
}

