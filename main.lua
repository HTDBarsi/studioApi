local start = '<roblox xmlns:xmime="http://www.w3.org/2005/05/xmlmime" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.roblox.com/roblox.xsd" version="4"><Item class="Workspace" referent="RBX6BA637DD8B9C44D385DF70A48988C0D5">'
local ending = "</Item></roblox>"
function createPart(name,color,size,position,orientation,anchored,cancollide,transparency)
    start = start .. '<Item class="Part" referent="RBX620AF4060A8D4746BB58908C5E089749"><Properties>\n'
    start = start ..'<string name="Name">' .. tostring(name) .. '</string>\n'
    start = start..'<bool name="Anchored">'..tostring(anchored)..'</bool>\n'
    start = start..'<CoordinateFrame name="CFrame"><X>'..tostring(position.X)..'</X><Y>'..tostring(position.Y)..'</Y><Z>'..tostring(position.Z)..'</Z></CoordinateFrame>\n'
    start = start..'<Vector3 name="size"><X>' ..tostring(size.X) .. '</X><Y>' .. tostring(size.Y) ..'</Y><Z>' .. tostring(size.Z) ..'</Z></Vector3>\n'
    start = start..'<Vector3 name="Orientation"><X>' ..tostring(orientation.X) .. '</X><Y>' ..tostring(orientation.Y) .. '</Y><Z>' ..tostring(orientation.Z) .. '</Z></Vector3>\n'
    start = start..'<Color3 name="Color"><R>' .. tostring(color.R) ..'</R><G>' .. tostring(color.G) .. '</G><B>' ..tostring(color.B) .. '</B></Color3>\n'
    start = start..'<bool name="CanCollide">' ..tostring(cancollide) ..'</bool>\n'
    start = start..'<float name="Transparency">' .. tostring(transparency) ..'</float>\n'
    start = start..'</Properties></Item>\n'
end
function createLocalScript(name,code)
    start = start .. '<Item class="LocalScript" referent="RBX620AF4060A8D4746BB58908C5E089749"><Properties>\n'
    start = start..'<string name="Name">' .. tostring(name) .. '</string>\n'
    start = start..'<ProtectedString name="Source"><![CDATA['..code..']]></ProtectedString>'
	start = start..'</Properties></Item>\n'
end
function createScript(name,code)
    start = start .. '<Item class="Script" referent="RBX620AF4060A8D4746BB58908C5E089749"><Properties>\n'
    start = start..'<string name="Name">' .. tostring(name) .. '</string>\n'
    start = start..'<ProtectedString name="Source"><![CDATA['..code..']]></ProtectedString>'
	start = start..'</Properties></Item>\n'
end
function createModuleScript(name,code)
    start = start .. '<Item class="ModuleScript" referent="RBX620AF4060A8D4746BB58908C5E089749"><Properties>\n'
    start = start..'<string name="Name">' .. tostring(name) .. '</string>\n'
    start = start..'<ProtectedString name="Source"><![CDATA['..code..']]></ProtectedString>'
	start = start..'</Properties></Item>\n'
end
function createRemoteEvent(name)
    start = start .. '<Item class="RemoteEvent" referent="RBX620AF4060A8D4746BB58908C5E089749"><Properties>\n'
    start = start..'<string name="Name">' .. tostring(name) .. '</string>\n'
    start = start..'</Properties></Item>'
end
function done(name)
start = start..ending
writefile(name..".rbxlx",start);
end