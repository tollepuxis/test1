local pack = script.Parent
local function load(modules)
    local f = Instance.new('Folder')
    f.Name = 'Modules'
    f.Parent = pack
    for idx, mod in pairs(modules) do
      pack:WaitForChild(mod).Parent = f
    end
end
load({"test1"})
pack:WaitForChild('Modules')
print(require(pack.Modules.test1))
