package §#k§
{
   import §"%H§.§1! §;
   import §+%o§.*;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §>%S§.§^!V§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.Socket;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§"&H§;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class § "&§ extends §"&H§ implements §-#S§
   {
      
      private static const §;$k§:uint = 2000;
      
      private static const §8&A§:uint = 5190;
      
      private static const §'%M§:String = "CMD";
      
      private static var log:§&`§ = new §&`§(§ "&§);
      
      private var §;%Q§:§%%v§;
      
      private var §=#e§:Timer;
      
      private var serializer:§<!h§ = §<!h§.getInstance();
      
      private var §@$2§:Socket;
      
      private var §=&E§:String;
      
      private var §7#D§:Array;
      
      private var §?$?§:int;
      
      private var §!%B§:ByteArray;
      
      private var §>"b§:uint = 0;
      
      private var §#%z§:Boolean = true;
      
      private var §2"`§:Object;
      
      private var §61§:int;
      
      private var header:§9%d§;
      
      private var §[#$§:Boolean;
      
      public function § "&§(param1:String, param2:Array, param3:Object, param4:int = 30000, param5:Boolean = false)
      {
         super();
         this.§=&E§ = param1;
         this.§2"`§ = param3;
         this.§61§ = param4;
         this.§[#$§ = param5;
         this.§7#D§ = param2;
         this.§!%B§ = new ByteArray();
         this.§;%Q§ = new §%%v§();
         this.§@$2§ = new Socket();
      }
      
      public function connect() : void
      {
         Security.loadPolicyFile("xmlsocket://" + this.§=&E§ + ":" + §8&A§);
         this.tryConnectTo(this.§7#D§);
      }
      
      protected function tryConnectTo(param1:Array) : void
      {
         this.§;%Q§ = this.§;%Q§ || new §%%v§();
         this.§@$2§ = this.§@$2§ || new Socket();
         this.§?$?§ = param1[0];
         var _loc2_:Function = §1%"§.§]$<§(this.§;;§,this,[param1],true);
         §""n§.§>%J§(this.§@$2§,Event.CONNECT,this.§>!e§,IOErrorEvent.IO_ERROR,_loc2_,SecurityErrorEvent.SECURITY_ERROR,_loc2_);
         log.info("Try connect to: " + this.§=&E§ + ":" + this.§?$?§,§'%M§);
         this.§@$2§.connect(this.§=&E§,this.§?$?§);
      }
      
      public function §,"%§() : void
      {
         if(this.§61§ > 0)
         {
            this.§=#e§ = new Timer(this.§61§);
            this.§=#e§.addEventListener(TimerEvent.TIMER,this.§3$4§);
            this.§=#e§.start();
         }
      }
      
      private function §3$4§(param1:Event) : void
      {
         this.send(this.§2"`§);
      }
      
      public function §#%]§() : void
      {
         if(this.§=#e§ != null)
         {
            this.§=#e§.stop();
            this.§=#e§.removeEventListener(TimerEvent.TIMER,this.§3$4§);
         }
         this.§=#e§ = null;
      }
      
      public function close() : void
      {
         if(this.§@$2§)
         {
            try
            {
               this.§@$2§.close();
            }
            catch(error:Error)
            {
               log.error("Socket close error: " + error.toString(),§'%M§);
            }
            this.reset();
         }
      }
      
      private function reset() : void
      {
         this.§#%]§();
         this.§?$?§ = 0;
         this.§;%Q§.destroy();
         this.§@$2§ = null;
         this.§!%B§.length = 0;
         this.§>"b§ = 0;
      }
      
      protected function closeHandler(param1:Event = null) : void
      {
         log.§3"l§("connection to " + this.§=&E§ + ":" + this.§?$?§ + " was closed by server",§'%M§);
         this.reset();
         if(param1)
         {
            super.dispatchEvent(param1);
         }
         if(this.§[#$§)
         {
            this.tryConnectTo(this.§7#D§);
         }
      }
      
      protected function §>!e§(param1:Event) : void
      {
         log.info("connected to " + this.§=&E§ + ":" + this.§?$?§,§'%M§);
         this.§;%Q§.addEventListener(this.§@$2§,Event.CLOSE,this.closeHandler);
         this.§;%Q§.addEventListener(this.§@$2§,ProgressEvent.SOCKET_DATA,this.§?s§);
         this.§;%Q§.addEventListener(this.§@$2§,IOErrorEvent.IO_ERROR,this.§>"Z§);
         this.§;%Q§.addEventListener(this.§@$2§,SecurityErrorEvent.SECURITY_ERROR,this.§0$q§);
         this.§,"%§();
         dispatchEvent(param1);
      }
      
      protected function §;;§(param1:Event, param2:Array) : void
      {
         var timer:Timer = null;
         var event:Event = param1;
         var ports:Array = param2;
         log.error("Connection error:" + event.toString(),§'%M§);
         if(ports.length)
         {
            timer = new Timer(§;$k§);
            timer.addEventListener(TimerEvent.TIMER,function():void
            {
               tryConnectTo(ports);
               timer.stop();
            });
            timer.start();
         }
         else
         {
            this.§?$?§ = 0;
            dispatchEvent(event);
         }
      }
      
      protected function §>"Z§(param1:IOErrorEvent) : void
      {
         log.error("Connection IoError: " + param1.toString(),§'%M§);
         dispatchEvent(param1);
         if(this.§[#$§)
         {
            this.reset();
            this.tryConnectTo(this.§7#D§);
         }
      }
      
      protected function §0$q§(param1:SecurityErrorEvent) : void
      {
         log.error("Connection SecurityError: " + param1.toString(),§'%M§);
         dispatchEvent(param1);
      }
      
      private function §?s§(param1:Event) : void
      {
         var data:ByteArray = null;
         var tail:ByteArray = null;
         var commandData:ByteArray = null;
         var msg:Object = null;
         var event:Event = param1;
         if(this.§@$2§.bytesAvailable > 0)
         {
            data = new ByteArray();
            this.§@$2§.readBytes(data);
            log.§[x§("reading data from socket, length: " + data.length + " needHeaderRead: " + this.§#%z§,§'%M§);
            if(this.§!%B§.bytesAvailable == 0)
            {
               this.§!%B§ = new ByteArray();
            }
            data.readBytes(this.§!%B§,this.§!%B§.length);
            tail = new ByteArray();
            try
            {
               do
               {
                  if(this.§#%z§)
                  {
                     this.header = new §^!V§();
                     this.header.§4i§(this.§!%B§);
                     this.§#%z§ = false;
                     log.§[x§("header readed, header.commandId=" + this.header.getCommandId() + ", header.length=" + this.header.§9"7§() + ", try to read body",§'%M§);
                  }
                  if(this.header != null && this.§!%B§.bytesAvailable >= this.header.§9"7§())
                  {
                     commandData = new ByteArray();
                     if(this.header.§9"7§() > 0)
                     {
                        this.§!%B§.readBytes(commandData,0,this.header.§9"7§());
                     }
                     log.§[x§("Command is readed fully, commandData.length: " + commandData.bytesAvailable,§'%M§);
                     this.§#%z§ = true;
                     log.§[x§("try to read next command...",§'%M§);
                     msg = this.serializer.deserializeCommand(commandData,this.header);
                     if(msg != null)
                     {
                        log.§[x§("====Command is deserialazed====",§'%M§);
                        log.§[x§("msg: " + msg,§'%M§);
                        dispatchEvent(new §9$v§(msg,getQualifiedClassName(msg)));
                     }
                     else
                     {
                        log.error("error while deserialize command, commandId: " + this.header.getCommandId(),§'%M§);
                     }
                  }
                  else
                  {
                     log.§[x§("waiting for other part of command, needByte:" + this.header.§9"7§() + ", available: " + this.§!%B§.bytesAvailable,§'%M§);
                     if(this.§!%B§.bytesAvailable > 0)
                     {
                        this.§!%B§.readBytes(tail);
                     }
                  }
               }
               while(this.§!%B§.bytesAvailable > 0);
            }
            catch(ex:Error)
            {
               log.error("Deserialize ERROR: " + ex.toString(),§'%M§);
               §#%z§ = true;
            }
            this.§!%B§ = new ByteArray();
            tail.readBytes(this.§!%B§);
         }
         else
         {
            log.error("deserialized data can\'t be empty",§'%M§);
         }
      }
      
      public function send(param1:Object) : void
      {
         log.§[x§("connection status:" + this.§1",§(),§'%M§);
         if(!this.§1",§())
         {
            this.§9$R§();
         }
         log.§[x§("====try to send message [" + param1 + "] to server...===",§'%M§);
         if(this.§=#e§ != null)
         {
            this.§=#e§.reset();
         }
         var _loc2_:ByteArray = new ByteArray();
         this.serializer.serializeCommand(param1,_loc2_);
         if(this.§1",§())
         {
            this.§@$2§.writeBytes(_loc2_);
            this.§@$2§.flush();
         }
         if(this.§=#e§ != null)
         {
            this.§=#e§.start();
         }
      }
      
      public function addListener(param1:Class, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         log.§[x§("addMessageListener for message: " + getQualifiedClassName(param1),§'%M§);
         addEventListener(getQualifiedClassName(param1),param2,param3,param4,param5);
      }
      
      public function removeListener(param1:Class, param2:Function) : void
      {
         log.§[x§("removeMessageListener for message: " + getQualifiedClassName(param1),§'%M§);
         removeEventListener(getQualifiedClassName(param1),param2);
      }
      
      public function §`$8§(param1:Class) : Boolean
      {
         return hasEventListener(getQualifiedClassName(param1));
      }
      
      protected function §9$R§() : void
      {
      }
      
      public function §1",§() : Boolean
      {
         return this.§@$2§ != null && this.§@$2§.connected;
      }
      
      public function §6#3§() : void
      {
         this.§[#$§ = false;
      }
      
      public function §+#^§() : Boolean
      {
         return this.§[#$§;
      }
      
      public function §&![§() : String
      {
         return this.§=&E§;
      }
      
      public function §7!7§() : int
      {
         return this.§?$?§;
      }
      
      public function §#S§() : Socket
      {
         return this.§@$2§;
      }
   }
}

