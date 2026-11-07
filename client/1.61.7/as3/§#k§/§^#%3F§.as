package §#k§
{
   import §,"v§.§9%d§;
   import §0!§.§7`§;
   import §0!§.§8$Y§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §7!B§.§&"T§;
   import §>%S§.§^!V§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§"&H§;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §^#?§ extends §"&H§ implements §-#S§
   {
      
      private static var §;%Q§:§%%v§;
      
      private static var log:§&`§ = new §&`§(§^#?§);
      
      private static const §'%M§:String = "CMD";
      
      public static const §23§:String = "X-PRAGMATIX-CORP-SID";
      
      public static const §!!p§:String = "400";
      
      public static const §7C§:String = "401";
      
      private const §-%_§:uint = 2;
      
      private var sessionId:String = null;
      
      private var §=#e§:Timer;
      
      private var serializer:§<!h§ = §<!h§.getInstance();
      
      private var §=&E§:String;
      
      private var §?$?§:int;
      
      private var §["=§:String;
      
      private var header:§9%d§;
      
      private var §!%B§:ByteArray;
      
      private var §>"b§:uint = 0;
      
      private var §#%z§:Boolean = true;
      
      private var §2"`§:Object;
      
      private var §61§:int;
      
      private var connected:Boolean;
      
      public function §^#?§(param1:String, param2:int, param3:String, param4:Object, param5:int = 30000)
      {
         super();
         this.§=&E§ = param1;
         this.§["=§ = "/" + param3 + "/";
         this.§2"`§ = param4;
         this.§61§ = param5;
         this.§!%B§ = new ByteArray();
         this.§?$?§ = param2;
         this.connected = false;
         §;%Q§ = new §%%v§();
      }
      
      public function connect() : void
      {
         this.connected = true;
         this.§,"%§();
         dispatchEvent(new Event(Event.CONNECT));
      }
      
      public function close() : void
      {
         this.reset();
      }
      
      protected function closeHandler(param1:Event) : void
      {
         this.close();
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
      
      private function reset() : void
      {
         this.§#%]§();
         this.§?$?§ = 0;
         §;%Q§.destroy();
         this.§!%B§.length = 0;
         this.§>"b§ = 0;
         this.connected = false;
      }
      
      protected function §;%[§(param1:IOErrorEvent, param2:Object, param3:ByteArray, param4:uint) : void
      {
         if(param4 > 0)
         {
            param4--;
            log.error(param1.type + ": " + param1.toString() + ". Try to RESEND message",§'%M§);
            §1%"§.delay(this.§0!q§,this,1000,[param2,param3,param4]);
         }
         else
         {
            log.error(param1.type + ": " + param1.toString(),§'%M§);
            this.§4"W§();
         }
      }
      
      private function §?s§(param1:Event) : void
      {
         var data:ByteArray;
         var tail:ByteArray = null;
         var httpMsg:String = null;
         var commandData:ByteArray = null;
         var msg:Object = null;
         var event:Event = param1;
         if(!(event.target.data is ByteArray))
         {
            log.§[x§("Class:= " + getQualifiedClassName(event.target.data));
            return;
         }
         data = ByteArray(event.target.data);
         if(data.bytesAvailable > 0)
         {
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
                     try
                     {
                        this.header.§4i§(this.§!%B§);
                     }
                     catch(ex:Error)
                     {
                        log.error("Can\'t deserialize command header, position = " + §!%B§.position);
                        §!%B§.position = 0;
                        httpMsg = §!%B§.readUTFBytes(§!%B§.bytesAvailable);
                        log.error("UTF msg: " + httpMsg);
                        if(httpMsg.indexOf(§7C§) != -1)
                        {
                           closeHandler(new Event("DUMMY"));
                        }
                        else if(httpMsg.indexOf(§!!p§))
                        {
                           log.error("BAD_REQUEST " + httpMsg);
                        }
                        return;
                     }
                     this.§#%z§ = false;
                     log.§[x§("header readed, header.commandId=" + this.header.getCommandId(),§'%M§);
                  }
                  if(this.header != null && this.§!%B§.bytesAvailable >= this.header.§9"7§())
                  {
                     commandData = new ByteArray();
                     if(this.header.§9"7§() > 0)
                     {
                        this.§!%B§.readBytes(commandData,0,this.header.§9"7§());
                     }
                     this.§#%z§ = true;
                     msg = this.serializer.deserializeCommand(commandData,this.header);
                     if(msg != null)
                     {
                        log.§[x§("Command is deserialazed, msg: " + msg,§'%M§);
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
               log.error("Deserialize ERROR: " + ex,§'%M§);
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
         var _loc2_:ByteArray = new ByteArray();
         this.serializer.serializeCommand(param1,_loc2_);
         this.§0!q§(param1,_loc2_,this.§-%_§);
      }
      
      protected function §0!q§(param1:Object, param2:ByteArray, param3:uint) : void
      {
         var request:URLRequest;
         var header:URLRequestHeader;
         var loader:URLLoader;
         var errorHandler:Function;
         var sessionRH:URLRequestHeader = null;
         var cmd:Object = param1;
         var stream:ByteArray = param2;
         var resendCount:uint = param3;
         if(!this.§1",§())
         {
            log.§[x§("fail to send command [" + cmd + "]. No connection",§'%M§);
            this.§9$R§();
            return;
         }
         log.§[x§("try to send message [" + cmd + "] to server...",§'%M§);
         if(this.§=#e§ != null)
         {
            this.§=#e§.reset();
         }
         request = new URLRequest("http://" + this.§=&E§ + ":" + this.§?$?§ + this.§["=§);
         request.method = URLRequestMethod.POST;
         header = new URLRequestHeader("content-type","application/octet-stream");
         request.requestHeaders = [header];
         if(this.sessionId)
         {
            sessionRH = new URLRequestHeader(§23§,this.sessionId);
            request.requestHeaders.push(sessionRH);
         }
         request.data = stream;
         loader = new URLLoader();
         loader.dataFormat = URLLoaderDataFormat.BINARY;
         errorHandler = §1%"§.§]$<§(this.§;%[§,this,[cmd,stream,resendCount],true);
         §""n§.§>%J§(loader,Event.COMPLETE,this.§?s§,SecurityErrorEvent.SECURITY_ERROR,errorHandler,IOErrorEvent.IO_ERROR,errorHandler);
         try
         {
            loader.load(request);
         }
         catch(ex:Error)
         {
            log.error("error: " + ex.message);
         }
         if(this.§=#e§ != null)
         {
            this.§=#e§.start();
         }
      }
      
      private function §!%F§(param1:ByteArray) : String
      {
         var _loc2_:String = "";
         param1.position = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ += " " + param1.readUnsignedByte().toString(16);
         }
         return _loc2_;
      }
      
      public function addListener(param1:Class, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         addEventListener(getQualifiedClassName(param1),param2,param3,param4,param5);
      }
      
      public function removeListener(param1:Class, param2:Function) : void
      {
         removeEventListener(getQualifiedClassName(param1),param2);
      }
      
      public function §`$8§(param1:Class) : Boolean
      {
         return hasEventListener(getQualifiedClassName(param1));
      }
      
      protected function §4"W§() : void
      {
         log.§[x§("looks like connection is lost. show ConnectionClosed message",§'%M§);
         this.§9$R§();
      }
      
      protected function §9$R§() : void
      {
      }
      
      public function §1",§() : Boolean
      {
         return this.connected;
      }
      
      public function §&![§() : String
      {
         return this.§=&E§;
      }
      
      public function §7!7§() : int
      {
         return this.§?$?§;
      }
      
      public function §7$0§() : String
      {
         return this.sessionId;
      }
      
      public function §1$g§(param1:String) : void
      {
         this.sessionId = param1;
      }
   }
}

