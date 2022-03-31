ROOKI = ROOKI or {}

hook.Add("HUDPaint", "rooki_sam_activities", function()
    local scw, sch = ScrW(), ScrH()
    local y = false

    if (LocalPlayer():GetMoveType() == MOVETYPE_NOCLIP and LocalPlayer():HasPermission("can_noclip")) then
        local font = imgui.xFont("!Roboto@" .. (scw * 0.02))
        local nc = ROOKI:getFontSize(font, "Noclip")
        local ncw, nch = nc[1], nc[2]

        if (not y) then
            y = ((sch / 2) - nch / 2) - sch * 0.05
        else
            y = y + nch
        end

        local x = scw - (ncw + 15)
        ROOKI.DrawBG(x, y, ncw + 10, nch + 10)
        draw.SimpleText("Noclip", font, x + 5, y + 5, Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
        ROOKI.DrawEdges(x, y, ncw + 10, nch + 10, 15, 5, edgedata)
    end

    if (LocalPlayer():HasGodMode() and LocalPlayer():HasPermission("god")) then
        local font = imgui.xFont("!Roboto@" .. (scw * 0.025))
        local nc = ROOKI:getFontSize(font, "God")
        local ncw, nch = nc[1], nc[2]

        if (not y) then
            y = ((sch / 2) - nch / 2) - sch * 0.05
        else
            y = y + nch - sch * 0.1
        end

        local x = scw - (ncw + 15)
        ROOKI.DrawBG(x, y, ncw + 10, nch + 10)
        draw.SimpleText("God", font, x + 5, y + 5, Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
        ROOKI.DrawEdges(x, y, ncw + 10, nch + 10, 15, 5, edgedata)
    end

    if (LocalPlayer():sam_get_nwvar("cloaked") and LocalPlayer():HasPermission("cloak")) then
        local font = imgui.xFont("!Roboto@" .. (scw * 0.025))
        local nc = ROOKI:getFontSize(font, "Cloak")
        local ncw, nch = nc[1], nc[2]

        if (not y) then
            y = ((sch / 2) - nch / 2) - sch * 0.05
        else
            y = y + nch - sch * 0.1
        end

        local x = scw - (ncw + 15)
        ROOKI.DrawBG(x, y, ncw + 10, nch + 10)
        draw.SimpleText("Cloak", font, x + 5, y + 5, Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
        ROOKI.DrawEdges(x, y, ncw + 10, nch + 10, 15, 5, edgedata)
    end
end)