Config = {}
Config.Job = 'doj'
Config.CarManagment = true
Config.Hook = 'https://discord.com/api/webhooks/863096719109652480/NxPdRmKFt9O8rXeYBCeVf2QL9806xk7gilhrRa8_T6gJNgiwbXEBE2QrnV6kERf27LF2' ---Webhook do faktur z tabletu <--

Config.Zone = {
    {
        type = 'szafka',
		society = 'society_doj',
        szafka = 'doj',
        Pos = { x = 432123.59606933594, y = -999123.74169921875, z = 29.717458724976 }
    },
    {
        type = 'szafka',
		society = 'society_doj1',
        szafka = 'doj1',
        Pos = { x = 432.59606933594, y = -999.74169921875, z = 29.717458724976 }
    },
    {
        type = 'szafka',
        society = 'society_doj2',
        szafka = 'doj2',
        Pos =  { x = 439.77810668945, y = -1000.2987670898, z = 29.72251701355 }
    },
    {
        type = 'szafka',
        society = 'society_doj3',
        szafka = 'doj3',
        Pos =  { x = 446.154296875, y = -1000.075012207, z = 29.722036361694 }
    },
    {
        type = 'przebieralnia',
        Pos =  { x = 425.77642822266, y = -1001.0370483398, z = 29.709686279297 }
    },
    {
        type = 'garaz',
        Pos =  { x = 436.11953735352, y = -1008.3289794922, z = 26.865762710571 },
        Spawn = { x = 436.41244506836, y = -1015.7277832031, z = 27.750780105591, heading = 178.0}
    },
    {
        type = 'chowanie',
        Pos =  { x = 436.42456054688, y = -1015.7154541016, z = 27.933703994751 }
    },
    {
        type = 'garazhelikoptery',
        Pos =  { x = 462.35986328125, y = -982.49206542969, z = 42.691905975342 },
        Spawn = { x = 449.33639526367, y = -981.29595947266, z = 43.691661834717, heading = 95.0}
    },
    {
        type = 'chowaniehelek',
        Pos =  { x = 449.33639526367, y = -981.29595947266, z = 43.691661834717 }
    },
    {
        type = 'bossmenu',
        Pos =  { x = 448.9826965332, y = -1016.4627685547, z = 28.534526824951 }
    }
}

Config.Vehicles = {
	{
        model = 'POLICE',
        label = 'Victoria',
        limit = 1
    },
    {
        model = 'POLICE2',
        label = 'Auto Jakie?? Kurwa',
        limit = 2
    },
    {
        model = 'POLICEB',
        label = 'Motor',
        limit = 1
    }
}

Config.Helicopters = {
    {
        model = 'BUZZARD',
        label = 'Buzzard',
        limit = 1
    },
    {
        model = 'MAVERICK',
        label = 'Maverick',
        limit = 2
    }
}

