transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/top_DE10.vhd}
vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/timer.vhd}
vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/resetDemandeChargement.vhd}
vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/gestionVariablePartagee.vhd}
vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/gestionBuffer.vhd}
vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/detectionZero.vhd}
vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/decompteur_seule.vhd}
vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/decompteur.vhd}
vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/DCB.vhd}
vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/D7_D0_package.vhd}
vcom -93 -work work {C:/Users/fabio/Desktop/S8/LogiqueProgrammable/Projeto/[8] LP_Projet_Carte/gestionDialogue.vhd}

