return {
    requiredPermission = 'admin',       -- Required ace permission to use the menu
    commandName = 'density',            -- Command to open the menu
    defaultValues = {                   -- Default density values
        ['parked'] = 0.8,
        ['vehicle'] = 0.8,
        ['peds'] = 0.8,
        ['scenario'] = 0.8,
        ['multiplier'] = 0.8
    },

    -- Credit: https://github.com/Qbox-project/qbx_smallresources
    blacklisted = {                                 -- Add blacklisted vehicle and ped models
        enableBlacklist = true,                     -- Enable/disable blacklisting. qb/qbx-smallresources already has this
        models = {
            [`SHAMAL`] = true,
            [`LUXOR`] = true,
            [`LUXOR2`] = true,
            [`JET`] = true,
            [`LAZER`] = true,
            [`BUZZARD`] = true,
            [`BUZZARD2`] = true,
            [`ANNIHILATOR`] = true,
            [`SAVAGE`] = true,
            [`TITAN`] = true,
            [`RHINO`] = true,
            [`FIRETRUK`] = true,
            [`MULE`] = true,
            [`MAVERICK`] = true,
            [`BLIMP`] = true,
            [`AIRTUG`] = true,
            [`CAMPER`] = true,
            [`HYDRA`] = true,
            [`OPPRESSOR`] = true,
            [`technical3`] = true,
            [`insurgent3`] = true,
            [`apc`] = true,
            [`tampa3`] = true,
            [`trailersmall2`] = true,
            [`halftrack`] = true,
            [`hunter`] = true,
            [`vigilante`] = true,
            [`akula`] = true,
            [`barrage`] = true,
            [`khanjali`] = true,
            [`caracara`] = true,
            [`blimp3`] = true,
            [`menacer`] = true,
            [`oppressor2`] = true,
            [`scramjet`] = true,
            [`strikeforce`] = true,
            [`cerberus`] = true,
            [`cerberus2`] = true,
            [`cerberus3`] = true,
            [`scarab`] = true,
            [`scarab2`] = true,
            [`scarab3`] = true,
            [`rrocket`] = true,
            [`ruiner2`] = true,
            [`deluxo`] = true,

            [`s_m_y_ranger_01`] = true,
            [`s_m_y_sheriff_01`] = true,
            [`s_m_y_cop_01`] = true,
            [`s_f_y_sheriff_01`] = true,
            [`s_f_y_cop_01`] = true,
            [`s_m_y_hwaycop_01`] = true,
        }
    }
}