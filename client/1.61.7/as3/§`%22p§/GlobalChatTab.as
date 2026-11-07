package §`"p§
{
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §+$=§.§6#A§;
   import §8$V§.§^#§;
   import §=!C§.§0#"§;
   import §=!C§.§74§;
   import §=!C§.§;#M§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class GlobalChatTab extends §20§
   {
      
      private static const §7Z§:uint = 50;
      
      private var §=#v§:§0#"§;
      
      public function GlobalChatTab()
      {
         §9%s§ = §7Z§;
         super(§6#A§.§!&6§(§+"'§.§?&I§));
      }
      
      override public function §2#d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc3_:String = null;
         _loc1_ = §8"%§.restrictions.§9#]§(§^#§.§8#R§);
         var _loc2_:Boolean = !_loc1_ && (§8"%§.§"#§.§]"s§ || §2$^§.isVipExist());
         §;=§.setVisible(_loc2_);
         §§push(§][§);
         §§push(§][§);
         var _loc4_:Boolean;
         chat.inputBack.visible = _loc4_ = _loc2_;
         §§pop().mouseEnabled = §§pop().visible = _loc4_;
         if(_loc1_)
         {
            _loc3_ = §0$N§.CHAT_RESTRICTED + " " + §8"%§.restrictions.§9$#§(§^#§.§8#R§);
         }
         else
         {
            _loc3_ = §8"%§.§"#§.§]"s§ || §2$^§.isVipExist() ? §0$N§.ENTER_MESSAGE : §0$N§.GLOBAL_CHAT_NOT_ALLOWED;
         }
         §7&5§.§>&<§(chat.title,_loc3_);
         this.§"&0§();
      }
      
      override protected function §'%H§() : void
      {
         var _loc4_:§;#M§ = null;
         var _loc5_:§0#"§ = null;
         var _loc1_:Vector.<ChatMessage> = §8"%§.§"#§.§9"x§();
         this.§`"A§(_loc1_);
         this.§ !M§(_loc1_);
         var _loc2_:int = §3"J§;
         var _loc3_:int = int(_loc1_.length);
         while(_loc2_ < _loc3_)
         {
            if(_loc1_[_loc2_].action == ChatMessage.POST_TO_CHAT)
            {
               _loc4_ = new §;#M§(_loc1_[_loc2_]);
               _loc4_.§<0§(this.§3#9§);
               messages.push(_loc4_);
            }
            else
            {
               _loc5_ = new §0#"§(_loc1_[_loc2_]);
               if(!_loc5_.isEmpty())
               {
                  if(_loc5_.§+"N§())
                  {
                     if(!this.§=#v§ || this.§=#v§.msg.logDate < _loc5_.msg.logDate)
                     {
                        this.§;!=§();
                     }
                     this.§=#v§ = _loc5_;
                     messages.unshift(_loc5_.clone());
                  }
                  else
                  {
                     messages.push(_loc5_);
                  }
               }
            }
            ++§3"J§;
            _loc2_++;
         }
      }
      
      private function § !M§(param1:Vector.<ChatMessage>) : void
      {
         var _loc3_:ChatMessage = null;
         var _loc4_:§74§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            if(_loc3_.action == ChatMessage.ADMIN_PINNED)
            {
               _loc2_++;
            }
         }
         if(_loc2_ <= 1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.action == ChatMessage.ADMIN_PINNED)
            {
               for each(_loc4_ in messages)
               {
                  _loc5_ = messages.indexOf(_loc4_);
                  if(_loc5_ > -1 && _loc3_.logDate > _loc4_.msg.logDate)
                  {
                     messages.splice(_loc5_,1);
                     _loc4_.getContainer().parent.removeChild(_loc4_.getContainer());
                     break;
                  }
               }
            }
         }
      }
      
      private function §;!=§() : void
      {
         if(!this.§=#v§)
         {
            return;
         }
         this.§=#v§.§<"b§ = true;
         if(this.§=#v§.parent)
         {
            removeChild(this.§=#v§);
         }
         this.§=#v§ = null;
      }
      
      private function §`"A§(param1:Vector.<ChatMessage>) : void
      {
         var _loc2_:ChatMessage = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§74§ = null;
         var _loc7_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(_loc2_.action == ChatMessage.DELETED_MESSAGE && !_loc2_.isDeleted)
            {
               _loc3_ = _loc2_.params.split(",");
               _loc4_ = int(_loc3_[0]);
               _loc5_ = int(_loc3_[1]);
               for each(_loc6_ in messages)
               {
                  if(_loc6_.msg.id == _loc4_)
                  {
                     _loc7_ = messages.indexOf(_loc6_);
                     if(_loc7_ > -1)
                     {
                        messages.splice(_loc7_,1);
                        _loc2_.isDeleted = true;
                        _loc6_.getContainer().parent.removeChild(_loc6_.getContainer());
                        --§3"J§;
                        break;
                     }
                  }
               }
            }
         }
      }
      
      private function §3#9§(param1:ChatMessage) : void
      {
         if(§][§.text == "")
         {
            §][§.text = "@" + §<$&§.§1#a§(param1.profileName,§@C§.§+#d§) + ": ";
            Application.instance.stage.focus = §][§;
            §][§.setSelection(§][§.text.length,§][§.text.length);
         }
      }
      
      override protected function §!"T§() : void
      {
         super.§!"T§();
         this.§2"=§();
      }
      
      private function §2"=§() : void
      {
         if(this.§=#v§)
         {
            if(!this.§=#v§.parent)
            {
               addChild(this.§=#v§);
               this.§=#v§.getContainer().x = 7;
               this.§=#v§.getContainer().y = §'$a§("chat.display").y;
            }
         }
      }
      
      override public function §"&0§() : void
      {
         super.§"&0§();
      }
      
      override protected function §>%+§() : Boolean
      {
         return true;
      }
      
      override protected function §,U§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         _loc2_ = §8"%§.restrictions.§9#]§(§^#§.§8#R§);
         var _loc3_:Boolean = !_loc2_ && (§8"%§.§"#§.§]"s§ || §2$^§.isVipExist());
         if(!_loc3_)
         {
            §,#W§.§'!+§(§0$N§.TITLE_ERROR,§0$N§.GLOBAL_CHAT_NOT_ALLOWED,§,#W§.§6!m§).show();
            return;
         }
         if(!§8"%§.§"#§.§%!c§ && !§8"%§.§?!W§.inBattle)
         {
            §8"%§.§"#§.§%&7§();
            return;
         }
         if(§8"%§.§"#§.§%!c§)
         {
            super.§,U§(param1);
            if(§][§.text != "")
            {
               §8"%§.§"#§.postMessage(§][§.text);
               §][§.text = "";
            }
         }
      }
   }
}

