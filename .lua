getgenv().unitequip = { "" }
getgenv().data = {
    ["Auto Buy Limit"] = false,
    ["Amount Limit Potion"] = 100,

}

repeat wait() until game:IsLoaded() and game.ReplicatedStorage and game.ReplicatedStorage:FindFirstChild("MultiboxFramework")
repeat wait() until require(game:GetService("ReplicatedStorage").MultiboxFramework).Loaded
local plr = game.Players.LocalPlayer

local save = require(game:GetService("ReplicatedStorage"):WaitForChild("MultiboxFramework"))
local data = save.Inventory
local l_Inventory_0 = save.Inventory
local l_FrameworkGui_0 = save.FrameworkGui

getgenv().unitequip = { "" }
getgenv().data = {
    ["Auto Buy Limit"] = false,
    ["Amount Limit Potion"] = 100,
}

repeat wait() until game:IsLoaded() and game.ReplicatedStorage and game.ReplicatedStorage:FindFirstChild("MultiboxFramework")
repeat wait() until require(game:GetService("ReplicatedStorage").MultiboxFramework).Loaded

local plr = game.Players.LocalPlayer
local save = require(game:GetService("ReplicatedStorage"):WaitForChild("MultiboxFramework"))
local data = save.Inventory
local l_Inventory_0 = save.Inventory
local l_FrameworkGui_0 = save.FrameworkGui

local function moveRandomly()
    local range = 50 -- Phạm vi di chuyển ngẫu nhiên (điều chỉnh nếu cần)
    local x = plr.Character.HumanoidRootPart.Position.X + math.random(-range, range)
    local z = plr.Character.HumanoidRootPart.Position.Z + math.random(-range, range)
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(x, plr.Character.HumanoidRootPart.Position.Y, z)
end