Config.Ubrania = {
	[1] = { -- job grade
		['m'] = {
			{
				label = 'Ubranie Wojskowe',
				data = {
					sex = 0, --- sex 1 == female
					tshirt_1     = 60,
					tshirt_2     = 2,
					torso_1      = 67,
					torso_2      = 2,
					decals_1     = 0,
					decals_2     = 0,
					arms         = 84,
					pants_1      = 40,
					pants_2      = 2,
					shoes_1      = 20,
					shoes_2      = 0,
					mask_1       = 0,
					mask_2       = 0,
					bproof_1     = 0,
					bproof_2     = 0,
					chain_1      = 0,
					chain_2      = 0,
					helmet_1     = -1,
					helmet_2     = 0,
					glasses_1    = 0,
					glasses_2    = 0,
				}
			},
			{
				label = 'Ubranie Wojskowe 2',
				data = {
					sex = 0,
					tshirt_1     = 60,
					tshirt_2     = 2,
					torso_1      = 80,
					torso_2      = 2,
					decals_1     = 0,
					decals_2     = 0,
					arms         = 84,
					pants_1      = 40,
					pants_2      = 2,
					shoes_1      = 20,
					shoes_2      = 0,
					mask_1       = 0,
					mask_2       = 0,
					bproof_1     = 0,
					bproof_2     = 0,
					chain_1      = 0,
					chain_2      = 0,
					helmet_1     = -1,
					helmet_2     = 0,
					glasses_1    = 0,
					glasses_2    = 0,
				}
			},
		},
		['f']= {
			{
				label = 'Ubranie Wojskowe',
				data = {
					sex = 0,
					tshirt_1     = 60,
					tshirt_2     = 2,
					torso_1      = 67,
					torso_2      = 2,
					decals_1     = 0,
					decals_2     = 0,
					arms         = 84,
					pants_1      = 40,
					pants_2      = 2,
					shoes_1      = 20,
					shoes_2      = 0,
					mask_1       = 0,
					mask_2       = 0,
					bproof_1     = 0,
					bproof_2     = 0,
					chain_1      = 0,
					chain_2      = 0,
					helmet_1     = -1,
					helmet_2     = 0,
					glasses_1    = 0,
					glasses_2    = 0,
				}
			},
			{
				label = 'Ubranie Wojskowe 2',
				data = {
					sex = 0,
					tshirt_1     = 60,
					tshirt_2     = 2,
					torso_1      = 80,
					torso_2      = 2,
					decals_1     = 0,
					decals_2     = 0,
					arms         = 84,
					pants_1      = 40,
					pants_2      = 2,
					shoes_1      = 20,
					shoes_2      = 0,
					mask_1       = 0,
					mask_2       = 0,
					bproof_1     = 0,
					bproof_2     = 0,
					chain_1      = 0,
					chain_2      = 0,
					helmet_1     = -1,
					helmet_2     = 0,
					glasses_1    = 0,
					glasses_2    = 0,
				}
			},
		},
	},
	[2] = { -- job grade
		['m'] = {
			{
				label = 'Ubranie Wojskowe',
				data = {
					sex = 0,
					tshirt_1     = 60,
					tshirt_2     = 2,
					torso_1      = 67,
					torso_2      = 2,
					decals_1     = 0,
					decals_2     = 0,
					arms         = 84,
					pants_1      = 40,
					pants_2      = 2,
					shoes_1      = 20,
					shoes_2      = 0,
					mask_1       = 0,
					mask_2       = 0,
					bproof_1     = 0,
					bproof_2     = 0,
					chain_1      = 0,
					chain_2      = 0,
					helmet_1     = -1,
					helmet_2     = 0,
					glasses_1    = 0,
					glasses_2    = 0,
				}
			},
			{
				label = 'Ubranie Wojskowe 2',
				data = {
					sex = 0,
					tshirt_1     = 60,
					tshirt_2     = 2,
					torso_1      = 80,
					torso_2      = 2,
					decals_1     = 0,
					decals_2     = 0,
					arms         = 84,
					pants_1      = 40,
					pants_2      = 2,
					shoes_1      = 20,
					shoes_2      = 0,
					mask_1       = 0,
					mask_2       = 0,
					bproof_1     = 0,
					bproof_2     = 0,
					chain_1      = 0,
					chain_2      = 0,
					helmet_1     = -1,
					helmet_2     = 0,
					glasses_1    = 0,
					glasses_2    = 0,
				}
			},
		},
		['f']= {
			{
				label = 'Ubranie Wojskowe',
				data = {
					sex = 0,
					tshirt_1     = 60,
					tshirt_2     = 2,
					torso_1      = 67,
					torso_2      = 2,
					decals_1     = 0,
					decals_2     = 0,
					arms         = 84,
					pants_1      = 40,
					pants_2      = 2,
					shoes_1      = 20,
					shoes_2      = 0,
					mask_1       = 0,
					mask_2       = 0,
					bproof_1     = 0,
					bproof_2     = 0,
					chain_1      = 0,
					chain_2      = 0,
					helmet_1     = -1,
					helmet_2     = 0,
					glasses_1    = 0,
					glasses_2    = 0,
				}
			},
			{
				label = 'Ubranie Wojskowe 2',
				data = {
					sex = 0,
					tshirt_1     = 60,
					tshirt_2     = 2,
					torso_1      = 80,
					torso_2      = 2,
					decals_1     = 0,
					decals_2     = 0,
					arms         = 84,
					pants_1      = 40,
					pants_2      = 2,
					shoes_1      = 20,
					shoes_2      = 0,
					mask_1       = 0,
					mask_2       = 0,
					bproof_1     = 0,
					bproof_2     = 0,
					chain_1      = 0,
					chain_2      = 0,
					helmet_1     = -1,
					helmet_2     = 0,
					glasses_1    = 0,
					glasses_2    = 0,
				}
			},
		},
	},
    [3] = { -- job grade
    ['m'] = {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0, --- sex 1 == female
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 80,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
    },
    ['f']= {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
    },
},
    [4] = { -- job grade
    ['m'] = {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0, --- sex 1 == female
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
    },
    ['f']= {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
                }
            },
        },
    },
    [5] = { -- job grade
    ['m'] = {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0, --- sex 1 == female
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
    },
    ['f']= {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
                }
            },
        },
    },
    [6] = { -- job grade
    ['m'] = {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0, --- sex 1 == female
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
    },
    ['f']= {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
                }
            },
        },
    },
    [7] = { -- job grade
    ['m'] = {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0, --- sex 1 == female
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
    },
    ['f']= {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 67,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
                }
            },
        },
    },
    [8] = { -- job grade
    ['m'] = {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0, --- sex 1 == female
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 72,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 70,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
    },
    ['f']= {
        {
            label = 'Ubranie Wojskowe',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 52,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
            }
        },
        {
            label = 'Ubranie Wojskowe 2',
            data = {
                sex = 0,
                tshirt_1     = 60,
                tshirt_2     = 2,
                torso_1      = 13,
                torso_2      = 2,
                decals_1     = 0,
                decals_2     = 0,
                arms         = 84,
                pants_1      = 40,
                pants_2      = 2,
                shoes_1      = 20,
                shoes_2      = 0,
                mask_1       = 0,
                mask_2       = 0,
                bproof_1     = 0,
                bproof_2     = 0,
                chain_1      = 0,
                chain_2      = 0,
                helmet_1     = -1,
                helmet_2     = 0,
                glasses_1    = 0,
                glasses_2    = 0,
                    }
                },
            },
        },
    }
