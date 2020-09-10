interface CDOTA_PanoramaScript_GameUI {
	UnitsKv: {
		[sName: string]: {
			Rarity?: string
			Cost?: number | string
			Ability1?: string
			Ability2?: string
			Ability3?: string
			Ability4?: string
			Ability5?: string
			Ability6?: string
			AbilityLayout?: number
			BoundsHullName?: string
			StatusHealth2?: number
			MagicalArmor?: number
			MagicalAttack3?: number
			PhysicalAttack2?: number
			StatusHealth?: number
			ManaRegenMagicalOutgoing?: number
			BGScene?: string
			PhysicalAttack5?: number
			Name?: string
			MagicalAttack5?: number
			PhysicalAttack?: number
			BaseClass?: string
			RingRadius?: number
			Tag_2?: string
			ModelScale?: number
			StatusManaRegen?: number
			UnitLabel?: string
			MovementCapabilities?: string
			PhysicalAttack4?: number
			PhysicalArmor?: number
			HasInventory?: number
			ManaRegenPhysicalOutgoing?: number
			StatusMana?: number
			PhysicalAttack3?: number
			CombatClassAttack?: string
			MagicalAttack2?: number
			CombatClassDefend?: string
			MovementTurnRate?: number
			HealthBarOffset?: number
			AttackAcquisitionRange?: number
			InventorySlots?: number
			StatusHealth3?: number
			BoundsHullRadius?: number
			MagicalAttack4?: number
			ManaRegenMagicalIncoming?: number
			StatusHealth5?: number
			Tag_1?: string
			AttackRate?: number
			MagicalAttack?: number
			ConsideredHero?: number
			AttackRange?: number
			AttackCapabilities?: string
			Model?: string
			StatusHealth4?: number
			ProjectileModel?: string
			ProjectileSpeed?: number
			StatusHealthRegen?: number
			HasAggressiveStance?: number
			AttackAnimationPoint?: number
			MovementSpeed?: number
			AttackDamageType?: string
			ManaRegenPhysicalIncoming?: number
			HitPlayerAttack?: number
			BountyGoldMin?: number
			BountyGoldMax?: number
			ArmorPhysical?: number
			StateResistance?: number
			MagicalResistance?: number
			SoundSet?: number
			MinimapIcon?: string
			VisionDaytimeRange?: number
			VisionNighttimeRange?: number
			Creature?: {
				AttachWearables?: {
					[id: number]: {
						ItemDef: number
					}
				},
			},
			AttackSpeedActivityModifiers?: {
				fast?: number,
				fastest?: number,
				faster?: number,
			},
			MovementSpeedActivityModifiers?: {
				walk?: number,
				run_haste?: number,
				run_fast?: number,
				run?: number,
				fog?: number,
			},
		}
	}
}