spawn(function()
    while wait() do
        if getgenv().data["Auto Buy Limit"] then
            if getgenv().data["Amount Limit Potion"] > 0 then
                if game:GetService("Players").LocalPlayer.leaderstats.Gems.Value < 750 then
                    local args = {
                        [1] = {
                            [1] = {
                                [1] = game:GetService("ReplicatedStorage").IdentifiersContainer.RE_b9c3ae5aa7d736a2953c6d3d6e2569f97cfc437bfe82296bc47fe7b0a712d94c.Value,
                                [2] = "2xCandyCaneBoost",
                                [3] = "Purchase1"
                            }
                        }
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("DataRemote")
                        :FireServer(unpack(args))
                    getgenv().data["Amount Limit Potion"] = getgenv().data["Amount Limit Potion"] - 1
                else
                    local args = {
                        [1] = {
                            [1] = {
                                [1] = game:GetService("ReplicatedStorage").IdentifiersContainer.RE_b9c3ae5aa7d736a2953c6d3d6e2569f97cfc437bfe82296bc47fe7b0a712d94c.Value,
                                [2] = "2xCandyCaneBoost",
                                [3] = "Purchase10"
                            }
                        }
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("DataRemote")
                        :FireServer(unpack(args))
                    getgenv().data["Amount Limit Potion"] = getgenv().data["Amount Limit Potion"] - 10
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if game:GetService("Players").LocalPlayer.PlayerGui.Lobby.UpdateLog.Visible then
            local GuiService = game:GetService('GuiService')
            local VirtualInputManager = game:GetService('VirtualInputManager')
            GuiService.SelectedObject = game:GetService("Players").LocalPlayer.PlayerGui.Lobby.UpdateLog.LogHolder.Frame.CloseButton
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
            task.wait(0.05)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
            task.wait(10)
        end
    end
end)

while wait(5) do
    if game:GetService("Players").LocalPlayer.PlayerGui.Lobby.PostOffice.Visible == false then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-460.2208557128906, 243.8795623779297, -68.29618835449219)
        wait(5)
        moveRandomly()
        wait(5)
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Lobby.PostOffice.Visible == true then
        for i, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Lobby.PostOffice.Menus.ReceivePackages.ScrollingFrame:GetChildren() do
            if v and v.ClassName == "Frame" then
                print(v.Package.From.Text)
                wait(1)
                local args = {
                    [1] = {
                        [1] = {
                            [1] = game:GetService("ReplicatedStorage").IdentifiersContainer.RF_59fb8da4c771fdd9e7348c3e113b4939ec60069b536a2ff0e2dd4f9e857a6611_S.Value,
                            [2] = "HonglamxWasHere",
                            [3] = v.Name
                        }
                    }
                }

                game:GetService("ReplicatedStorage").NetworkingContainer.DataRemote:FireServer(unpack(args))
            end
        end
    end
end


spawn(function()
    while wait(5) do
        if getgenv().data["Auto Buy Limit"] then
            if getgenv().data["Amount Limit Potion"] > 0 then
                if game:GetService("Players").LocalPlayer.leaderstats.Gems.Value < 750 then
                    local args = {
                        [1] = {
                            [1] = {
                                [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                                    .RE_b9c3ae5aa7d736a2953c6d3d6e2569f97cfc437bfe82296bc47fe7b0a712d94c.Value,
                                [2] = "2xCandyCaneBoost",
                                [3] = "Purchase1"
                            }
                        }
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("DataRemote")
                        :FireServer(
                            unpack(
                                args))
                    getgenv().data["Amount Limit Potion"] = getgenv().data["Amount Limit Potion"] - 1
                    local args = {
                        [1] = {
                            [1] = {
                                [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                                    .RE_391aead9e69a2515ad15d39d4041b29860df1c6d5abe42979f4dbf0b086bec80.Value,
                                [2] = "2xCandyCaneBoost"
                            }
                        }
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("DataRemote")
                        :FireServer(
                            unpack(
                                args))
                else
                    local args = {
                        [1] = {
                            [1] = {
                                [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                                    .RE_b9c3ae5aa7d736a2953c6d3d6e2569f97cfc437bfe82296bc47fe7b0a712d94c.Value,
                                [2] = "2xCandyCaneBoost",
                                [3] = "Purchase10"
                            }
                        }
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("DataRemote")
                        :FireServer(
                            unpack(
                                args))
                    getgenv().data["Amount Limit Potion"] = getgenv().data["Amount Limit Potion"] - 10
                    for i1 = 1, 10 do
                        local args = {
                            [1] = {
                                [1] = {
                                    [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                                        .RE_391aead9e69a2515ad15d39d4041b29860df1c6d5abe42979f4dbf0b086bec80.Value,
                                    [2] = "2xCandyCaneBoost"
                                }
                            }
                        }

                        game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild(
                            "DataRemote")
                            :FireServer(
                                unpack(
                                    args))
                    end
                end
            end
        else
            if game:GetService("Players").LocalPlayer.leaderstats.Gems.Value < 750 then
                local args = {
                    [1] = {
                        [1] = {
                            [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                                .RE_b9c3ae5aa7d736a2953c6d3d6e2569f97cfc437bfe82296bc47fe7b0a712d94c.Value,
                            [2] = "2xCandyCaneBoost",
                            [3] = "Purchase1"
                        }
                    }
                }

                game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("Dataemote")
                    :FireServer(
                        unpack(
                            args))
                local args = {
                    [1] = {
                        [1] = {
                            [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                                .RE_391aead9e69a2515ad15d39d4041b29860df1c6d5abe42979f4dbf0b086bec80.Value,
                            [2] = "2xCandyCaneBoost"
                        }
                    }
                }

                game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("DataRemote")
                    :FireServer(
                        unpack(
                            args))
            else
                local args = {
                    [1] = {
                        [1] = {
                            [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                                .RE_b9c3ae5aa7d736a2953c6d3d6e2569f97cfc437bfe82296bc47fe7b0a712d94c.Value,
                            [2] = "2xCandyCaneBoost",
                            [3] = "Purchase10"
                        }
                    }
                }

                game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("DataRemote")
                    :FireServer(
                        unpack(
                            args))
                for i1 = 1, 10 do
                    local args = {
                        [1] = {
                            [1] = {
                                [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                                    .RE_391aead9e69a2515ad15d39d4041b29860df1c6d5abe42979f4dbf0b086bec80.Value,
                                [2] = "2xCandyCaneBoost"
                            }
                        }
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("DataRemote")
                        :FireServer(
                            unpack(
                                args))
                end
            end
        end
    end
end)
while wait() do
    if game:GetService("Players").LocalPlayer.PlayerGui.Lobby.PostOffice.Visible == false then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-460.2208557128906, 243.8795623779297, -68.29618835449219)
        wait(10)
    end
    if game:GetService("Players").LocalPlayer.PlayerGui.Lobby.PostOffice.Visible == true then
        for i, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Lobby.PostOffice.Menus.ReceivePackages.ScrollingFrame:GetChildren() do
            if v and v.ClassName == "Frame" then
                print(v.Package.From.Text)
                wait(1)
                local args = {
                    [1] = {
                        [1] = {
                            [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                                .RF_59fb8da4c771fdd9e7348c3e113b4939ec60069b536a2ff0e2dd4f9e857a6611_S.Value,
                            [2] = "HonglamxWasHere",
                            [3] = v.Name
                        }
                    }
                }

                game:GetService("ReplicatedStorage").NetworkingContainer.DataRemote:FireServer(unpack(args))
            end
        end
    end
    local args = {
        [1] = {
            [1] = {
                [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                    .RE_1edda84065d0e3995be0bad774e389c1c947efd6e8b9ffe02bf915e2bff72494.Value
            }
        }
    }

    game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("DataRemote"):FireServer(
        unpack(
            args))

    local a = require(game:GetService("ReplicatedStorage").MultiboxFramework).Inventory.GetAllCopies({ "Troops", "Crates" })

local GuiService = game:GetService('GuiService')
local CoreGui = game:GetService('StarterGui')
local VirtualInputManager = game:GetService('VirtualInputManager')
spawn(function()
    while wait() do
        if game:GetService("Players").LocalPlayer.PlayerGui.Lobby.UpdateLog.Visible then
            GuiService.SelectedObject = game:GetService("Players").LocalPlayer.PlayerGui.Lobby.UpdateLog.LogHolder.Frame
                .CloseButton
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
            task.wait(0.05)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
            task.wait(10)
        end
    end
end)

    for i, v in pairs(a) do
        local v60 = l_Inventory_0.GetItemConfig(v[1], v[2]);
        if table.find(getgenv().unitequip, v60.DisplayName) then
            local args = {
                [1] = {
                    [1] = {
                        [1] = game:GetService("ReplicatedStorage").IdentifiersContainer
                            .RE_3becfe855dbdfda9b2d7daeadbeaf7b7247743142c5b392cc7153259ef97cb50.Value,
                        [2] = v[3]
                    }
                }
            }

            game:GetService("ReplicatedStorage"):WaitForChild("NetworkingContainer"):WaitForChild("DataRemote")
                :FireServer(
                    unpack(args))
        end
    end
end
