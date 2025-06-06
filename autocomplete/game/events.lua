---@meta

---@class event
event = {}

---Registers an event handler for a specified event.
---You can bind a function to one of several built-in events.
---The handler may cancel some events by returning true.

---Called whenever a key is pressed or released  
---key: The key number, use util.keyToString to get the key string.  
---action: The action of the key press where:  
---0 = Released  
---1 = Pressed  
---You can cancel this event by returning true.  
---onEvent("KeyEvent", function(key, action)  
---  
---end)  

---Called whenever the mouse moves or is clicked.  
---button: The button where:  
---1 = Left Click  
---2 = Right Click  
---3 = Middle Click  
---4 = Mouse Scroll  
---action: The action of the button where:  
---1 = Down  
---2 = Release  
---3 = Scroll Up  
---4 = Scroll Down  
---You can cancel this event by returning true.  
---onEvent("MouseEvent", function(button, action)  
---  
---end)  

---Called every game tick when the client is in a world/server.  
---onEvent("TickEvent", function()  
---  
---end)  

---Render ImGui and FlarialGUI in this event.  
---Accessing player functions is NOT safe in this event.  
---onEvent("RenderEvent", function()  
---  
---end)  

---Use this event if you need a faster loop than TickEvent.  
---Rendering ImGui or FlarialGUI is NOT safe in this event.  
---Accessing player functions is safe in this event.  
---onEvent("SetupAndRenderEvent", function()  
---  
---end)  

---Called whenever the client receives a chat message.  
---message: The chat message.  
---name: The name of the sender.  
---type: The type of chat message, refer to https://prismarinejs.github.io/minecraft-data/?v=bedrock_1.21.60&d=protocol#packet_text  
---You can cancel this event by returning true.  
---onEvent("ChatReceiveEvent", function(message, name, type)  
---  
---end)  

---Called whenever the player sends a message.  
---message: The chat message.  
---name: The name of the sender.  
---type: The type of chat message, refer to https://prismarinejs.github.io/minecraft-data/?v=bedrock_1.21.60&d=protocol#packet_text  
---You can cancel this event by returning true.  
---onEvent("ChatSendEvent", function(message, name, type)  
---  
---end)  

---Called when the player changes dimension.  
---You can cancel this event by returning true.  
---onEvent("ChangeDimensionEvent", function()  
---  
---end)  

---Called when the player logs into the world.  
---You can cancel this event by returning true.  
---onEvent("LoginEvent", function()  
---  
---end)  

---Called when the client disconnects from the server.  
---You can cancel this event by returning true.  
---onEvent("DisconnectEvent", function()  
---  
---end)  

---Called when a container (e.g. chest) is opened.  
---You can cancel this event by returning true.  
---onEvent("ContainerOpenEvent", function()  
---  
---end)  

---Called when a container (e.g. chest) is closed.  
---You can cancel this event by returning true.  
---onEvent("ContainerCloseEvent", function()  
---  
---end)  

---Called when a title or subtitle is set on screen.  
---text: The content of the title.  
---type: The type of title, refer to https://prismarinejs.github.io/minecraft-data/?v=bedrock_1.21.60&d=protocol#packet_set_title
---You can cancel this event by returning true.  
---onEvent("SetTitleEvent", function(text, type)  
---  
---end)  

---Called when the player respawns.  
---You can cancel this event by returning true.  
---onEvent("RespawnEvent", function()  
---  
---end)  

---Called whenever the player attacks an entity or player.  
---onEvent("AttackEvent", function()  
---  
---end)  

---fov: Your current field of view.
---onEvent("FOVEvent", function(fov)  
---  
---end)  

---Called when the camera perspective changes.  
---perspective: The new perspective where:  
---0 = First Person  
---1 = Third Person Back  
---2 = Third Person Front  
---onEvent("PerspectiveEvent", function(perspective)  
---  
---end)  

---@param eventName string | '"KeyEvent", function(key, action)\n\t\nend' | '"MouseEvent", function(button, action)\n\t\nend' | '"TickEvent", function()\n\t\nend' | '"RenderEvent", function()\n\t\nend' | '"SetupAndRenderEvent", function()\n\t\nend' | '"ChatReceiveEvent", function(message, name, type)\n\t\nend' | '"ChatSendEvent", function(message, name, type)\n\t\nend' | '"ChangeDimensionEvent", function()\n\t\nend' | '"LoginEvent", function()\n\t\nend' | '"DisconnectEvent", function()\n\t\nend' | '"ContainerOpenEvent", function()\n\t\nend' | '"ContainerCloseEvent", function()\n\t\nend' | '"SetTitleEvent", function(text, type)\n\t\nend' | '"RespawnEvent", function()\n\t\nend' | '"AttackEvent", function()\n\t\nend' | '"FOVEvent", function(fov)\n\t\nend' | '"PerspectiveEvent", function(perspective)\n\t\nend' The name of the event to listen to.  
---@param handler function The function that will handle the event.  
---@return nil  
function onEvent(eventName, handler) end