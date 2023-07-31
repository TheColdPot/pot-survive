scoreboard objectives add staff.rightClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add staff.useStick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add staff.oldUseStick dummy
scoreboard objectives add staff.lastUseStickTime dummy
scoreboard objectives add staff.useStickTime dummy
scoreboard objectives add staff.useStickTimeDiff dummy
scoreboard objectives add staff.pressFClick dummy
scoreboard objectives add staff.sneakTime minecraft.custom:sneak_time
scoreboard objectives add staff.oldSneakTime dummy
scoreboard objectives add staff.cancel minecraft.dropped:minecraft.warped_fungus_on_a_stick
scoreboard objectives add magic.tickPassed dummy


scoreboard objectives add staff.Key1 dummy "Key1 pressed for magic staff"
scoreboard objectives add staff.Key2 dummy "Key2 pressed for magic staff"
scoreboard objectives add staff.Key3 dummy "Key3 pressed for magic staff"

# R, S & F
scoreboard objectives add staff.pattern.rrr dummy "Pattern rrr for magic staff"
scoreboard objectives add staff.pattern.rrs dummy "Pattern rrs for magic staff"
scoreboard objectives add staff.pattern.rrf dummy "Pattern rrf for magic staff"
scoreboard objectives add staff.pattern.rsr dummy "Pattern rsr for magic staff"
scoreboard objectives add staff.pattern.rss dummy "Pattern rss for magic staff"
scoreboard objectives add staff.pattern.rsf dummy "Pattern rsf for magic staff"
scoreboard objectives add staff.pattern.rfr dummy "Pattern rfr for magic staff"
scoreboard objectives add staff.pattern.rfs dummy "Pattern rfs for magic staff"
scoreboard objectives add staff.pattern.rff dummy "Pattern rff for magic staff"
scoreboard objectives add staff.pattern.frr dummy "Pattern frr for magic staff"
scoreboard objectives add staff.pattern.frs dummy "Pattern frs for magic staff"
scoreboard objectives add staff.pattern.frf dummy "Pattern frf for magic staff"
scoreboard objectives add staff.pattern.fsr dummy "Pattern fsr for magic staff"
scoreboard objectives add staff.pattern.fss dummy "Pattern fss for magic staff"
scoreboard objectives add staff.pattern.fsf dummy "Pattern fsf for magic staff"
scoreboard objectives add staff.pattern.ffr dummy "Pattern ffr for magic staff"
scoreboard objectives add staff.pattern.ffs dummy "Pattern ffs for magic staff"
scoreboard objectives add staff.pattern.fff dummy "Pattern fff for magic staff"
scoreboard objectives add staff.pattern.srr dummy "Pattern srr for magic staff"
scoreboard objectives add staff.pattern.srf dummy "Pattern srf for magic staff"
scoreboard objectives add staff.pattern.srs dummy "Pattern srs for magic staff"
scoreboard objectives add staff.pattern.ssr dummy "Pattern ssr for magic staff"
scoreboard objectives add staff.pattern.sss dummy "Pattern sss for magic staff"
scoreboard objectives add staff.pattern.ssf dummy "Pattern ssf for magic staff"
scoreboard objectives add staff.pattern.sfr dummy "Pattern sfr for magic staff"
scoreboard objectives add staff.pattern.sfs dummy "Pattern sfs for magic staff"
scoreboard objectives add staff.pattern.sff dummy "Pattern sff for magic staff"

scoreboard objectives add magic.charge.sculkTrap dummy "Sculk trap charges"

scoreboard objectives add magic.Select dummy
scoreboard objectives add magic.Cast dummy
scoreboard objectives add magic.Phase dummy
scoreboard objectives add magic.phaseCount dummy

scoreboard objectives add magic.Time dummy


scoreboard objectives add magic.constants dummy
scoreboard players set -100 magic.constants -100
scoreboard players set 100 magic.constants 100
scoreboard players set 20 magic.constants 20
scoreboard players set 30 magic.constants 30
scoreboard players set 50 magic.constants 50
scoreboard players set 3 magic.constants 3
scoreboard players set 2 magic.constants 2
scoreboard players set 1 magic.constants 1
scoreboard players set 5 magic.constants 5

scoreboard objectives add magic.mana dummy
scoreboard objectives add magic.magicDamage dummy
scoreboard objectives add magic._magicDamage dummy "magic damage for calculation"
scoreboard objectives add magic._baseDamage dummy "Base damage (for calculation)"
scoreboard objectives add magic._abilityScaling dummy "Ability scaling (for calculation)"
scoreboard objectives add magic.scheduledManaCost dummy "Scheduled mana cost"
scoreboard objectives add magic._regen dummy "Mana regeneration"
scoreboard objectives add magic.intelligence dummy "Intelligence"

scoreboard objectives add magic.damageDealt dummy "Damage dealt on entity"
scoreboard objectives add magic.damagePower dummy "Damage the magic will deal"

scoreboard objectives add magic.desk.generic dummy "Magic desk generic"
scoreboard objectives add magic.desk.click dummy "Magic desk click"

# scoreboards that is targeted with @MagicSpecific means that the scoreboard is used SEPERATELY in EACH magic, thus shouldn't be CROSS-REFERENCED!

# @MagicSpecific
scoreboard objectives add magic.effectTimeDelta dummy
# @MagicSpecific
scoreboard objectives add magic.icePile.frozenTime dummy
# @MagicSpecific
scoreboard objectives add magic.icePile.damage dummy

# NEVER USE THESE ON A PLAYER!!!!!!!!!
# OR IT'LL CAUSE BUG LOL
scoreboard objectives add magic.generic dummy "Magic generic"


#TargetMatch
scoreboard objectives add magic.target.uuid0 dummy "Target UUID[0]"
scoreboard objectives add magic.target.uuid1 dummy "Target UUID[1]"
scoreboard objectives add magic.target.uuid2 dummy "Target UUID[2]"
scoreboard objectives add magic.target.uuid3 dummy "Target UUID[3]"

#magicLevel
scoreboard objectives add magic.level dummy "Magic Level"


#magicLevel
scoreboard objectives add coords.x dummy "Coords.X"
scoreboard objectives add coords.y dummy "Coords.Y"
scoreboard objectives add coords.z dummy "Coords.Z"
