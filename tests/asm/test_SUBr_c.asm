SECTION "sec", ROM0
DS $100
        jp  $200
DS $100
        ld sp, $FFFE
        ld  a, 20
        ld 	c, 20
        sub a, c
        ;Expected A=0. Flags Z=1, H=1, C=1.
        ; AF = FFF0
        push af
