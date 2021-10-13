local pack = script.Parent
local function load(modules)
    local f = Instance.new('Folder')
    f.Name = 'Modules'
    f.Parent = pack
    for idx, mod in pairs(modules) do
      pack:WaitForChild(mod).Parent = f
    end
end
local function req(module)
    return require(pack:WaitForChild('Modules'):WaitForChild(module))
end
load({"test1"})
pack:WaitForChild('Modules')
local Services = req('Services')
print(Services)
