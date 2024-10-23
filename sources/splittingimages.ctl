; Copyright Domark Ltd 1986, 2024 ArcadeGeek LTD.
; NOTE: Disassembly is Work-In-Progress.
; Label naming is loosely based on Action_ActionName_SubAction e.g. Print_HighScore_Loop.

> $4000 @rom
> $4000 @start
> $4000 @expand=#DEF(#ANIMATE(delay,count=$50)(name=$a)*$name-1,$delay;#FOR$02,$count||x|$name-x|;||($name-animation))
> $4000 @expand=#DEF(#PLURAL(count)(s=$s,p=$p) #LET(count=$count)#FORMAT(#IF($count==$01)($s,$p)))
> $4000 @expand=#DEF(#POKE #LINK:Pokes)
> $4000 @expand=#DEF(#FACT #LINK:Facts)
b $4000 Loading Screen
D $4000 #UDGTABLE { =h Splitting Images Loading Screen. } { #SCR$02(loading) } UDGTABLE#
@ $4000 label=Loading
  $4000,$1800,$20 Pixels.
  $5800,$0300,$20 Attributes.

b $5B00 Graphics Data: Level 01 (Ronald Reagan)
D $5B00 Compressed graphics data for level 1.
@ $5B00 label=GraphicsData_Level_01
N $5B00 This is decompressed using the routine at #R$E004 which writes the
. image to #R$A0E3.
N $5B00 #PUSHS #SIM(start=$D34E,stop=$D351,ix=$5B00,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(level-01) } UDGTABLE#
N $5B00 And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(level-01-{id:02}))! |
. !! } '' UDGTABLE# #POPS

b $6182 Graphics Data: Level 02 (Margaret Thatcher)
D $6182 Compressed graphics data for level 2.
@ $6182 label=GraphicsData_Level_02
N $6182 This is decompressed using the routine at #R$E004 which writes the
. image to #R$A0E3.
N $6182 #PUSHS #SIM(start=$D34E,stop=$D351,ix=$6182,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(level-02) } UDGTABLE#
N $6182 And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(level-02-{id:02}))! |
. !! } '' UDGTABLE# #POPS

b $6AFF Graphics Data: Level 03 (Neil Kinnock)
D $6AFF Compressed graphics data for level 3.
@ $6AFF label=GraphicsData_Level_03
N $6AFF This is decompressed using the routine at #R$E004 which writes the
. image to #R$A0E3.
N $6AFF #PUSHS #SIM(start=$D34E,stop=$D351,ix=$6AFF,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(level-03) } UDGTABLE#
N $6AFF And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(level-03-{id:02}))! |
. !! } '' UDGTABLE# #POPS

b $730A Graphics Data: Level 04 (Clive Sinclair)
D $730A Compressed graphics data for level 4.
@ $730A label=GraphicsData_Level_04
N $730A This is decompressed using the routine at #R$E004 which writes the
. image to #R$A0E3.
N $730A #PUSHS #SIM(start=$D34E,stop=$D351,ix=$730A,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(level-04) } UDGTABLE#
N $730A And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(level-04-{id:02}))! |
. !! } '' UDGTABLE# #POPS

b $783C Graphics Data: Level 05 (Alan Sugar)
D $783C Compressed graphics data for level 5.
@ $783C label=GraphicsData_Level_05
N $783C This is decompressed using the routine at #R$E004 which writes the
. image to #R$A0E3.
N $783C #PUSHS #SIM(start=$D34E,stop=$D351,ix=$783C,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(level-05) } UDGTABLE#
N $783C And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(level-05-{id:02}))! |
. !! } '' UDGTABLE# #POPS

b $7CFD Graphics Data: Level 06 (Humphrey Bogart)
D $7CFD Compressed graphics data for level 6.
@ $7CFD label=GraphicsData_Level_06
N $7CFD This is decompressed using the routine at #R$E004 which writes the
. image to #R$A0E3.
N $7CFD #PUSHS #SIM(start=$D34E,stop=$D351,ix=$7CFD,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(level-06) } UDGTABLE#
N $7CFD And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(level-06-{id:02}))! |
. !! } '' UDGTABLE# #POPS

b $8106 Graphics Data: Level 07 (Charles And Diana)
D $8106 Compressed graphics data for level 7.
@ $8106 label=GraphicsData_Level_07
N $8106 This is decompressed using the routine at #R$E004 which writes the
. image to #R$A0E3.
N $8106 #PUSHS #SIM(start=$D34E,stop=$D351,ix=$8106,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(level-07) } UDGTABLE#
N $8106 And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(level-07-{id:02}))! |
. !! } '' UDGTABLE# #POPS

b $89D2 Graphics Data: Level 08 (Fergie And Andrew)
D $89D2 Compressed graphics data for level 8.
@ $89D2 label=GraphicsData_Level_08
N $89D2 This is decompressed using the routine at #R$E004 which writes the
. image to #R$A0E3.
N $89D2 #PUSHS #SIM(start=$D34E,stop=$D351,ix=$89D2,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(level-08) } UDGTABLE#
N $89D2 And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(level-08-{id:02}))! |
. !! } '' UDGTABLE# #POPS

b $9110 Graphics Data: Level 09 (Mick Jagger)
D $9110 Compressed graphics data for level 9.
@ $9110 label=GraphicsData_Level_09
N $9110 This is decompressed using the routine at #R$E004 which writes the
. image to #R$A0E3.
N $9110 #PUSHS #SIM(start=$D34E,stop=$D351,ix=$9110,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(level-09) } UDGTABLE#
N $9110 And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(level-09-{id:02}))! |
. !! } '' UDGTABLE# #POPS

b $9772 Graphics Data: Level 10 (Marilyn Monroe)
D $9772 Compressed graphics data for level 10.
@ $9772 label=GraphicsData_Level_10
N $9772 This is decompressed using the routine at #R$E004 which writes the
. image to #R$A0E3.
N $9772 #PUSHS #SIM(start=$D34E,stop=$D351,ix=$9772,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(level-10) } UDGTABLE#
N $9772 And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(level-10-{id:02}))! |
. !! } '' UDGTABLE# #POPS

g $A0E3 Image Buffer
@ $A0E3 label=Buffer_Image
@ $AAE3 label=Buffer_Image_Attributes
D $A0E3 Holds the image for the current level.
B $A0E3,$0B40,$14

b $AC24 Graphics Data: Items 01
@ $AC24 label=GraphicsData_Items_01
@ $B624 label=GraphicsData_Items_01_Attributes
N $AC24 The whole spritesheet:
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($AC24-$B610-$01-$A0)@$B624-$B763(items-01) } UDGTABLE#
N $AC24 Each individual sprite:
. #UDGTABLE
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($AC24+{multiplier})-($AE90+{multiplier})-$01-$A0)@($B624+({id}+y*$0F)*$04)-($B663+({id}+y*$0F)*$04)-$01-$14(#FORMAT(items-01-{id:02}))! |
. !! } '' UDGTABLE#
  $AC24,$0B40,$14

b $B765 Graphics Data: Items 02
@ $B765 label=GraphicsData_Items_02
@ $C165 label=GraphicsData_Items_02_Attributes
N $B765 The whole spritesheet:
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($B765-$C151-$01-$A0)@$C165-$C2A4(items-02) } UDGTABLE#
N $B765 Each individual sprite:
. #UDGTABLE
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($B765+{multiplier})-($B9D1+{multiplier})-$01-$A0)@($C165+({id}+y*$0F)*$04)-($C2A4+({id}+y*$0F)*$04)-$01-$14(#FORMAT(items-02-{id:02}))! |
. !! } '' UDGTABLE#
  $B765,$0B40,$14

b $C2A6 Data: Playarea Surround
@ $C2A6 label=Data_PlayareaSurround
D $C2A6 #PUSHS #UDGTABLE { #SIM(start=$D1F1,stop=$D1F7)#SCR$02(playarea-surround) } UDGTABLE# #POPS

u $CBDE

b $CBE1 Data: Main Menu
@ $CBE1 label=Data_MainMenu
D $CBE1 #PUSHS #UDGTABLE { #SIM(start=$D1D5,stop=$D1DB)#SCR$02(main-menu) } UDGTABLE# #POPS

> $D1AA @org=$D1AA
c $D1AA Game Entry Point
@ $D1AA label=GameEntryPoint
E $D1AA Continue on to #R$D1D0.
  $D1AA,$01 Disable interrupts.
  $D1AB,$03 #REGsp=#N$FFFA.
N $D1AE Write #N$FD from #R$FE00 for #N$100 bytes. All will become clear soon...
  $D1AE,$03 #REGhl=#R$FE00.
  $D1B1,$03 #HTML(Set a counter in #REGb of #N$00 (as it's a <code>DJNZ</code>
. this is really #N$100) and set #REGc to #N$FD for the value to write.)
@ $D1B4 label=WriteInterruptJumpAddress_Loop
  $D1B4,$01 Write #N$FD to *#REGhl.
  $D1B5,$01 Increment #REGhl by one.
  $D1B6,$02 Decrease counter by one and loop back to #R$D1B4 until counter is zero.
N $D1B8 One more for luck...
  $D1B8,$01 Write #REGc to *#REGhl.
N $D1B9 This sets interrupt mode #N$02; when the system generates an interrupt,
. it'll use the high-order byte set here, together with a low-order byte
. generated from the system to form a 16-bit address to jump to.
.
. As we've just set #N$FD to every address, this means that every generated
. interrupt will jump to #N$FEFD, which in turn will jump to #R$F85D.
  $D1B9,$04 Set #N$FE as the high-order byte in #REGi.
  $D1BD,$02 Set interrupt mode #N$02.
  $D1BF,$06 Write #N$5843 (attribute buffer location) to *#R$D877.
  $D1C5,$05 Write #N$01 ("keyboard") to *#R$EB38.
  $D1CA,$06 Write #R$EB64 to *#R$EB36.

c $D1D0 Game Loop
@ $D1D0 label=Game_Loop
  $D1D0,$01 Disable interrupts.
N $D1D1 Print the main menu options.
  $D1D1,$04 Set border colour to #INK$00.
  $D1D5,$03 #REGhl=#R$CBE1.
  $D1D8,$03 Call #R$D70C.
  $D1DB,$03 Call #R$EA4A.
N $D1DE Initialise a new game.
  $D1DE,$0B Initialise *#R$D874, *#R$D875 and *#R$D876 to #N($000000,$06,$06).
  $D1E9,$04 Write #N$00 to *#R$D86D.
N $D1ED Print the in-game surround.
  $D1ED,$04 Set border colour to #INK$05.
  $D1F1,$03 #REGhl=#R$C2A6.
  $D1F4,$03 Call #R$D70C.
N $D1F7 Set the starting lives.
  $D1F7,$05 Write #N$04 to *#R$D827.
  $D1FC,$06 Write #N$5ADA (attribute buffer location) to *#R$D872.
N $D202 Initialise the new game with the level 1 data.
  $D202,$06 Write #R$D28D to *#R$D28B.
N $D208 Note, this level counter counts down instead of up.
  $D208,$02 Set a counter in #REGb for the total number of levels (#N$0A).
N $D20A This level counter is used for display purposes.
  $D20A,$04 Write #N$00 to *#R$D86E.
N $D20E The game loops here in-game to begin a new level.
@ $D20E label=Game_NewLevel
  $D20E,$01 Stash the level counter on the stack.
  $D20F,$03 #REGhl=*#R$D28B.
  $D212,$03 #REGde=current level data pointer.
  $D215,$01 Increment the level data pointer by one to point to the next level.
  $D216,$03 Write the next level pointer to *#R$D28B.
  $D219,$01 Exchange the #REGde and #REGhl registers.
N $D21A Add one to the current level.
  $D21A,$03 #REGa=*#R$D86E.
  $D21D,$01 Increment #REGa by one.
  $D21E,$01 Adjust #REGa for BCD operations.
  $D21F,$03 Write #REGa back to *#R$D86E.
N $D222 Set everything up...
  $D222,$03 Call #R$D2A1.
N $D225 Marilyn Monroe is the last level, and to make it more difficult, no
. preview image is shown. Instead, the last frame of the "static" generated by
. #R$EC5A is left on the screen.
  $D225,$02 Set #N$01 in #REGa to indicate the last level.
  $D227,$01 Restore the level counter from the stack.
  $D228,$01 But keep a stashed copy of the level counter on the stack.
  $D229,$03 Jump to #R$D22F if the level countdown is equal to #N$01 (and so is
. the last level).
  $D22C,$03 Else this isn't the last level; call #R$DD73.
@ $D22F label=Skip_MarilynMonroe
  $D22F,$03 Call #R$EC39.
  $D232,$01 Enable interrupts.
  $D233,$03 Call #R$D469.
  $D236,$01 Restore the level counter from the stack.
  $D237,$02 Decrease the level counter by one and loop back to #R$D20E until
. all the levels have been played.
N $D239 The game has been completed!
  $D239,$02 #REGb=#N$1E.
  $D23B,$03 #REGhl=#R$D24F.
  $D23E,$03 Call #R$EF4A.
  $D241,$03 Call #R$ECBF.
N $D244 Long pause...
  $D244,$03 #REGbc=#N($0000,$04,$04).
@ $D247 label=Pause_Loop
  $D247,$01 Decrease #REGbc by one.
  $D248,$04 Jump to #R$D247 until #REGbc is zero.
  $D24C,$03 Jump to #R$D1D0.

b $D24F

g $D28B Pointer: Current Level Data
@ $D28B label=Pointer_CurrentLevelData
W $D28B,$02

g $D28D Table: Level Data
@ $D28D label=Table_LevelData
W $D28D,$02 Level #R((#PEEK(#PC+$01)*$100)+#PEEK(#PC))(#N($01+(#PC-$D28D)/$02)).
L $D28D,$02,$0A

c $D2A1 Game Initialisation
@ $D2A1 label=Game_Initialisation
R $D2A1 HL Pointer to level data
  $D2A1,$01 The first byte is the length of the level data, store this in #REGc.
  $D2A2,$01 #REGa=data length.
  $D2A3,$02 Initialise #REGb to #N$00 for the copy command.
  $D2A5,$01 Increment the level data pointer by one.
  $D2A6,$05 Copy the level data from the current level data to #R$E2A7.
  $D2AB,$08 The next #N($0012,$04,$04) bytes are timers for the doors and
. cracks, each level has a different set. Copy these starting at #R$D815.
  $D2B3,$07 Fetch the pointer for the level graphics data and write this to *#R$D892.
  $D2BA,$03 #REGhl=#R$D85F.
  $D2BD,$02 #REGb=#N$0C.
  $D2BF,$02 Write #N$01 to *#REGhl.
  $D2C1,$01 Increment #REGhl by one.
  $D2C2,$02 Decrease counter by one and loop back to #R$D2BF until counter is zero.
  $D2C4,$0B Copy #N($0031,$04,$04) bytes of data from #R$D4F1 to #R$E261.
N $D2CF Populates #R$E293 with: #PUSHS #SIM(start=$D2CF,stop=$D2DB)
. #TABLE(default,centre,centre,centre,centre,centre)
. #FOR$00,$03""x"
.   { #FOR$00,$04,,(y,=h #N($E293+(x*$05)+y), | ) }
.   { #FOR$00,$04,,(y,#N(#PEEK($E293+(x*$05)+y)), | ) }
. ""
. TABLE# #POPS
  $D2CF,$03 #REGhl=#R$E293.
  $D2D2,$02 Set a counter in #REGb for each tile (5x4).
  $D2D4,$02 Tile numbering starts from #N$01.
@ $D2D6 label=PopulateTileTable_Loop
  $D2D6,$01 Write the tile ID to *#REGhl.
  $D2D7,$01 Increment the tile table pointer by one.
  $D2D8,$01 Increment the tile ID by one.
  $D2D9,$02 Decrease the tile counter by one and loop back to #R$D2D6 until the table has been populated.
N $D2DB Copy default values to #R$D828.
  $D2DB,$03 #REGhl=#R$D879.
  $D2DE,$03 #REGde=#R$D828.
@ $D2E1 label=PopulateDefaults_Loop
  $D2E1,$01 Load the byte from *#REGhl and store it in #REGa.
  $D2E2,$04 Jump to #R$D2F0 if this byte is the terminator (#N$FF).
  $D2E6,$01 Load the byte into #REGb this is the count/ repeater value.
  $D2E7,$01 Increment the defaults pointer by one.
  $D2E8,$01 Load the defaults byte from *#REGhl and store it in #REGa.
  $D2E9,$01 Increment the defaults pointer by one.
@ $D2EA label=RepeatDefault_Loop
  $D2EA,$01 Write the defaults byte to the destination.
  $D2EB,$01 Increment the destination pointer by one.
  $D2EC,$02 Decrease repeater count by one and loop back to #R$D2EA until the
. defaults byte has been written this number of times.
  $D2EE,$02 Jump back to #R$D2E1.
N $D2F0 The computed values are done, copy the last six values over.
@ $D2F0 label=PopulateDefaults_Done
  $D2F0,$06 Copy the last #N($0006,$04,$04) bytes from #R$D888 to #R$D84A.
N $D2F6 Write three random numbers between #N$01-#N$20 to #FOR$00,$02,,$01(n,#R$D850(#N($D850+n)), , and ).
  $D2F6,$02 #REGb=#N$03.
@ $D2F8 label=PickThreeRandomNumbers_Loop
  $D2F8,$02 #REGa=the contents of the Memory Refresh Register.
  $D2FA,$02,b$01 Keep only bits 0-4.
  $D2FC,$01 Increment #REGa by one.
M $D2FA,$03 Ensure this number is between #N$01-#N$20.
  $D2FD,$01 Write this number to the destination pointer.
  $D2FE,$01 Increment the destination pointer by one.
  $D2FF,$02 Decrease counter by one and loop back to #R$D2F8 until counter is zero.
  $D301,$0F Write #R$DA1F to: #LIST { *#R$D853 } { *#R$D855 } { *#R$D857 } { *#R$D859 } LIST#
  $D310,$03 #REGhl=#R$E292.
  $D313,$03 #REGbc=#N($07D0,$04,$04).
  $D316,$02 #REGa=the contents of the Memory Refresh Register.
  $D318,$01 #REGa+=#REGc.
  $D319,$01 #REGc=#REGa.
  $D31A,$03 Stash #REGbc, #REGhl and #REGhl on the stack.
  $D31D,$03 Call #R$E6EC.
  $D320,$01 #REGhl+=random number.
  $D321,$01 Exchange the #REGde and #REGhl registers.
  $D322,$01 Restore #REGhl from the stack.
  $D323,$03 Call #R$E6EC.
  $D326,$01 #REGhl+=random number.
  $D327,$01 #REGb=*#REGhl.
  $D328,$02 Write *#REGde to *#REGhl.
  $D32A,$02 Write #REGb to *#REGde.
  $D32C,$02 Restore #REGhl and #REGbc from the stack.
  $D32E,$01 Decrease #REGbc by one.
  $D32F,$04 Jump to #R$D31A if #REGbc is not zero.
N $D333 Populate the level, bonus and score numbering in the dashboard.
  $D333,$03 Call #R$EA2F.
  $D336,$03 Call #R$EA00.
  $D339,$03 Call #R$EA14.
N $D33C Paint the preview grid pattern.
  $D33C,$03 Call #R$EC39.
N $D33F Small pause...
  $D33F,$03 #REGbc=#N$9C40.
@ $D342 label=SetUp_Pause_Loop
  $D342,$01 Decrease #REGbc by one.
  $D343,$04 Jump to #R$D342 until #REGbc is zero.
N $D347 Play the "static" animation in the preview area.
  $D347,$03 Call #R$EC5A.
N $D34A Display the current preview image.
  $D34A,$04 #REGix=*#R$D892.
  $D34E,$03 Call #R$E004.
  $D351,$01 Return.

c $D352
  $D352,$07 Write #N($0780,$04,$04) to *#R$D88E.
  $D359,$07 Write #N($0AF0,$04,$04) to *#R$D890.
  $D360,$03 Call #R$F39E.
  $D363,$07 Jump to #R$D387 if *#R$D834 is equal to #N$09.
  $D36A,$07 Jump to #R$D387 if *#R$D835 is not equal to #N$00.
  $D371,$01 Stash #REGbc on the stack.
  $D372,$06 Write *#R$D830 to *#R$D82C.
  $D378,$06 Write *#R$D831 to *#R$D82D.
  $D37E,$03 Call #R$E661.
  $D381,$03 #REGhl=#R$D839.
  $D384,$02 Reset bit 0 of *#REGhl.
  $D386,$01 Restore #REGbc from the stack.
  $D387,$05 Jump to #R$D4A5 if bit 4 of #REGb is not set.
  $D38C,$01 Stash #REGbc on the stack.
  $D38D,$03 Call #R$DABF.
  $D390,$03 Call #R$EA00.
  $D393,$03 #REGhl=#R$D83A.
  $D396,$05 Call #R$F349 if bit 6 of *#REGhl is set.
  $D39B,$03 #REGhl=#R$D83A.
  $D39E,$02 Set bit 0 of *#REGhl.
  $D3A0,$01 Restore #REGbc from the stack.
  $D3A1,$04 Jump to #R$D3C4 if bit 3 of #REGb is not set.
  $D3A5,$03 Call #R$D763.
  $D3A8,$03 #REGa=*#R$E75D.
  $D3AB,$01 Decrease #REGa by one.
  $D3AC,$01 #REGb=#REGa.
  $D3AD,$03 #REGa=*#R$E75E.
  $D3B0,$01 Decrease #REGa by one.
  $D3B1,$01 #REGc=#REGa.
  $D3B2,$03 #REGde=#R$D86B.
  $D3B5,$02 #REGa=#N$04.
  $D3B7,$04 #REGix=#R$D83A.
  $D3BB,$04 Reset bit 1 of *#REGix+#N$00.
  $D3BF,$03 Call #R$DB2E.
  $D3C2,$02 Jump to #R$D3DF.
  $D3C4,$04 #REGix=#R$D83A.
  $D3C8,$06 Jump to #R$D40D if bit 2 of *#REGix+#N$00 is set.
  $D3CE,$07 Write #N($0510,$04,$04) to *#R$D88E.
  $D3D5,$07 Write #N($0AB0,$04,$04) to *#R$D890.
  $D3DC,$03 Call #R$D763.
  $D3DF,$02 #REGa=#N$05.
  $D3E1,$02 #REGc=#N$82.
  $D3E3,$01 Stash #REGbc on the stack.
  $D3E4,$02 #REGd=#N$05.
  $D3E6,$02 Set border to the colour held by #REGa.
  $D3E8,$02,b$01 Flip bit 4.
  $D3EA,$01 #REGe=#REGc.
  $D3EB,$01 Decrease #REGe by one.
  $D3EC,$02 Jump to #R$D3EB if #REGe is not zero.
  $D3EE,$01 Decrease #REGd by one.
  $D3EF,$02 Jump to #R$D3E6 if #REGd is not zero.
  $D3F1,$01 Decrease #REGc by one.
  $D3F2,$02 Jump to #R$D3E4 if #REGc is not zero.
  $D3F4,$01 Restore #REGbc from the stack.
  $D3F5,$02 #REGd=#N$05.
  $D3F7,$02 #REGa=#N$05.
  $D3F9,$02 Set border to the colour held by #REGa.
  $D3FB,$02,b$01 Flip bit 4.
  $D3FD,$01 #REGe=#REGc.
  $D3FE,$01 Decrease #REGe by one.
  $D3FF,$02 Jump to #R$D3FE if #REGe is not zero.
  $D401,$01 Decrease #REGd by one.
  $D402,$02 Jump to #R$D3F9 if #REGd is not zero.
  $D404,$01 Increment #REGc by one.
  $D405,$05 Jump to #R$D3F5 if #REGc is not equal to #N$82.
  $D40A,$03 Call #R$DABF.
  $D40D,$04 #REGix=#R$D83A.
  $D411,$07 Jump to #R$D4A5 if bit 3 of *#REGix+#N$00 is not set.
  $D418,$03 Call #R$E9DA.
  $D41B,$03 Call #R$E775.
  $D41E,$06 Write *#R$D82E to *#R$E75D.
  $D424,$06 Write *#R$D82F to *#R$E75E.
  $D42A,$07 Jump to #R$D456 if *#R$D834 is not equal to #N$09.
  $D431,$03 #REGa=*#R$E75D.
  $D434,$03 Write #REGa to *#R$E762.
  $D437,$01 Increment #REGa by one.
  $D438,$03 Write #REGa to *#R$E763.
  $D43B,$03 #REGa=*#R$E75E.
  $D43E,$03 Write #REGa to *#R$E764.
  $D441,$01 Increment #REGa by one.
  $D442,$03 Write #REGa to *#R$E765.
  $D445,$03 Call #R$E9DA.
  $D448,$02 #REGa=#COLOUR$2F.
  $D44A,$03 Call #R$E682.
  $D44D,$03 Call #R$E9A5.
  $D450,$01 Halt operation (suspend CPU until the next interrupt).
  $D451,$03 Call #R$E7CC.
  $D454,$02 Jump to #R$D45F.

c $D469 Start Game
@ $D469 label=StartGame
N $D469 The game always starts with the cursor inside the home box.
N $D469 This is position #N$02/ #N$02:
. #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$02
. #UDGTABLE { #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-02-02) }
. UDGTABLE# #POPS
  $D469,$0E Write #N$02 to: #LIST { *#R$D830 } { *#R$D831 } { *#R$D82E } { *#R$D82F } LIST#
  $D477,$05 Write #N$09 to *#R$D834.
N $D47C See #POKE#infinitelives(Infinite Lives) and #POKE#infinitelivesalt(Infinite Lives (alternative)).
N $D47C Spend a life to play the game.
  $D47C,$03 #REGhl=#R$D827.
  $D47F,$01 Decrease *#REGhl by one.
  $D480,$03 Jump to #R$D4D6 if the player is out of lives.
  $D483,$05 Write #N$00 to *#R$D83A.
  $D488,$03 Call #R$F31E.
  $D48B,$03 #REGhl=*#R$D872.
  $D48E,$02 Write #COLOUR$2D to *#REGhl.
  $D490,$01 Increment #REGhl by one.
  $D491,$02 Write #N$2D to *#REGhl.
  $D493,$01 Increment #REGhl by one.
  $D494,$03 Write #REGhl to *#R$D872.
  $D497,$04 #REGhl+=#N($001E,$04,$04).
  $D49B,$02 Write #N$2D to *#REGhl.
  $D49D,$01 Increment #REGhl by one.
  $D49E,$02 Write #N$2D to *#REGhl.
  $D4A0,$03 #REGhl=#R$D83A.
  $D4A3,$02 Set bit 0 of *#REGhl.
  $D4A5,$03 #REGa=*#R$D83A.
  $D4A8,$02,b$01 Keep only bits 0, 4-7.
  $D4AA,$03 Write #REGa to *#R$D83A.
  $D4AD,$06 Write *#R$D830 to *#R$D82C.
  $D4B3,$06 Write *#R$D831 to *#R$D82D.
  $D4B9,$06 Write *#R$D824 to *#R$D832.
  $D4BF,$07 Jump to #R$D4D0 if *#R$D835 is not equal to #N$00.
  $D4C6,$07 Jump to #R$D4D0 if *#R$D834 is equal to #N$09.
  $D4CD,$03 Call #R$E661.
  $D4D0,$03 Call #R$D97E.
  $D4D3,$03 Jump to #R$D352.

c $D4D6 Game Over
@ $D4D6 label=GameOver
  $D4D6,$03 #REGhl=#R$D839.
  $D4D9,$02 Set bit 7 of *#REGhl.
  $D4DB,$02 #REGb=#N$4B.
@ $D4DD label=Halt_Loop
  $D4DD,$01 Halt operation (suspend CPU until the next interrupt).
  $D4DE,$02 Decrease counter by one and loop back to #R$D4DD until counter is zero.
  $D4E0,$01 Disable interrupts.
  $D4E1,$03 Call #R$ECBF.
N $D4E4 Long pause...
  $D4E4,$03 #REGbc=#N($0000,$04,$04).
@ $D4E7 label=GameOver_Pause_Loop
  $D4E7,$01 Decrease #REGbc by one.
  $D4E8,$04 Jump to #R$D4E7 until #REGbc is zero.
  $D4EC,$02 Restore #REGiy from the stack.
  $D4EE,$03 Jump to #R$D1D0.

b $D4F1

b $D522 Data: Level 01
@ $D522 label=Data_Level_01
  $D522,$01 Length of data.
  $D523,$0D Data.
  $D530,$12 Timer states.
W $D542,$02 Graphics data pointer.

b $D544 Data: Level 02
@ $D544 label=Data_Level_02
  $D544,$01 Length of data.
  $D545,$0E Data.
  $D553,$12 Timer states.
W $D565,$02 Graphics data pointer.

b $D567 Data: Level 03
@ $D567 label=Data_Level_03
  $D567,$01 Length of data.
  $D568,$11 Data.
  $D579,$12 Timer states.
W $D58B,$02 Graphics data pointer.

b $D58D Data: Level 04
@ $D58D label=Data_Level_04
  $D58D,$01 Length of data.
  $D58E,$14 Data.
  $D5A2,$12 Timer states.
W $D5B4,$02 Graphics data pointer.

b $D5B6 Data: Level 05
@ $D5B6 label=Data_Level_05
  $D5B6,$01 Length of data.
  $D5B7,$13 Data.
  $D5CA,$12 Timer states.
W $D5DC,$02 Graphics data pointer.

b $D5DE Data: Level 06
@ $D5DE label=Data_Level_06
  $D5DE,$01 Length of data.
  $D5DF,$15 Data.
  $D5F4,$12 Timer states.
W $D606,$02 Graphics data pointer.

b $D608 Data: Level 07
@ $D608 label=Data_Level_07
  $D608,$01 Length of data.
  $D609,$17 Data.
  $D620,$12 Timer states.
W $D632,$02 Graphics data pointer.

b $D634 Data: Level 08
@ $D634 label=Data_Level_08
  $D634,$01 Length of data.
  $D635,$17 Data.
  $D64C,$12 Timer states.
W $D65E,$02 Graphics data pointer.

b $D660 Data: Level 09
@ $D660 label=Data_Level_09
  $D660,$01 Length of data.
  $D661,$14 Data.
  $D675,$12 Timer states.
W $D687,$02 Graphics data pointer.

b $D689 Data: Level 10
@ $D689 label=Data_Level_10
  $D689,$01 Length of data.
  $D68A,$16 Data.
  $D6A0,$12 Timer states.
W $D6B2,$02 Graphics data pointer.

b $D6B4

c $D70C Unpack Screen Data
@ $D70C label=UnpackScreenData
R $D70C HL Pointer to image data
N $D70C Start by clearing the screen and attribute buffers.
  $D70C,$01 Stash the pointer to the image data on the stack temporarily.
  $D70D,$03 #REGhl=#R$5800(#N$5800) (attribute buffer location).
  $D710,$03 #REGde=#N$5801.
  $D713,$02 Write #N$00 to *#REGhl.
  $D715,$05 Copy #N$00 to #N$02FF more bytes, filling the whole of the
. attribute buffer.
  $D71A,$01 Restore the pointer to the image data from the stack.
  $D71B,$03 Initialise the target screen buffer location (#R$4000(#N$4000)) in #REGde.
N $D71E The main loop
@ $D71E label=UnpackScreenData_Loop
  $D71E,$05 Jump to #R$D728 if *#REGhl is equal to #N$00.
  $D723,$01 Write #REGa to *#REGde.
  $D724,$01 Increment #REGhl by one.
  $D725,$01 Increment #REGde by one.
  $D726,$02 Jump to #R$D71E.
N $D728 Handle multiple zeroes.
@ $D728 label=Handler_Zeroes
  $D728,$01 Move the pointer to the length byte.
  $D729,$01 Load the length into #REGa.
  $D72A,$04 Jump to #R$D737 if *#REGa is equal to #N$00.
  $D72E,$01 Store the length in #REGb.
  $D72F,$01 Set #REGa to #N$00 the value to write.
N $D730 Write the zeroes to the screen buffer.
@ $D730 label=Write_Zeroes
  $D730,$01 Write #N$00 to the screen buffer location held by *#REGde.
  $D731,$01 Increment the screen buffer pointer by one.
  $D732,$02 Decrease counter by one and loop back to #R$D730 until counter is zero.
  $D734,$01 Increment #REGhl by one.
  $D735,$02 Jump to #R$D71E.
N $D737 Process attributes.
@ $D737 label=Handler_Attributes
  $D737,$01 Increment #REGhl by one.
  $D738,$03 #REGix=#REGhl (using the stack).
  $D73B,$03 #REGhl=#R$5800(#N$5800) (attribute buffer location).
  $D73E,$02 Initialise #REGb to #N$18 (number of character rows).
@ $D740 label=Handler_Attributes_Loop
  $D740,$02 Stash the row counter and attribute buffer pointer on the stack.
  $D742,$02 Initialise the column counter in #REGa to #N$00.
N $D744 Process the attribute bytes in a row.
@ $D744 label=UnpackScreenData_ProcessAttributesRow
  $D744,$05 #REGc=attribute value.
  $D749,$05 #REGb=run length.
  $D74E,$01 #REGa=run length plus the column counter.
N $D74F Write the run of attributes.
@ $D74F label=UnpackScreenData_WriteAttributes_Loop
  $D74F,$01 Write attribute byte to the attribute buffer.
  $D750,$01 Increment the attribute pointer by one.
  $D751,$02 Decrease the length counter by one and loop back to #R$D74F until
. counter is zero.
  $D753,$04 Jump to #R$D744 if #REGa is not equal to #N$20.
  $D757,$01 Restore the start of the row into #REGhl from the stack.
  $D758,$04 Move #REGhl #N($0020,$04,$04) bytes to point to the next row.
  $D75C,$01 Restore the row counter from the stack.
  $D75D,$02 Decrease the row counter by one and loop back to #R$D740 until all
. the rows have been processed.
  $D75F,$03 #REGbc=current position in attribute data (using the stack).
  $D762,$01 Return.

c $D763 Handler: Bonus
@ $D763 label=Handler_Bonus
  $D763,$03 #REGa=*#R$E75D.
  $D766,$01 Decrease #REGa by one.
  $D767,$01 #REGb=#REGa.
  $D768,$03 #REGa=*#R$E75E.
  $D76B,$01 Decrease #REGa by one.
  $D76C,$01 #REGc=#REGa.
  $D76D,$03 Call #R$DCC2.
  $D770,$03 Call #R$DCD1.
  $D773,$01 Stash #REGde on the stack.
  $D774,$04 #REGix=*#R$D88E.
  $D778,$05 #REGix+=#R$B765.
  $D77D,$02 Set a counter in #REGd for #N$04 rows.
  $D77F,$01 Stash the co-ordinates on the stack.
  $D780,$02 Set a counter in #REGb for #N$08 columns.
  $D782,$01 Stash the column counter on the stack.
  $D783,$02 Set a counter in #REGb for #N$04 bytes per character.
  $D785,$01 Stash the screen position on the stack.
  $D786,$04 Write a byte from the object data to the screen buffer position.
  $D78A,$02 Increment the object data pointer by one.
  $D78C,$01 Increment the screen position by one.
  $D78D,$02 Decrease the object byte counter by one and loop back to #R$D786 until counter is zero.
  $D78F,$01 Restore the original screen position for this row from the stack.
  $D790,$01 Increment #REGh by one.
  $D791,$05 #REGix+=#N($0010,$04,$04).
  $D796,$01 Restore the column counter from the stack.
  $D797,$02 Decrease the column counter by one and loop back to #R$D782 until the column counter is zero.
  $D799,$01 Restore the co-ordinates from the stack.
  $D79A,$01 Increment #REGb by one.
  $D79B,$03 Call #R$DCC2.
  $D79E,$01 Decrease #REGd by one.
  $D79F,$02 Jump to #R$D77F if #REGd is not zero.
  $D7A1,$04 #REGix=*#R$D890.
  $D7A5,$05 #REGix+=#R$B765.
  $D7AA,$01 Restore #REGhl from the stack.
  $D7AB,$02 #REGb=#N$04.
  $D7AD,$03 #REGde=#N($001C,$04,$04).
  $D7B0,$01 Stash #REGbc on the stack.
  $D7B1,$02 #REGb=#N$04.
  $D7B3,$04 Write *#REGix+#N$00 to *#REGhl.
  $D7B7,$02 Increment #REGix by one.
  $D7B9,$01 Increment #REGhl by one.
  $D7BA,$02 Decrease counter by one and loop back to #R$D7B3 until counter is zero.
  $D7BC,$01 #REGhl+=#REGde.
  $D7BD,$05 #REGix+=#N($0010,$04,$04).
  $D7C2,$01 Restore #REGbc from the stack.
  $D7C3,$02 Decrease counter by one and loop back to #R$D7B0 until counter is zero.
  $D7C5,$01 Return.

c $D7C6
  $D7C6,$04 Jump to #R$D7CE if #REGa is equal to #N$1F.
  $D7CA,$04 Jump to #R$D7DD if #REGa is not equal to #N$21.
  $D7CE,$07 Write #N($0784,$04,$04) to *#R$D88E.
  $D7D5,$07 Write #N($0AF4,$04,$04) to *#R$D890.
  $D7DC,$01 Return.

  $D7DD,$04 Jump to #R$D7F0 if #REGa is not equal to #N$25.
  $D7E1,$07 Write #N($0788,$04,$04) to *#R$D88E.
  $D7E8,$07 Write #N($0AF8,$04,$04) to *#R$D890.
  $D7EF,$01 Return.

  $D7F0,$04 Jump to #R$D803 if #REGa is not equal to #N$2D.
  $D7F4,$07 Write #N($078C,$04,$04) to *#R$D88E.
  $D7FB,$07 Write #N($0AFC,$04,$04) to *#R$D890.
  $D802,$01 Return.

  $D803,$03 Return if #REGa is not equal to #N$33.
  $D806,$07 Write #N($0790,$04,$04) to *#R$D88E.
  $D80D,$07 Write #N($0B00,$04,$04) to *#R$D890.
  $D814,$01 Return.

g $D815 Object Timers
@ $D815 label=Timer_DoorTop
@ $D816 label=Timer_DoorBottom
@ $D817 label=Timer_DoorLeft
@ $D818 label=Timer_Crack_01
@ $D819 label=Timer_Crack_02
@ $D81A label=Timer_Crack_03
@ $D81B label=Timer_Crack_04
@ $D81C label=Timer_Crack_05
@ $D81D label=Timer_Crack_06
@ $D81E label=Timer_Crack_07
@ $D81F label=Timer_Crack_08
@ $D820 label=Timer_Crack_09
@ $D821 label=Timer_Crack_10
@ $D822 label=Timer_Crack_11
@ $D823 label=Timer_Crack_12
@ $D824 label=Timer_Crack_13
B $D815,$12,$01

g $D827 Lives
@ $D827 label=Lives
B $D827,$01

g $D828

g $D829

g $D82A

g $D82B

g $D82C Destination Cursor Position
@ $D82C label=DestinationCursor_Y_Position
@ $D82D label=DestinationCursor_X_Position
B $D82C,$02,$01

g $D82E Current Player Cursor Position
@ $D82E label=CurrentCursor_Y_Position
@ $D82F label=CurrentCursor_X_Position
B $D82E,$02,$01

g $D830 Storage Cursor Position
@ $D830 label=StorageCursor_Y_Position
@ $D831 label=StorageCursor_X_Position
B $D830,$02,$01

g $D832

g $D833

g $D834 Player Cursor Tile ID
@ $D834 label=PlayerCursor_TileID
D $D834 Each tile square is numbered, this value represents the tile the cursor
. is currently placed on. Note the numbering is not entirely sequential.
B $D834,$01

g $D835 Player Cursor Flag
@ $D835 label=PlayerCursor_Flag
D $D835 Used by the routines at #R$D352, #R$D469, #R$E396, #R$E658, #R$E661 and #R$F39E.
. #TABLE(default,centre,centre)
. { =h Byte | =h Meaning }
. { #N$00 | Off }
. { #N$01 | On }
. TABLE#
B $D835,$01

g $D836 Home Arrow Attribute Table Offset
@ $D836 label=HomeArrow_AttributeTable_Offset
D $D836 Used by the routine at #R$E320.
B $D836,$01

g $D837

g $D838 Bomb?
@ $D838 label=Bomb
B $D838,$01

g $D839

g $D83A Time?
@ $D83A label=Time
B $D83A,$01

g $D83B

g $D83C

g $D83D

g $D83E

g $D83F

g $D840

g $D841

g $D842

g $D843

g $D844

g $D845

g $D846

g $D847

g $D848

g $D849

g $D84A

g $D84C
W $D84C,$02

g $D850
B $D850,$03,$01

g $D853
W $D853,$02
W $D855,$02
W $D857,$02
W $D859,$02

g $D85B Time Bar
@ $D85B label=TimeBar_CurrentPosition
D $D85B Time Bar flags and variables.
W $D85B,$02 The current (end) position of the time bar in the screen buffer.
@ $D85D label=TimeBar_Active
B $D85D,$01 #TABLE(default,centre,centre)
. { =h Byte | =h Meaning }
. { #N$00 | Not Active }
. { #N$01 | Active }
. TABLE#
@ $D85E label=TimeBar_Length
B $D85E,$01 The length of the time bar in character blocks.

g $D85F

g $D86B

g $D86D
B $D86D,$01

g $D86E Level
@ $D86E label=Level
B $D86E,$01

g $D86F High Score
@ $D86F label=HighScore
B $D86F,$03,$01

g $D872
W $D872,$02

g $D874 Score
@ $D874 label=Score_Digit_01
@ $D875 label=Score_Digit_02
@ $D876 label=Score_Digit_03
B $D874,$03,$01

g $D877 Screen Position Selected Menu Item
@ $D877 label=SelectedMenuItem_ScreenPosition
W $D877,$02

g $D879 Defaults Of Some Kind?
@ $D879 label=Defaults
D $D879 Used by the routine at #R$D2A1.
B $D879,$02 #PLURAL(#PEEK(#PC))(Write #N(#PEEK(#PC+$01)) just 1 time,Repeat #N(#PEEK(#PC+$01)) x #N({count}) times).
L $D879,$02,$07
B $D887,$01 Terminator.
B $D888,$02
W $D88A,$02
B $D88C,$02

g $D88E
W $D88E,$02

g $D890
W $D890,$02

g $D892 Pointer Level Graphics Data
@ $D892 label=LevelGraphicsData
D $D892 Will point to one of:
. #TABLE(default,centre,centre)
. { =h Address | =h Level }
. { #R$5B00 | Level 01 }
. { #R$6182 | Level 02 }
. { #R$6AFF | Level 03 }
. { #R$730A | Level 04 }
. { #R$783C | Level 05 }
. { #R$7CFD | Level 06 }
. { #R$8106 | Level 07 }
. { #R$89D2 | Level 08 }
. { #R$9110 | Level 09 }
. { #R$9772 | Level 10 }
. TABLE#
W $D892,$02

c $D894 Level Complete
@ $D894 label=LevelComplete
  $D894,$03 #REGhl=#R$D83A.
  $D897,$02 Reset bit 0 of *#REGhl.
  $D899,$03 #REGhl=#R$D839.
  $D89C,$02 Set bit 7 of *#REGhl.
  $D89E,$03 Call #R$EC39.
  $D8A1,$03 #REGhl=#N$5825 (attribute buffer location).
  $D8A4,$02 #REGb=#N$04.
  $D8A6,$01 Stash #REGbc on the stack.
  $D8A7,$02 #REGb=#N$10.
  $D8A9,$02 Write #N$00 to *#REGhl.
  $D8AB,$01 Increment #REGhl by one.
  $D8AC,$02 Decrease counter by one and loop back to #R$D8A9 until counter is zero.
  $D8AE,$04 #REGhl+=#N($0010,$04,$04).
  $D8B2,$01 Restore #REGbc from the stack.
  $D8B3,$02 Decrease counter by one and loop back to #R$D8A6 until counter is zero.
  $D8B5,$03 #REGbc=#N($00FA,$04,$04).
  $D8B8,$01 Disable interrupts.
  $D8B9,$02 #REGd=#N$0E.
  $D8BB,$02 #REGa=#N$05.
  $D8BD,$02 Send to the speaker.
  $D8BF,$02,b$01 Flip bit 4.
  $D8C1,$01 #REGe=#REGc.
  $D8C2,$01 Decrease #REGe by one.
  $D8C3,$02 Jump to #R$D8C2 if #REGe is not zero.
  $D8C5,$01 Decrease #REGd by one.
  $D8C6,$02 Jump to #R$D8BD if #REGd is not zero.
  $D8C8,$01 Decrease #REGbc by one.
  $D8C9,$04 Jump to #R$D8B9 if #REGbc is not zero.
  $D8CD,$01 Enable interrupts.
  $D8CE,$03 Call #R$E9BF.
  $D8D1,$02 #REGb=#N$64.
  $D8D3,$01 Halt operation (suspend CPU until the next interrupt).
  $D8D4,$02 Decrease counter by one and loop back to #R$D8D3 until counter is zero.
  $D8D6,$01 Disable interrupts.
  $D8D7,$03 #REGhl=#R$D83A.
  $D8DA,$02 Write #N$80 to *#REGhl.
  $D8DC,$03 Call #R$FC6D.
  $D8DF,$03 #REGa=*#R$D85E.
  $D8E2,$01 Increment #REGa by one.
  $D8E3,$01 #REGd=#REGa.
  $D8E4,$02 #REGe=#N$7D.
  $D8E6,$02 #REGh=#N$01.
  $D8E8,$01 #REGa=*#REGhl.
  $D8E9,$02,b$01 Keep only bits 3-4.
  $D8EB,$02,b$01 Set bits 0, 2.
  $D8ED,$02 Set border to the colour held by #REGa.
  $D8EF,$01 Increment #REGhl by one.
  $D8F0,$01 #REGb=#REGd.
  $D8F1,$02 Decrease counter by one and loop back to #R$D8F1 until counter is zero.
  $D8F3,$01 Decrease #REGe by one.
  $D8F4,$03 Jump to #R$D8E8 if #REGe is not zero.
  $D8F7,$03 #REGhl=#R$D83A.
  $D8FA,$02 Test bit 4 of *#REGhl.
  $D8FC,$02 Jump to #R$D918 if #REGe is not zero.
  $D8FE,$03 #REGa=*#R$D840.
  $D901,$01 Set flags.
  $D902,$01 Increment #REGa by one.
  $D903,$01 DAA.
  $D904,$03 Write #REGa to *#R$D840.
  $D907,$02 Jump to #R$D912 if #REGa is higher.
  $D909,$03 #REGa=*#R$D83F.
  $D90C,$01 Invert the carry flag.
  $D90D,$01 Increment #REGa by one.
  $D90E,$01 DAA.
  $D90F,$03 Write #REGa to *#R$D83F.
  $D912,$03 Call #R$EA00.
  $D915,$03 Jump to #R$D8DC.

  $D918,$03 #REGhl=#R$D841.
  $D91B,$03 #REGa=*#R$D876.
  $D91E,$01 Set flags.
  $D91F,$01 #REGa+=*#REGhl.
  $D920,$01 DAA.
  $D921,$03 Write #REGa to *#R$D876.
  $D924,$02 Write #N$00 to *#REGhl.
  $D926,$01 Decrease #REGhl by one.
  $D927,$03 #REGa=*#R$D875.
  $D92A,$01 #REGa+=*#REGhl.
  $D92B,$01 DAA.
  $D92C,$03 Write #REGa to *#R$D875.
  $D92F,$02 Write #N$00 to *#REGhl.
  $D931,$01 Decrease #REGhl by one.
  $D932,$03 #REGa=*#R$D874.
  $D935,$01 #REGa+=*#REGhl.
  $D936,$01 DAA.
  $D937,$03 Write #REGa to *#R$D874.
  $D93A,$02 Write #N$00 to *#REGhl.
  $D93C,$03 #REGhl=#R$F0EA.
  $D93F,$02 #REGb=#N$23.
  $D941,$03 Call #R$EF4A.
  $D944,$03 Call #R$EA00.
  $D947,$03 Call #R$EA14.
  $D94A,$07 Jump to #R$D96A if *#R$D86D is not equal to #N$00.
  $D951,$03 #REGa=*#R$D874.
  $D954,$02,b$01 Keep only bits 4-7.
  $D956,$04 RRCA.
  $D95A,$05 Jump to #R$D96A if #REGa is lower than #N$01 (unsigned comparison).
  $D95F,$05 Write #N$01 to *#R$D86D.
  $D964,$03 Call #R$E9BF.
  $D967,$03 Call #R$E9DA.
  $D96A,$05 Write #N$80 to *#R$D838.
  $D96F,$03 Call #R$EB56.
  $D972,$04 Jump back to #R$D96F until there's any player input.
  $D976,$04 Write #N$00 to *#R$D838.
  $D97A,$03 Call #R$EE61.
  $D97D,$01 Return.

c $D97E Handler: Is Level Complete?
@ $D97E label=Handler_IsLevelComplete
  $D97E,$03 #REGhl=#R$E270.
  $D981,$02 #REGd is used as a tile checker - so initialise it with #N$01,
. which is the "good" value of the first tile.
  $D983,$02 Set a row counter in #REGb of #N$04 rows to check.
@ $D985 label=CheckRow_Loop
  $D985,$01 Stash the row counter on the stack.
  $D986,$02 Set a counter in #REGb of the number of tiles to check per row.
@ $D988 label=CheckTiles_Loop
  $D988,$01 Load the tile value into #REGa.
  $D989,$03 Jump to #R$D999 if the tile value and the tile checker value don't
. match.
  $D98C,$01 Move to the next tile.
  $D98D,$01 Increment the tile checker by one.
  $D98E,$02 Decrease the tile counter by one and loop back to #R$D988 until all
. of the tiles in this row have been checked.
  $D990,$02 Increment #REGhl by two.
  $D992,$01 Restore the row counter from the stack.
  $D993,$02 Decrease the row counter by one and loop back to #R$D985 until counter is zero.
N $D995 The level is complete! All tiles are in order so jump to #R$D894.
  $D995,$01 Housekeeping; clean up the stack.
  $D996,$03 Jump to #R$D894.
N $D999 The level isn't complete, so discard the row counter on the stack and
. return.
@ $D999 label=BailOrderIncorrect
  $D999,$01 Housekeeping; clean up the stack.
  $D99A,$01 Return.

c $D99B
  $D99B,$03 #REGa=*#R$E2C7.
  $D99E,$04 Jump to #R$D9A6 if #REGa is not equal to #N$15.
  $D9A2,$04 Write #N$00 to *#R$D83B.
  $D9A6,$04 Jump to #R$D9AE if #REGa is not equal to #N$3D.
  $D9AA,$04 Write #N$00 to *#R$D83C.
  $D9AE,$04 Jump to #R$D9B6 if #REGa is not equal to #N$3E.
  $D9B2,$04 Write #N$00 to *#R$D83D.
  $D9B6,$03 Return if #REGa is not equal to #N$3F.
  $D9B9,$04 Write #N$00 to *#R$D83E.
  $D9BD,$01 Return.

c $D9BE
  $D9BE,$03 #REGa=*#R$E2C7.
  $D9C1,$04 #REGbc=*#R$E75D.
  $D9C5,$03 #REGhl=#R$D838.
  $D9C8,$04 Jump to #R$D9D9 if #REGa is not equal to #N$15.
  $D9CC,$04 Write #REGbc to *#R$DA15.
  $D9D0,$04 Jump to #R$D9D9 if bit 1 of *#REGhl is set.
  $D9D4,$05 Write #N$01 to *#R$D83B.
  $D9D9,$04 Jump to #R$D9EA if #REGa is not equal to #N$3D.
  $D9DD,$04 Write #REGbc to *#R$DA17.
  $D9E1,$04 Jump to #R$D9EA if bit 2 of *#REGhl is set.
  $D9E5,$05 Write #N$01 to *#R$D83C.
  $D9EA,$04 Jump to #R$D9FB if #REGa is not equal to #N$3E.
  $D9EE,$04 Write #REGbc to *#R$DA19.
  $D9F2,$04 Jump to #R$D9FB if bit 3 of *#REGhl is set.
  $D9F6,$05 Write #N$01 to *#R$D83D.
  $D9FB,$03 Return if #REGa is not equal to #N$3F.
  $D9FE,$04 Write #REGbc to *#R$DA1B.
  $DA02,$03 Return if bit 4 of *#REGhl is set.
  $DA05,$05 Write #N$01 to *#R$D83E.
  $DA0A,$01 Return.

c $DA0B
  $DA0B,$02 #REGb=#N$06.
  $DA0D,$02 #REGc=#N$02.
  $DA0F,$04 Write #REGbc to *#R$E75D.
  $DA13,$02 Jump to #R$D9BE.

g $DA15

g $DA16

g $DA17

g $DA18

g $DA19

g $DA1A

g $DA1B

g $DA1C

g $DA1D
W $DA1D,$02

g $DA1F

c $DA3C
R $DA3C B Pixel y-coordinate
R $DA3C C Pixel x-coordinate
  $DA3C,$03 #HTML(Call <a rel="noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/22AA.html">PIXEL_ADD</a>.)
  $DA3F,$01 #REGe=#REGa.
  $DA40,$02 #REGd=#N$08.
  $DA42,$04 Jump to #R$DA60 if #REGa is zero.
  $DA46,$01 #REGb=#REGe.
  $DA47,$03 #REGa=*#REGix+#N$00.
  $DA4A,$02 #REGc=#N$00.
  $DA4C,$02 Shift #REGa right.
  $DA4E,$02 Rotate #REGc right.
  $DA50,$02 Decrease counter by one and loop back to #R$DA4C until counter is zero.
  $DA52,$01 Write #REGa to *#REGhl.
  $DA53,$01 Increment #REGhl by one.
  $DA54,$01 #REGa=#REGc.
  $DA55,$01 Write #REGa to *#REGhl.
  $DA56,$01 Decrease #REGhl by one.
  $DA57,$02 Increment #REGix by one.
  $DA59,$03 Call #R$DA6D.
  $DA5C,$01 Decrease #REGd by one.
  $DA5D,$02 Jump to #R$DA46 if #REGd is not zero.
  $DA5F,$01 Return.

  $DA60,$01 #REGb=#REGd.
  $DA61,$03 #REGa=*#REGix+#N$00.
  $DA64,$01 Write #REGa to *#REGhl.
  $DA65,$03 Call #R$DA6D.
  $DA68,$02 Increment #REGix by one.
  $DA6A,$02 Decrease counter by one and loop back to #R$DA61 until counter is zero.
  $DA6C,$01 Return.

  $DA6D,$01 Increment #REGh by one.
  $DA6E,$01 #REGa=#REGh.
  $DA6F,$02,b$01 Keep only bits 0-2.
  $DA71,$01 Return if #REGh is not zero.
  $DA72,$01 #REGa=#REGh.
  $DA73,$02 #REGa-=#N$08.
  $DA75,$01 #REGh=#REGa.
  $DA76,$01 #REGa=#REGl.
  $DA77,$02 #REGa+=#N$20.
  $DA79,$01 #REGl=#REGa.
  $DA7A,$01 Return if #REGh is higher.
  $DA7B,$01 #REGa=#REGh.
  $DA7C,$02 #REGa+=#N$08.
  $DA7E,$01 #REGh=#REGa.
  $DA7F,$02,b$01 Flip bits 3-4, 6.
  $DA81,$01 Return if #REGh is not zero.
  $DA82,$02 #REGh=#N$40.
  $DA84,$01 Return.

c $DA85
  $DA85,$03 RLCA.
  $DA88,$01 #REGd=#REGa.
  $DA89,$02 #REGa=#N$B7.
  $DA8B,$01 #REGa-=#REGd.
  $DA8C,$01 #REGa-=#REGb.
  $DA8D,$01 #REGb=#REGa.
  $DA8E,$01 Return.

c $DA8F
  $DA8F,$03 RLCA.
  $DA92,$02 #REGa+=#N$09.
  $DA94,$01 #REGa-=#REGc.
  $DA95,$01 #REGc=#REGa.
  $DA96,$04 Write #REGbc to *#R$DA1D.
  $DA9A,$02 #REGa=the contents of the Memory Refresh Register.
  $DA9C,$01 #REGl=#REGa.
  $DA9D,$02 #REGh=#N$05.
  $DA9F,$01 #REGa=*#REGhl.
  $DAA0,$02,b$01 Keep only bits 0-1.
  $DAA2,$03 RLCA.
  $DAA5,$02 #REGd=#N$00.
  $DAA7,$01 #REGe=#REGa.
  $DAA8,$04 #REGix=#R$F2AE.
  $DAAC,$02 #REGix+=#REGde.
  $DAAE,$03 Jump to #R$DA3C.

c $DAB1
  $DAB1,$04 #HTML(#REGix=<a rel="noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/3D00.html">CHARSET</a>.)
  $DAB5,$04 #REGbc=*#R$DA1D.
  $DAB9,$01 Stash #REGhl on the stack.
  $DABA,$03 Call #R$DA3C.
  $DABD,$01 Restore #REGhl from the stack.
  $DABE,$01 Return.

c $DABF
  $DABF,$03 #REGa=*#R$E75D.
  $DAC2,$01 Decrease #REGa by one.
  $DAC3,$03 Write #REGa to *#R$E75F.
  $DAC6,$03 #REGa=*#R$E75E.
  $DAC9,$01 Decrease #REGa by one.
  $DACA,$03 Write #REGa to *#R$E760.
  $DACD,$02 #REGb=#N$04.
  $DACF,$01 Halt operation (suspend CPU until the next interrupt).
  $DAD0,$01 Stash #REGbc on the stack.
  $DAD1,$04 #REGb=*#R$E75F.
  $DAD5,$04 #REGc=*#R$E760.
  $DAD9,$03 Call #R$DCC2.
  $DADC,$01 Stash #REGhl on the stack.
  $DADD,$02 #REGa=#N$00.
  $DADF,$02 #REGb=#N$08.
  $DAE1,$02 Stash #REGbc and #REGhl on the stack.
  $DAE3,$02 #REGb=#N$04.
  $DAE5,$01 Write #REGa to *#REGhl.
  $DAE6,$01 Increment #REGhl by one.
  $DAE7,$02 Decrease counter by one and loop back to #R$DAE5 until counter is zero.
  $DAE9,$02 Restore #REGhl and #REGbc from the stack.
  $DAEB,$01 Increment #REGh by one.
  $DAEC,$02 Decrease counter by one and loop back to #R$DAE1 until counter is zero.
  $DAEE,$01 Restore #REGhl from the stack.
  $DAEF,$03 Call #R$DCD1.
  $DAF2,$02 #REGa=#N$47.
  $DAF4,$02 #REGb=#N$04.
  $DAF6,$01 Write #REGa to *#REGde.
  $DAF7,$01 Increment #REGde by one.
  $DAF8,$02 Decrease counter by one and loop back to #R$DAF6 until counter is zero.
  $DAFA,$01 Restore #REGbc from the stack.
  $DAFB,$03 #REGhl=#R$E75F.
  $DAFE,$01 Increment *#REGhl by one.
  $DAFF,$02 Decrease counter by one and loop back to #R$DAD0 until counter is zero.
  $DB01,$06 Return if *#R$D833 is equal to #N$00.
  $DB07,$02 #REGb=#N$03.
  $DB09,$01 Stash #REGbc on the stack.
  $DB0A,$02 #REGa=#N$05.
  $DB0C,$02 #REGc=#N$1E.
  $DB0E,$02 #REGb=#N$28.
  $DB10,$02 Shift #REGb left (with carry).
  $DB12,$02 Decrease counter by one and loop back to #R$DB12 until counter is zero.
  $DB14,$02,b$01 Flip bit 4.
  $DB16,$02 Set border to the colour held by #REGa.
  $DB18,$01 Decrease #REGc by one.
  $DB19,$02 Jump to #R$DB0E if #REGc is not zero.
  $DB1B,$02 #REGc=#N$14.
  $DB1D,$02 #REGb=#N$3C.
  $DB1F,$02 Shift #REGb left (with carry).
  $DB21,$02 Decrease counter by one and loop back to #R$DB21 until counter is zero.
  $DB23,$02,b$01 Flip bit 4.
  $DB25,$02 Set border to the colour held by #REGa.
  $DB27,$01 Decrease #REGc by one.
  $DB28,$02 Jump to #R$DB1D if #REGc is not zero.
  $DB2A,$01 Restore #REGbc from the stack.
  $DB2B,$02 Decrease counter by one and loop back to #R$DB09 until counter is zero.
  $DB2D,$01 Return.

c $DB2E Print Numbers
@ $DB2E label=Print_Numbers
R $DB2E A Number of digits to print
R $DB2E BC Screen co-ordinates where to print
R $DB2E DE Pointer to address of digits to print
  $DB2E,$01 Stash #REGaf on the stack.
  $DB2F,$03 Call #R$DCC2.
  $DB32,$01 Restore #REGaf from the stack.
  $DB33,$01 RRCA.
  $DB34,$01 #REGb=#REGa.
  $DB35,$01 #REGa=*#REGde.
  $DB36,$01 #REGc=#REGa.
  $DB37,$02,b$01 Keep only bits 4-7.
  $DB39,$01 RRCA.
  $DB3A,$03 Call #R$DB4C.
  $DB3D,$01 Increment #REGhl by one.
  $DB3E,$01 #REGa=#REGc.
  $DB3F,$02,b$01 Keep only bits 0-3.
  $DB41,$03 RLCA.
  $DB44,$03 Call #R$DB4C.
  $DB47,$01 Increment #REGde by one.
  $DB48,$01 Increment #REGhl by one.
  $DB49,$02 Decrease counter by one and loop back to #R$DB35 until counter is zero.
  $DB4B,$01 Return.

  $DB4C,$03 Stash #REGbc, #REGde and #REGhl on the stack.
  $DB4F,$02 #REGb=#N$00.
  $DB51,$01 #REGc=#REGa.
  $DB52,$01 Stash #REGhl on the stack.
  $DB53,$03 #REGhl=#R$F2CE.
  $DB56,$01 #REGhl+=#REGbc.
  $DB57,$01 Restore #REGde from the stack.
  $DB58,$02 #REGb=#N$08.
  $DB5A,$01 #REGa=*#REGhl.
  $DB5B,$01 Write #REGa to *#REGde.
  $DB5C,$01 Increment #REGhl by one.
  $DB5D,$04 #REGix=#R$D83A.
  $DB61,$04 Test bit 1 of *#REGix+#N$00.
  $DB65,$02 Jump to #R$DB77 if #REGhl is zero.
  $DB67,$05 Jump to #R$DB77 if #REGb is not equal to #N$05.
  $DB6C,$01 Stash #REGhl on the stack.
  $DB6D,$01 Exchange the #REGde and #REGhl registers.
  $DB6E,$05 #REGhl-=#N($06E0,$04,$04).
  $DB73,$01 Exchange the #REGde and #REGhl registers.
  $DB74,$01 Restore #REGhl from the stack.
  $DB75,$02 Jump to #R$DB78.
  $DB77,$01 Increment #REGd by one.
  $DB78,$02 Decrease counter by one and loop back to #R$DB5A until counter is zero.
  $DB7A,$03 Restore #REGhl, #REGde and #REGbc from the stack.
  $DB7D,$01 Return.

c $DB7E Move Tile Right
@ $DB7E label=MoveTile_Right
N $DB7E Get the current tile horizontal co-ordinate.
  $DB7E,$07 Take *#R$E75D and decrease it by one, which adjusts the value for
. the tile width. Write this value back to *#R$E75F.
N $DB85 Set the total of how many spaces the tile will be moving.
  $DB85,$04 #REGb=*#R$E761.
N $DB89 This is the tile loop, each space moved will decrease this counter by
. one.
@ $DB89 label=MoveTile_Right_Loop
  $DB89,$01 Stash the number of spaces left to move on the stack.
N $DB8A Get the current tile vertical co-ordinate.
  $DB8A,$08 Take *#R$E75E and add #N$02, which adjusts the value for the tile
. height. Write this value back to *#R$E760.
N $DB92 Start moving the tile a single space.
  $DB92,$02 Set a counter in #REGb for the height of the tile in bytes (#N$04
. rows).
@ $DB94 label=MoveTile_Right_RowLoop
  $DB94,$01 Stash the row counter (tile height) on the stack.
N $DB95 Get the screen buffer address from the co-ordinates.
  $DB95,$04 #REGb=*#R$E75F.
  $DB99,$04 #REGc=*#R$E760.
  $DB9D,$03 Call #R$DCC2.
  $DBA0,$02 Set the number of bytes in a character block to #REGa.
  $DBA2,$03 Set a counter in #REGb for the number of bytes in a row (#N$04),
. and set #REGc to #N$00 which is used for erasing the left-over tile pixels.
  $DBA5,$01 #REGhl=screen buffer address of the tile.
  $DBA6,$02 #REGde=screen buffer address of the tile (using the stack) + #N$01.
  $DBA8,$01 Stash the current screen buffer address of the tile on the stack.
N $DBA9 Start moving the current row.
@ $DBA9 label=MoveTile_Right_ColumnLoop
  $DBA9,$01 Stash the current screen buffer address of the tile on the stack.
  $DBAA,$02 Move #N($0004,$04,$04) screen data bytes from right to left.
N $DBAC This leaves the last byte unprocessed - which should be blank. So,
. let's erase it.
  $DBAC,$02 Erase the right-most byte (#REGc contains #N$00).
  $DBAE,$01 Restore the current screen buffer address from the stack.
  $DBAF,$01 Move down one row.
N $DBB0 Update the screen buffer address for the next loop iteration.
  $DBB0,$01 #REGhl=screen buffer address of the tile.
  $DBB1,$02 #REGde=screen buffer address of the tile (using the stack) + #N$01.
  $DBB3,$03 Restore #REGbc back to #N($0004,$04,$04).
  $DBB6,$01 Decrease the column/ byte counter by one.
  $DBB7,$03 Jump to #R$DBA9 until all four bytes in this row have been moved.
N $DBBA Now onto the attribute buffer bytes.
N $DBBA Convert the screen buffer location into a corresponding attribute
. buffer address.
  $DBBA,$01 Restore the current screen buffer address from the stack.
  $DBBB,$03 Call #R$DCD1.
  $DBBE,$02 #REGhl=attribute buffer address of the tile (using the stack).
  $DBC0,$01 #REGde=attribute buffer address of the tile + #N$01.
  $DBC1,$05 Move #N($0005,$04,$04) attribute bytes from right to left.
N $DBC6 This leaves the last attribute space unprocessed - which should be
. blank. So, let's erase it.
  $DBC6,$02 #REGa=#COLOUR$47.
  $DBC8,$02 Erase the right-most attribute block.
N $DBCA Move to the next attribute row.
  $DBCA,$04 Increment *#R$E75F by one.
  $DBCE,$01 Restore the attribute row counter from the stack.
  $DBCF,$02 Decrease the attribute row counter by one and loop back to #R$DB94
. until the whole row has been processed.
N $DBD1 The tile has successfully moved one space!
  $DBD1,$05 Using the number of spaces left to move (from the stack) call
. #R$DD52.
  $DBD6,$07 Take *#R$E75D and decrease it by one, which adjusts the value for
. the tile width. Write it back to *#R$E75F.
  $DBDD,$04 Increment *#R$E75E by one.
  $DBE1,$01 Restore the number of spaces left to move from the stack.
  $DBE2,$02 Decrease the number of spaces counter by one and loop back to
. #R$DB89 until the tile is in the destination space.
  $DBE4,$01 Return.

c $DBE5 Move Tile Left
@ $DBE5 label=MoveTile_Left
  $DBE5,$07 Take *#R$E75D and decrease it by one, which adjusts the value for
. the tile width. Write this value back to *#R$E75F.
N $DBEC Set the total of how many spaces the tile will be moving.
  $DBEC,$04 #REGb=*#R$E761.
N $DBF0 This is the tile loop, each space moved will decrease this counter by
. one.
@ $DBF0 label=MoveTile_Left_Loop
  $DBF0,$01 Stash the number of spaces left to move on the stack.
  $DBF1,$07 Take *#R$E75E and subtract #N$01, which adjusts the value for the
. tile height. Write this value back to *#R$E760.
N $DBF8 Start moving the tile a single space.
  $DBF8,$02 Set a counter in #REGb for the height of the tile in bytes (#N$04
. rows).
@ $DBFA label=MoveTile_Left_RowLoop
  $DBFA,$01 Stash the row counter (tile height) on the stack.
N $DBFB Get the screen buffer address from the co-ordinates.
  $DBFB,$04 #REGb=*#R$E75F.
  $DBFF,$04 #REGc=*#R$E760.
  $DC03,$03 Call #R$DCC2.
  $DC06,$02 Set the number of bytes in a character block to #REGa.
  $DC08,$03 Set a counter in #REGb for the number of bytes in a row (#N$04),
. and set #REGc to #N$00 which is used for erasing the left-over tile pixels.
  $DC0B,$01 #REGhl=screen buffer address of the tile.
  $DC0C,$02 #REGde=screen buffer address of the tile (using the stack) - #N$01.
  $DC0E,$01 Stash the current screen buffer address of the tile on the stack.
N $DC0F Start moving the current row.
@ $DC0F label=MoveTile_Left_ColumnLoop
  $DC0F,$01 Stash the current screen buffer address of the tile on the stack.
  $DC10,$02 Move #N($0004,$04,$04) screen data bytes from left to right.
N $DC12 This leaves the last byte unprocessed - which should be blank. So,
. let's erase it.
  $DC12,$02 Erase the right-most byte (#REGc contains #N$00).
  $DC14,$01 Restore the current screen buffer address from the stack.
  $DC15,$01 Move down one row.
N $DC16 Update the screen buffer address for the next loop iteration.
  $DC16,$01 #REGhl=screen buffer address of the tile.
  $DC17,$02 #REGde=screen buffer address of the tile (using the stack) - #N$01.
  $DC19,$03 Restore #REGbc back to #N($0004,$04,$04).
  $DC1C,$01 Decrease the column/ byte counter by one.
  $DC1D,$03 Jump to #R$DC0F until all four bytes in this row have been moved.
N $DC20 Now onto the attribute buffer bytes.
N $DC20 Convert the screen buffer location into a corresponding attribute
. buffer address.
  $DC20,$01 Restore the current screen buffer address from the stack.
  $DC21,$03 Call #R$DCD1.
  $DC24,$02 #REGhl=attribute buffer address of the tile (using the stack).
  $DC26,$01 #REGde=attribute buffer address of the tile - #N$01.
  $DC27,$05 Move #N($0005,$04,$04) attribute bytes from left to right.
N $DC2C This leaves the last attribute space unprocessed - which should be
. blank. So, let's erase it.
  $DC2C,$02 #REGa=#COLOUR$47.
  $DC2E,$02 Erase the right-most attribute block.
N $DC30 Move to the next attribute row.
  $DC30,$04 Increment *#R$E75F by one.
  $DC34,$01 Restore the attribute row counter from the stack.
  $DC35,$02 Decrease the attribute row counter by one and loop back to #R$DBFA
. until the whole row has been processed.
N $DC37 The tile has successfully moved one space!
  $DC37,$05 Using the number of spaces left to move (from the stack) call
. #R$DD52.
  $DC3C,$07 Take *#R$E75D and decrease it by one, which adjusts the value for
. the tile width. Write it back to *#R$E75F.
  $DC43,$04 Decrease *#R$E75E by one.
  $DC47,$01 Restore the number of spaces left to move from the stack.
  $DC48,$02 Decrease the number of spaces counter by one and loop back to
. #R$DBF0 until the tile is in the destination space.
  $DC4A,$01 Return.

c $DC4B Move Tile Down
@ $DC4B label=MoveTile_Down
  $DC4B,$07 Take *#R$E75E and store it in #REGa. Decrease it by one, which
. adjusts the value for the tile height, and write this value to *#R$E760.
  $DC52,$04 Load #REGb with *#R$E761.
@ $DC56 label=MoveTile_Down_Loop
  $DC56,$01 Stash the row counter on the stack.
  $DC57,$08 Take *#R$E75D and store it in #REGa. Add #N$02, which adjusts the
. value for the tile height, and write this value to *#R$E75F.
  $DC5F,$02 Set a counter in #REGb for the height of the tile in bytes (#N$04).
@ $DC61 label=MoveTile_Down_RowLoop
  $DC61,$01 Stash the row (tile height) counter on the stack.
  $DC62,$04 #REGb=*#R$E75F.
  $DC66,$04 #REGc=*#R$E760.
  $DC6A,$03 Call #R$DCC2.
  $DC6D,$01 Stash the destination screen buffer address on the stack.
  $DC6E,$01 Increment #REGb by one.
  $DC6F,$03 Call #R$DCC2.
  $DC72,$02 #REGde=screen buffer address of the tile (using the stack).
  $DC74,$01 Restore the destination screen buffer address from the stack.
  $DC75,$02 Load the number of pixels per row in #REGa.
  $DC77,$03 Set the count for the size of the tile in #REGbc (#N($0004,$04,$04)
. character blocks).
  $DC7A,$01 Stash #REGhl on the stack.
@ $DC7B label=MoveTile_Down_PixelShift
  $DC7B,$02 Stash #REGhl and #REGde on the stack.
  $DC7D,$02 LDIR.
  $DC7F,$01 Decrease #REGhl by one.
  $DC80,$01 Stash #REGhl on the stack.
  $DC81,$01 Write #REGc to *#REGhl.
  $DC82,$01 Restore #REGde from the stack.
  $DC83,$01 Decrease #REGde by one.
  $DC84,$03 #REGbc=#N($0003,$04,$04).
  $DC87,$02 LDDR.
  $DC89,$02 Restore #REGde and #REGhl from the stack.
  $DC8B,$01 Move to the next pixel row in the destination address.
  $DC8C,$01 Move to the next pixel row in the source address.
  $DC8D,$03 #REGbc=#N($0004,$04,$04).
  $DC90,$01 Decrease the pixel row counter by one.
  $DC91,$03 Jump back to #R$DC7B until all pixels in the row have been moved.
  $DC94,$01 Restore #REGhl from the stack.
  $DC95,$03 Call #R$DCD1.
N $DC98 Move #REGde down one attribute row.
  $DC98,$05 #REGde+=#N($0020,$04,$04).
  $DC9D,$05 Copy #N($0004,$04,$04) attribute bytes from .
  $DCA2,$03 #REGbc=#N($0003,$04,$04).
  $DCA5,$02 #REGa=#COLOUR$47.
  $DCA7,$01 Decrease #REGhl by one.
  $DCA8,$01 Write #REGa to *#REGhl.
  $DCA9,$01 Stash #REGhl on the stack.
  $DCAA,$01 Restore #REGde from the stack.
  $DCAB,$01 Decrease #REGde by one.
  $DCAC,$02 LDDR.
  $DCAE,$04 Decrease *#R$E75F by one.
  $DCB2,$01 Restore the pixel row counter from the stack.
  $DCB3,$02 Decrease the pixel row counter by one and loop back to #R$DC61
. until counter is zero.
  $DCB5,$02 Restore the row counter from the stack for the sound generator, but
. keep a copy of it back on the stack.
  $DCB7,$03 Call #R$DD52.
  $DCBA,$04 Increment *#R$E75D by one.
  $DCBE,$01 Restore the number of spaces left to move from the stack.
  $DCBF,$02 Decrease the number of spaces counter by one and loop back to
. #R$DC56 until the tile is in the destination space.
  $DCC1,$01 Return.

c $DCC2 Calculate Screen Block Address
@ $DCC2 label=Calculate_ScreenBlockAddress
R $DCC2 B X co-ordinate
R $DCC2 C Y co-ordinate
R $DCC2 O:HL Screen buffer address pointer
  $DCC2,$01 Load the X position into #REGa.
  $DCC3,$02,b$01 Divide X by #N$08 to extract only the column number.
  $DCC5,$03 Add #N$40 to get the high byte of screen address and store the result in #REGh.
  $DCC8,$01 Load the X position into #REGa again.
  $DCC9,$02,b$01 Extract only the pixel offset within the character block.
  $DCCB,$03 Multiply #REGa by #N$20.
  $DCCE,$02 Add the Y co-ordinate store the result in #REGl.
  $DCD0,$01 Return.

c $DCD1 Calculate Attribute Address
@ $DCD1 label=Calculate_AttributeAddress
R $DCD1 HL Screen buffer address
R $DCD1 O:DE Attribute buffer address
  $DCD1,$01 #REGa=high byte of the screen address.
N $DCD2 Isolate the screen third area.
  $DCD2,$03 Move the relevant bits to positions 0-1.
  $DCD5,$02,b$01 Keep only those bits.
N $DCD7 This sets #N$58 on top of the result, which is the base address for the
. attribute buffer. Will result in either: #N$58#RAW(,) #N$59 or #N$5A.
  $DCD7,$02,b$01 Set bits 3-4 and 6.
  $DCD9,$01 Store the result in #REGd, this is the high byte of the attribute
. buffer address.
  $DCDA,$01 #REGe=low byte of the screen address.
  $DCDB,$01 Return.

c $DCDC Move Tile Up
@ $DCDC label=MoveTile_Up
  $DCDC,$07 Take *#R$E75E and store it in #REGa. Decrease it by one, which
. adjusts the value for the tile height, and write this value to *#R$E760.
  $DCE3,$04 #REGb=*#R$E761.
@ $DCE7 label=MoveTile_Up_Loop
  $DCE7,$01 Stash the row counter on the stack.
  $DCE8,$03 #REGa=*#R$E75D.
  $DCEB,$01 Decrease #REGa by one.
  $DCEC,$03 Write #REGa to *#R$E75F.
  $DCEF,$02 #REGb=#N$04.
  $DCF1,$01 Stash the row (tile height) counter on the stack.
  $DCF2,$04 #REGb=*#R$E75F.
  $DCF6,$04 #REGc=*#R$E760.
  $DCFA,$03 Call #R$DCC2.
  $DCFD,$01 Stash the destination screen buffer address on the stack.
  $DCFE,$01 Decrease #REGb by one.
  $DCFF,$03 Call #R$DCC2.
  $DD02,$02 #REGde=screen buffer address of the tile (using the stack).
  $DD04,$01 Restore the destination screen buffer address from the stack.
  $DD05,$02 #REGa=#N$08.
  $DD07,$03 #REGbc=#N($0004,$04,$04).
  $DD0A,$03 Stash #REGhl, #REGhl and #REGde on the stack.
  $DD0D,$02 LDIR.
  $DD0F,$01 Decrease #REGhl by one.
  $DD10,$01 Stash #REGhl on the stack.
  $DD11,$01 Write #REGc to *#REGhl.
  $DD12,$01 Restore #REGde from the stack.
  $DD13,$01 Decrease #REGde by one.
  $DD14,$03 #REGbc=#N($0003,$04,$04).
  $DD17,$02 LDDR.
  $DD19,$02 Restore #REGde and #REGhl from the stack.
  $DD1B,$01 Increment #REGd by one.
  $DD1C,$01 Increment #REGh by one.
  $DD1D,$03 #REGbc=#N($0004,$04,$04).
  $DD20,$01 Decrease #REGa by one.
  $DD21,$03 Jump to #R$DD0B if #REGa is not zero.
  $DD24,$01 Restore #REGhl from the stack.
  $DD25,$03 Call #R$DCD1.
N $DD28 Move #REGde up one attribute row.
  $DD28,$05 #REGde+=#N$FFE0 (subtract #N($0020,$04,$04)).
  $DD2D,$03 #REGbc=#N($0004,$04,$04).
  $DD30,$02 LDIR.
  $DD32,$03 #REGbc=#N($0003,$04,$04).
  $DD35,$02 #REGa=#COLOUR$47.
  $DD37,$01 Decrease #REGhl by one.
  $DD38,$01 Write #REGa to *#REGhl.
  $DD39,$01 Stash #REGhl on the stack.
  $DD3A,$01 Restore #REGde from the stack.
  $DD3B,$01 Decrease #REGde by one.
  $DD3C,$02 LDDR.
  $DD3E,$03 #REGhl=#R$E75F.
  $DD41,$01 Increment *#REGhl by one.
  $DD42,$01 Restore #REGbc from the stack.
  $DD43,$02 Decrease counter by one and loop back to #R$DCF1 until counter is zero.
  $DD45,$01 Restore #REGbc from the stack.
  $DD46,$01 Stash #REGbc on the stack.
  $DD47,$03 Call #R$DD52.
  $DD4A,$03 #REGhl=#R$E75D.
  $DD4D,$01 Decrease *#REGhl by one.
  $DD4E,$01 Restore the number of spaces left to move from the stack.
  $DD4F,$02 Decrease the number of spaces counter by one and loop back to
. #R$DCE7 until the tile is in the destination space.
  $DD51,$01 Return.

c $DD52 Sound: Tile Movement
@ $DD52 label=Sound_TileMovement
R $DD52 B Loop counter
  $DD52,$03 #REGhl=#R$E761.
  $DD55,$02 Load the base pitch value (#N$14) into #REGa.
  $DD57,$01 Subtract the number of tile slots moved from the base pitch.
  $DD58,$01 #REGc=#REGb.
  $DD59,$04 Multiply #REGc by #N$04.
  $DD5D,$02 #REGc+=#REGa.
  $DD5F,$02 #REGa=#N$05.
  $DD61,$01 #REGb=#REGc.
  $DD62,$02 Shift #REGb left (with carry).
  $DD64,$02 Decrease counter by one and loop back to #R$DD64 until counter is zero.
  $DD66,$02,b$01 Flip bit 4.
  $DD68,$02 Send to the speaker.
  $DD6A,$01 Decrease #REGc by one.
  $DD6B,$03 Jump to #R$DD61 if #REGc is not zero.
  $DD6E,$01 Return.

g $DD6F
@ $DD6F label=Temp_X_Coordinate
@ $DD70 label=Temp_Y_Coordinate
B $DD6F,$02,$01
@ $DD71 label=Temp_SourceAddress
W $DD71,$02

c $DD73 Print Helper Preview Image
@ $DD73 label=Print_HelperPreviewImage
N $DD73 Takes the generated image at #R$A0E3, and creates a preview image from
. it.
N $DD73 #PUSHS #UDGTABLE(default,centre,centre,centre)
. #SIM(start=$D1F1,stop=$D1F7,sp=$FFFA)
. { #FOR$01,$03(n,=h Level #Nn, | ) }
. { #FOREACH($5B00,$6182,$6AFF)!!n!
.   #SIM(start=$D34E,stop=$D351,ix=n,sp=$FFFA)#SIM(start=$D22C,stop=$D232)#SCR$02{$160,$20,$A0,$A0}(helper-image-n)! | !!
. }
. { #FOR$04,$06(n,=h Level #Nn, | ) }
. { #FOREACH($730A,$783C,$7CFD)!!n!
.   #SIM(start=$D34E,stop=$D351,ix=n)#SIM(start=$D22C,stop=$D232)#SCR$02{$160,$20,$A0,$A0}(helper-image-n)! | !!
. }
. { #FOR$07,$09(n,=h Level #Nn, | ) }
. { #FOREACH($8106,$89D2,$9110)!!n!
.   #SIM(start=$D34E,stop=$D351,ix=n)#SIM(start=$D22C,stop=$D232)#SCR$02{$160,$20,$A0,$A0}(helper-image-n)! | !!
. }
. UDGTABLE#
. Marilyn Monroe has no preview image, but if she did, it would look like this:
. #UDGTABLE(default,centre) { =h Level #N$0A }
. { #SIM(start=$D34E,stop=$D351,ix=$9772)#SIM(start=$D22C,stop=$D232)#SCR$02{$160,$20,$A0,$A0}(helper-image-$9772) }
. UDGTABLE# #POPS
  $DD73,$02 Set the initial X co-ordinate in #REGb.
  $DD75,$02 Set the initial Y co-ordinate in #REGc.
  $DD77,$01 Stash the co-ordinates on the stack.
  $DD78,$03 Call #R$DCC2.
  $DD7B,$02 Set a counter in #REGb for #N$08.
  $DD7D,$01 Stash the counter on the stack.
  $DD7E,$02 Set a counter in #REGb for #N$0A.
  $DD80,$01 Stash the screen buffer address pointer on the stack.
  $DD81,$02 Write #N$00 to *#REGhl.
  $DD83,$01 Increment the screen buffer address pointer by one.
  $DD84,$02 Decrease the counter by one and loop back to #R$DD81 until the counter is zero.
  $DD86,$01 Restore the original screen buffer address from the stack.
  $DD87,$01 Move down one line.
  $DD88,$01 Restore the counter from the stack.
  $DD89,$02 Decrease the counter by one and loop back to #R$DD7D until the counter is zero.
  $DD8B,$01 Restore the original co-ordinates from the stack.
  $DD8C,$01 Increment #REGb by one.
  $DD8D,$05 Jump to #R$DD77 if #REGb is not equal to #N$0C.
  $DD92,$05 Write #N$B0 to *#R$DD6F.
  $DD97,$05 Write #N$20 to *#R$DD70.
  $DD9C,$06 Write #R$A0E3 to *#R$DD71.
  $DDA2,$02 #REGb=#N$40.
  $DDA4,$01 Stash #REGbc on the stack.
  $DDA5,$04 #REGh=*#R$DD6F.
  $DDA9,$04 #REGl=*#R$DD70.
  $DDAD,$03 Call #R$DE51.
  $DDB0,$03 Load the screen buffer address into #REGix (using the stack).
  $DDB3,$02 Set a counter in #REGb for #N$02.
  $DDB5,$03 Stash the counter and the screen buffer address on the stack.
  $DDB8,$03 #REGhl=*#R$DD71.
  $DDBB,$02 #REGb=#N$0A.
  $DDBD,$01 #REGa=#N$00.
  $DDBE,$01 #REGd=*#REGhl.
  $DDBF,$01 Increment #REGhl by one.
  $DDC0,$01 #REGe=*#REGhl.
  $DDC1,$01 Increment #REGhl by one.
  $DDC2,$03 Call #R$DDE0.
  $DDC5,$03 #REGd=*#REGix+#N$00.
  $DDC8,$01 Set the bits from #REGd.
  $DDC9,$03 Write #REGa to *#REGix+#N$00.
  $DDCC,$02 Increment #REGix by one.
  $DDCE,$02 Decrease counter by one and loop back to #R$DDBD until counter is zero.
  $DDD0,$02 Restore #REGix from the stack.
  $DDD2,$03 Write #REGhl to *#R$DD71.
  $DDD5,$01 Restore #REGbc from the stack.
  $DDD6,$02 Decrease counter by one and loop back to #R$DDB5 until counter is zero.
  $DDD8,$03 #REGhl=#R$DD70.
  $DDDB,$01 Increment *#REGhl by one.
  $DDDC,$01 Restore #REGbc from the stack.
  $DDDD,$02 Decrease counter by one and loop back to #R$DDA4 until counter is zero.
  $DDDF,$01 Return.
N $DDE0 Magic.
  $DDE0,$02 Rotate #REGd left (through the carry flag).
  $DDE2,$03 Jump to #R$DDE7 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DDE5,$02,b$01 Set bit 7.
  $DDE7,$02 Rotate #REGd left (through the carry flag).
  $DDE9,$03 Jump to #R$DDEE if the carry flag isn't set (if the leftmost bit
. was 0).
  $DDEC,$02,b$01 Set bit 7.
  $DDEE,$02 Rotate #REGd left (through the carry flag).
  $DDF0,$03 Jump to #R$DDF5 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DDF3,$02,b$01 Set bit 6.
  $DDF5,$02 Rotate #REGd left (through the carry flag).
  $DDF7,$03 Jump to #R$DDFC if the carry flag isn't set (if the leftmost bit
. was 0).
  $DDFA,$02,b$01 Set bit 6.
  $DDFC,$02 Rotate #REGd left (through the carry flag).
  $DDFE,$03 Jump to #R$DE03 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE01,$02,b$01 Set bit 5.
  $DE03,$02 Rotate #REGd left (through the carry flag).
  $DE05,$03 Jump to #R$DE0A if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE08,$02,b$01 Set bit 5.
  $DE0A,$02 Rotate #REGd left (through the carry flag).
  $DE0C,$03 Jump to #R$DE11 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE0F,$02,b$01 Set bit 4.
  $DE11,$02 Rotate #REGd left (through the carry flag).
  $DE13,$03 Jump to #R$DE18 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE16,$02,b$01 Set bit 4.
  $DE18,$02 Rotate #REGe left (through the carry flag).
  $DE1A,$03 Jump to #R$DE1F if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE1D,$02,b$01 Set bit 3.
  $DE1F,$02 Rotate #REGe left (through the carry flag).
  $DE21,$03 Jump to #R$DE26 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE24,$02,b$01 Set bit 3.
  $DE26,$02 Rotate #REGe left (through the carry flag).
  $DE28,$03 Jump to #R$DE2D if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE2B,$02,b$01 Set bit 2.
  $DE2D,$02 Rotate #REGe left (through the carry flag).
  $DE2F,$03 Jump to #R$DE34 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE32,$02,b$01 Set bit 2.
  $DE34,$02 Rotate #REGe left (through the carry flag).
  $DE36,$03 Jump to #R$DE3B if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE39,$02,b$01 Set bit 1.
  $DE3B,$02 Rotate #REGe left (through the carry flag).
  $DE3D,$03 Jump to #R$DE42 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE40,$02,b$01 Set bit 1.
  $DE42,$02 Rotate #REGe left (through the carry flag).
  $DE44,$03 Jump to #R$DE49 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE47,$02,b$01 Set bit 0.
  $DE49,$02 Rotate #REGe left (through the carry flag).
  $DE4B,$03 Jump to #R$DE50 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DE4E,$02,b$01 Set bit 0.
  $DE50,$01 Return.

c $DE51 Calculate Screen Address
@ $DE51 label=CalculateScreenAddress
R $DE51 HL X/Y Co-ordinates
R $DE51 O:DE Screen buffer address
  $DE51,$01 Load the X co-ordinate into #REGa.
  $DE52,$02,b$01 Keep only bits 6-7.
  $DE54,$01 Rotate the result right through the carry flag.
  $DE55,$01 Set the carry flag.
  $DE56,$01 Rotate right through the carry flag.
  $DE57,$01 Rotate right (no carry flag).
  $DE58,$01 Combine the bits with the original X co-ordinate.
  $DE59,$02,b$01 Keep only bits 3-7.
  $DE5B,$01 Combine the bits with the original X co-ordinate again.
  $DE5C,$01 Store the result in #REGd (high byte of the screen buffer address).
  $DE5D,$01 Load the Y co-ordinate into #REGa.
  $DE5E,$03 Multiply by #N$08.
  $DE61,$01 Combine the bits with the original X co-ordinate.
  $DE62,$02,b$01 Keep only bits 0-2, 6-7.
  $DE64,$01 Combine the bits with the original X co-ordinate again.
  $DE65,$02 Multiply by #N$04.
  $DE67,$01 Store result in #REGe (low byte of the screen buffer address).
  $DE68,$01 Return.

c $DE69 Draw Tile
@ $DE69 label=Draw_Tile
  $DE69,$04 Set #REGix to #R$DF58.
  $DE6D,$02 Initialise #REGb to #N$00 for the sum below.
  $DE6F,$03 Load *#R$E2C7 into #REGa.
N $DE72 Find which spritesheet the image is located in. There are #N$14 sprites
. in each sheet, so test if the sprite ID is less than #N$15 to check if it's
. in the first one. Else, subtract #N$14 and check again.
  $DE72,$02 Set a counter in #REGc with #N$03 to track the three spritesheets
. (two item sheets and one for the game tiles).
@ $DE74 label=FindSpritesheet_Loop
  $DE74,$05 Jump to #R$DE80 if #REGa is lower than #N$15 (unsigned comparison).
  $DE79,$02 Subtract #N$14 from #REGa.
  $DE7B,$01 Decrease #REGc by one.
  $DE7C,$02 Jump back to #R$DE74 until #REGc is zero.
N $DE7E Default the sprite ID to #N$01.
  $DE7E,$02 #REGa=#N$01.
N $DE80 Adjust the sprite ID for 0-based indexing.
@ $DE80 label=LocateSprite
  $DE80,$01 Decrease the sprite ID by one.
N $DE81 There are #N$04 offset bytes, so multiply the sprite ID by #N$04 to
. find the relevant offsets in the table.
  $DE81,$03 Multiply the sprite ID by #N$04 and store the result in #REGc.
N $DE84 Fetch the offsets for the sprite being processed.
  $DE84,$02 Add the result to #REGix to locate the offsets for the tile.
  $DE86,$06 Fetch the graphic data offset and store it in #REGbc.
  $DE8C,$06 Fetch the attribute data offset and store it in #REGde.
N $DE92 Calculate the graphic data address.
  $DE92,$06 Add *#R$E2C8 and the offset in #REGbc to locate the start of the
. graphics data - store the result in #REGix.
N $DE98 Calculate the attribute address.
  $DE98,$0B Add *#R$E2C8 and #N($0A00,$04,$04) to locate the start of the
. attributes for the spritesheet. Then, add the offset held in #REGde to the
. total, this will locate the start of the attributes for the sprite currently
. being processed - store the result in #REGiy (using the stack).
N $DEA3 Print the sprite to the screen.
  $DEA3,$02 #REGb=#N$04.
  $DEA5,$02 #REGh=#N$28.
  $DEA7,$01 Stash #REGbc on the stack.
  $DEA8,$02 #REGa=#N$08.
  $DEAA,$02 Stash #REGix on the stack.
  $DEAC,$03 #REGbc=#N($0014,$04,$04).
  $DEAF,$01 Stash #REGaf on the stack.
  $DEB0,$01 #REGl=#REGa.
  $DEB1,$03 Call #R$DE51.
  $DEB4,$04 Write *#REGix+#N$00 to *#REGde.
  $DEB8,$02 #REGix+=#REGbc.
  $DEBA,$01 Restore #REGaf from the stack.
  $DEBB,$01 Increment #REGa by one.
  $DEBC,$05 Jump to #R$DEAF if #REGa is not equal to #N$28.
N $DEC1 Switch #REGix to point to the attributes.
  $DEC1,$04 #REGix=#REGiy (using the stack).
  $DEC5,$03 #REGde=#N$5825 (attribute buffer location).
  $DEC8,$02 #REGb=#N$04.
  $DECA,$01 Stash #REGhl on the stack.
@ $DECB label=Colour_Tile_Loop
  $DECB,$01 Stash #REGbc on the stack.
  $DECC,$04 Write *#REGix+#N$00 to *#REGde.
  $DED0,$05 #REGix+=#N($0014,$04,$04).
  $DED5,$05 #REGde+=#N($0020,$04,$04).
  $DEDA,$01 Restore #REGbc from the stack.
  $DEDB,$02 Decrease counter by one and loop back to #R$DECB until counter is zero.
  $DEDD,$04 Restore #REGhl, #REGix and #REGbc from the stack.
  $DEE1,$01 #REGa=#REGb.
  $DEE2,$04 Stash #REGbc, #REGix and #REGhl on the stack.
  $DEE6,$05 Jump to #R$DF4B if #REGa is equal to #N$01.
  $DEEB,$02 #REGa=#N$05.
  $DEED,$02 #REGc=#N$23.
  $DEEF,$01 #REGb=#REGc.
  $DEF0,$02 Shift #REGb left (with carry).
  $DEF2,$02 Decrease counter by one and loop back to #R$DEF2 until counter is zero.
  $DEF4,$02,b$01 Flip bit 4.
  $DEF6,$02 Send to the speaker.
  $DEF8,$01 Decrease #REGc by one.
  $DEF9,$03 Jump to #R$DEEF until #REGc is zero.
  $DEFC,$03 #REGhl=#N$1388.
  $DEFF,$03 #REGde=#N$04E2.
  $DF02,$01 #REGa=*#REGhl.
  $DF03,$02,b$01 Keep only bits 4-7.
  $DF05,$02,b$01 Set bits 0, 2.
  $DF07,$02 Send to the speaker.
  $DF09,$01 Increment #REGhl by one.
  $DF0A,$01 Decrease #REGde by one.
  $DF0B,$05 Jump to #R$DF02 if #REGde is not zero.
  $DF10,$05 Write #N$01 to *#R$E75F.
  $DF15,$02 #REGb=#N$04.
  $DF17,$01 Stash #REGbc on the stack.
  $DF18,$04 #REGb=*#R$E75F.
  $DF1C,$02 #REGc=#N$07.
  $DF1E,$03 Call #R$DCC2.
  $DF21,$02 #REGa=#N$08.
  $DF23,$01 Stash #REGhl on the stack.
  $DF24,$03 #REGbc=#N($0003,$04,$04).
  $DF27,$02 #REGde=#REGhl (using the stack).
  $DF29,$01 Increment #REGde by one.
  $DF2A,$01 Stash #REGhl on the stack.
  $DF2B,$02 LDDR.
  $DF2D,$01 Increment #REGhl by one.
  $DF2E,$01 Write #REGc to *#REGhl.
  $DF2F,$01 Restore #REGhl from the stack.
  $DF30,$01 Increment #REGh by one.
  $DF31,$01 Decrease #REGa by one.
  $DF32,$03 Jump to #R$DF24 until #REGa is zero.
  $DF35,$01 Restore #REGhl from the stack.
  $DF36,$03 Call #R$DCD1.
  $DF39,$02 #REGhl=#REGde (using the stack).
  $DF3B,$01 Increment #REGde by one.
  $DF3C,$03 #REGbc=#N($0003,$04,$04).
  $DF3F,$02 LDDR.
  $DF41,$03 Write #N$00 to *#REGde.
  $DF44,$03 #REGhl=#R$E75F.
  $DF47,$01 Increment *#REGhl by one.
  $DF48,$01 Restore #REGbc from the stack.
  $DF49,$02 Decrease counter by one and loop back to #R$DF17 until counter is zero.
  $DF4B,$03 Restore #REGhl and #REGix from the stack.
  $DF4E,$02 Decrease #REGix by one.
  $DF50,$02 Decrease #REGiy by one.
  $DF52,$01 Restore #REGbc from the stack.
  $DF53,$01 Decrease #REGb by one.
  $DF54,$03 Jump to #R$DEA7 until #REGb is zero.
  $DF57,$01 Return.

g $DF58 Table: Tile Data Offsets
@ $DF58 label=Table_TileDataOffsets
D $DF58 Used by the routine at #R$DE69.
N $DF58 Tile: #N($01+((#PC-$DF58)/$04)).
W $DF58,$02 Graphics data offset.
W $DF5A,$02 Attribute data offset.
L $DF58,$04,$14

c $DFA8
  $DFA8,$01 Write #REGa to *#REGhl.
  $DFA9,$01 Increment #REGhl by one.
  $DFAA,$01 Write #REGa to *#REGhl.
  $DFAB,$02 #REGc=#N$20.
  $DFAD,$01 #REGhl+=#REGbc.
  $DFAE,$01 Write #REGa to *#REGhl.
  $DFAF,$01 Decrease #REGhl by one.
  $DFB0,$01 Write #REGa to *#REGhl.
  $DFB1,$01 Return.

c $DFB2
R $DFB2 A Item ID
  $DFB2,$03 Write #REGa to *#R$E2C7.
  $DFB5,$03 Return if #REGa is lower than #N$01.
  $DFB8,$03 Return if #REGa is greater than or equal to #N$15.
  $DFBB,$07 Jump to #R$DFD4 if *#R$D837 is equal to #N$00.
  $DFC2,$03 #REGhl=#R$DFEF(#N$DFEE).
  $DFC5,$02 #REGb=#N$00.
  $DFC7,$01 #REGc=*#R$D837.
  $DFC8,$01 #REGhl+=#REGbc.
  $DFC9,$01 #REGc=*#REGhl.
  $DFCA,$03 #REGhl=#N$5896 (attribute buffer location).
  $DFCD,$01 #REGhl+=#REGbc.
  $DFCE,$03 #REGa=*#R$E003.
  $DFD1,$03 Call #R$DFA8.
  $DFD4,$06 Write *#R$E2C7 to *#R$D837.
  $DFDA,$03 #REGhl=#R$DFEF(#N$DFEE).
  $DFDD,$02 #REGb=#N$00.
  $DFDF,$01 #REGc=*#R$E2C7.
  $DFE0,$01 #REGhl+=#REGbc.
  $DFE1,$01 #REGc=*#REGhl.
  $DFE2,$03 #REGhl=#N$5896 (attribute buffer location).
  $DFE5,$01 #REGhl+=#REGbc.
  $DFE6,$04 Write *#REGhl to *#R$E003.
  $DFEA,$02 #REGa=#COLOUR$78.
  $DFEC,$03 Jump to #R$DFA8.
B $DFEF,$14,$05
B $E003

c $E004 Generate Picture
@ $E004 label=GeneratePicture
R $E004 IX Pointer to level graphics data
N $E004 #REGix will point to one of:
. #TABLE(default,centre,centre)
. { =h Address | =h Level }
. { #R$5B00 | Level 01 }
. { #R$6182 | Level 02 }
. { #R$6AFF | Level 03 }
. { #R$730A | Level 04 }
. { #R$783C | Level 05 }
. { #R$7CFD | Level 06 }
. { #R$8106 | Level 07 }
. { #R$89D2 | Level 08 }
. { #R$9110 | Level 09 }
. { #R$9772 | Level 10 }
. TABLE#
  $E004,$03 #REGhl=#R$A0E3.
N $E007 Clear down the buffer ready for the new image to be generated.
  $E007,$03 #REGbc=#N($0B40,$04,$04).
  $E00A,$02 Write #N$00 to *#REGhl.
  $E00C,$03 #REGde=#R$A0E3+#N$01 (using the stack).
  $E00F,$02 Clear #N($0B40,$04,$04) bytes of data in #R$A0E3.
  $E011,$05 Write #N$80 to *#R$E0DE.
@ $E016 label=GeneratePicture_Loop
  $E016,$06 #REGa=#N$80-*#R$E0DE.
  $E01C,$02 #REGb=#N$14.
  $E01E,$03 Load #REGa into #REGde.
  $E021,$03 Starting from the first address at #R$A0E3, stored in #REGhl...
@ $E024 label=GeneratePicture_CurrentLine_Loop
  $E024,$01 Keep adding #REGde to #REGhl.
  $E025,$02 Decrease counter by one and loop back to #R$E024 until counter is zero.
  $E027,$03 Write #REGhl to *#R$E0E0.
  $E02A,$03 Fetch a byte from the level graphics data pointer.
  $E02D,$02 Increment the level graphics data pointer by one.
  $E02F,$04 Jump to #R$E067 if #REGa is equal to #N$C9.
  $E033,$04 Jump to #R$E045 if #REGa is equal to #N$CA.
  $E037,$03 Copy the level graphics data pointer into #REGde (using the stack).
  $E03A,$01 Exchange the #REGde and #REGhl registers.
  $E03B,$05 Copy #N($0014,$04,$04) bytes of data from #REGhl to #REGde.
  $E040,$03 Update the level graphics data pointer in #REGix with the progress
. made from #REGhl (using the stack).
  $E043,$02 Jump to #R$E0B0.
N $E045 Run-length decoding.
@ $E045 label=GeneratePicture_RLE_Decoding
  $E045,$03 Copy the level graphics data pointer into #REGde (using the stack).
@ $E048 label=GeneratePicture_RLE_NormalData
  $E048,$01 Fetch a byte from the level graphics data pointer in #REGde.
  $E049,$04 Jump to #R$E052 if the byte is #N$00.
  $E04D,$01 Else, write the byte to the image buffer.
  $E04E,$01 Increment the image buffer pointer by one.
  $E04F,$01 Increment the level graphics data pointer (in #REGde) by one.
  $E050,$02 Jump to #R$E048.
@ $E052 label=GeneratePicture_RLE_RepeatZero
  $E052,$01 Increment the level graphics data pointer (in #REGde) by one.
  $E053,$01 Fetch a byte from the level graphics data pointer in #REGde.
  $E054,$04 Jump to #R$E061 if the byte is #N$00.
  $E058,$01 Copy the fetched byte into #REGb as a repeat counter
  $E059,$02 Write #N$00 to the image buffer.
@ $E05A label=GeneratePicture_RLE_RepeatZero_Loop
  $E05B,$01 Increment the image buffer pointer by one.
  $E05C,$02 Decrease the byte repeat counter by one and loop back to #R$E05A
. until the counter is zero.
  $E05E,$01 Increment the level graphics data pointer (in #REGde) by one.
  $E05F,$02 Jump to #R$E048.
@ $E061 label=GeneratePicture_RLE_Next
  $E061,$01 Increment the level graphics data pointer (in #REGde) by one.
  $E062,$03 Update the level graphics data pointer in #REGix with the progress
. made from #REGde (using the stack).
  $E065,$02 Jump to #R$E0B0.
N $E067 Second
@ $E067 label=ProcessCompressedImageData
  $E067,$03 Load the repeat count into #REGb.
  $E06A,$06 Write the operation code to *#R$E0DF.
@ $E070 label=ProcessOperationBlock_Loop
  $E070,$01 Stash the repeat count on the stack.
  $E071,$03 Load the operation code into #REGa.
  $E074,$04 Jump to #R$E080 if the operation code is #N$C9.
  $E078,$04 Jump to #R$E080 if the operation code is #N$CA.
  $E07C,$04 Jump to #R$E083 if the operation code is not #N$CB.
@ $E080 label=ProcessCompressedImageData_Next
  $E080,$01 Restore the repeat count from the stack.
  $E081,$02 Jump to #R$E0B0.
@ $E083 label=ProcessBitOperation
  $E083,$02,b$01 Keep only bits 3-7.
  $E085,$01 #REGd=#REGa.
M $E083,$03 Mask to get the byte offset within the current line, store this in #REGd.
  $E086,$04 Divide the byte offset by #N$08 to get the pixel offset, store this in #REGe.
  $E08A,$03 Reload the operation code into #REGa.
  $E08D,$01 Subtract to calculate the number of bits to modify.
  $E08E,$02 #REGd=#N$00.
  $E090,$01 #REGhl+=#REGde.
  $E091,$01 Set the bit count in #REGb.
  $E092,$01 Adjust #REGb for the loop.
  $E093,$01 #REGa=*#REGhl.
  $E094,$01 Clear the carry flag.
  $E095,$01 Stash the bit count on the stack.
@ $E096 label=RotateBitsLeft_Loop
  $E096,$01 Rotate left, moving bits one position to the left.
  $E097,$02 Decrease counter by one and loop back to #R$E096 until counter is zero.
  $E099,$01 Set the carry flag.
  $E09A,$01 Restore the bit count from the stack.
@ $E09B label=RotateBitsRight_Loop
  $E09B,$01 Rotate right, moving bits back and inserting #N$01.
  $E09C,$02 Decrease the bit count by one and loop back to #R$E09B until all
. bits have been processed.
  $E09E,$01 Write #REGa to *#REGhl.
  $E09F,$04 Increment *#R$E0DF by one.
  $E0A3,$03 #REGhl=*#R$E0E0.
  $E0A6,$01 Restore the repeat count from the stack.
  $E0A7,$02 Decrease the repeat count by one and loop back to #R$E070 until all operations are done.
  $E0A9,$04 Increment #REGix by two.
  $E0AD,$03 Jump to #R$E067.
N $E0B0 Has all the image been decompressed now? If not, loop back again.
@ $E0B0 label=GeneratePicture_Next
  $E0B0,$03 #REGhl=#R$E0DE.
  $E0B3,$01 Decrease *#REGhl by one.
  $E0B4,$03 Jump to #R$E016 until *#REGhl is zero.
  $E0B7,$02 Move #REGix to the start of the attribute data.
  $E0B9,$02 Set a counter in #REGb to process #N$10 rows of attribute data.
  $E0BB,$03 Store the start of #R$AAE3 in #REGhl.
@ $E0BE label=GeneratePicture_Attributes_Loop
  $E0BE,$02 Stash the attribute row counter and the image attributes buffer
. pointer on the stack.
  $E0C0,$02 Initialise the column counter in #REGa.
@ $E0C2 label=GeneratePicture_Attribute_Row
  $E0C2,$03 Load the attribute value into #REGc.
  $E0C5,$05 Load the repeat length into #REGb.
  $E0CA,$02 Move #REGix to the next attribute/ repeat length pair.
  $E0CC,$01 Add the repeat length to the column counter.
@ $E0CD label=GeneratePicture_Attribute_Run
  $E0CD,$01 Write the attribute to the image attributes buffer.
  $E0CE,$01 Increment the image attributes buffer pointer by one.
  $E0CF,$02 Decrease the repeat counter by one and loop back to #R$E0CD until counter is zero.
  $E0D1,$04 Jump to #R$E0C2 if #N$14 columns have been processed.
  $E0D5,$01 Restore the start of the current attribute row from the stack.
  $E0D6,$04 Move #REGhl to the next row in the attribute buffer.
  $E0DA,$01 Restore the attribute row counter from the stack.
  $E0DB,$02 Decrease the attribute row counter by one and loop back to #R$E0BE
. until counter is zero.
  $E0DD,$01 Return.
N $E0DE Variables specifically for this routine.
@ $E0DE label=Line_Counter
B $E0DE,$01
@ $E0DF label=Operation_Code
B $E0DF,$01
@ $E0E0 label=Buffer_Position
W $E0E0,$02

c $E0E2
  $E0E2,$01 #REGl=#REGa.
  $E0E3,$03 Write #REGhl to *#R$E16B.
  $E0E6,$03 #REGa=*#R$E761.
  $E0E9,$02 RRCA.
  $E0EB,$03 Write #REGa to *#R$E16D.
  $E0EE,$03 Call #R$E0F2.
  $E0F1,$01 Return.

  $E0F2,$03 #REGhl=*#R$E16B.
  $E0F5,$05 Write #N$47 to *#R$E19E.
  $E0FA,$05 Write #N$00 to *#R$E1A0.
  $E0FF,$02 #REGb=#N$02.
  $E101,$01 Stash #REGbc on the stack.
  $E102,$02 #REGb=#N$02.
  $E104,$01 Halt operation (suspend CPU until the next interrupt).
  $E105,$01 Stash #REGbc on the stack.
  $E106,$04 #REGb=*#R$E16D.
  $E10A,$03 #REGa=#N$05-#REGb.
  $E10D,$04 Jump to #R$E115 if #REGa is not equal to #N$04.
  $E111,$01 Halt operation (suspend CPU until the next interrupt).
  $E112,$01 Halt operation (suspend CPU until the next interrupt).
  $E113,$05 RLCA.
  $E118,$01 Increment #REGa by one.
  $E119,$03 Write #REGa to *#R$E16A.
  $E11C,$01 Stash #REGbc on the stack.
  $E11D,$03 #REGa=*#REGix+#N$00.
  $E120,$01 #REGa+=#REGh.
  $E121,$01 #REGb=#REGa.
  $E122,$03 #REGa=*#REGix+#N$01.
  $E125,$01 #REGa+=#REGl.
  $E126,$01 #REGc=#REGa.
  $E127,$03 Call #R$E1D9.
  $E12A,$03 #REGa=*#REGix+#N$02.
  $E12D,$01 #REGa+=#REGh.
  $E12E,$01 #REGb=#REGa.
  $E12F,$03 #REGa=*#REGix+#N$03.
  $E132,$01 #REGa+=#REGl.
  $E133,$01 #REGc=#REGa.
  $E134,$03 Call #R$E1D9.
  $E137,$03 #REGa=*#REGix+#N$04.
  $E13A,$01 #REGa+=#REGh.
  $E13B,$01 #REGb=#REGa.
  $E13C,$03 #REGa=*#REGix+#N$05.
  $E13F,$01 #REGa+=#REGl.
  $E140,$01 #REGc=#REGa.
  $E141,$03 Call #R$E1D9.
  $E144,$01 Restore #REGbc from the stack.
  $E145,$02 Decrease counter by one and loop back to #R$E11C until counter is zero.
  $E147,$05 Write #N$47 to *#R$E19E.
  $E14C,$05 Write #N$08 to *#R$E1A0.
  $E151,$03 #REGhl=*#R$E16B.
  $E154,$01 Restore #REGbc from the stack.
  $E155,$02 Decrease counter by one and loop back to #R$E105 until counter is zero.
  $E157,$05 Write #N$00 to *#R$E1A0.
  $E15C,$05 #REGix+=#N($0006,$04,$04).
  $E161,$05 Write #N$45 to *#R$E19E.
  $E166,$01 Restore #REGbc from the stack.
  $E167,$02 Decrease counter by one and loop back to #R$E101 until counter is zero.
  $E169,$01 Return.

b $E16A
  $E16B
  $E16D
  $E16E
  $E17A
  $E186
  $E192
  $E19E
  $E1A0

c $E1A1
  $E1A1,$03 Call #R$DE51.
  $E1A4,$01 Stash #REGde on the stack.
  $E1A5,$01 #REGa=#REGd.
  $E1A6,$03 RRCA.
  $E1A9,$02,b$01 Keep only bits 0-1.
  $E1AB,$02,b$01 Set bits 3-4, 6.
  $E1AD,$01 #REGd=#REGa.
  $E1AE,$04 #REGbc=*#R$E19E.
  $E1B2,$01 #REGa=*#REGde.
  $E1B3,$01 Flip the bits according to #REGc.
  $E1B4,$01 Merge the bits from #REGb.
  $E1B5,$01 Flip the bits according to #REGc.
  $E1B6,$01 Write #REGa to *#REGde.
  $E1B7,$01 Restore #REGde from the stack.
  $E1B8,$01 #REGa=#REGh.
  $E1B9,$02,b$01 Keep only bits 0-2.
  $E1BB,$01 #REGb=#REGa.
  $E1BC,$01 Increment #REGb by one.
  $E1BD,$02 #REGa=#N$FE.
  $E1BF,$01 RRCA.
  $E1C0,$02 Decrease counter by one and loop back to #R$E1BF until counter is zero.
  $E1C2,$01 #REGb=#REGa.
  $E1C3,$04 #REGc=*#R$E1A0.
  $E1C7,$01 #REGa=*#REGde.
  $E1C8,$04 Jump to #R$E1CD if bit 1 of #REGc is set.
  $E1CC,$01 Merge the bits from #REGb.
  $E1CD,$04 Jump to #R$E1D3 if bit 3 of #REGc is set.
  $E1D1,$01 Flip the bits according to #REGb.
  $E1D2,$01 Invert the bits in #REGa.
  $E1D3,$01 Write #REGa to *#REGde.
  $E1D4,$01 Return.
W $E1D5,$02
W $E1D7,$02

c $E1D9
  $E1D9,$01 Stash #REGbc on the stack.
  $E1DA,$03 Call #R$E1A1.
  $E1DD,$01 Restore #REGbc from the stack.
  $E1DE,$03 #REGde=#N($0101,$04,$04).
  $E1E1,$01 #REGa=#REGb.
  $E1E2,$01 #REGa-=#REGh.
  $E1E3,$02 Jump to #R$E1E9 if  is higher.
  $E1E5,$02 Decrease #REGd by two.
  $E1E7,$02 NEG.
  $E1E9,$01 #REGb=#REGa.
  $E1EA,$01 #REGa=#REGc.
  $E1EB,$01 #REGa-=#REGl.
  $E1EC,$02 Jump to #R$E1F2 if #REGd is higher.
  $E1EE,$02 Decrease #REGe by two.
  $E1F0,$02 NEG.
  $E1F2,$01 #REGc=#REGa.
  $E1F3,$01 Set the bits from #REGb.
  $E1F4,$01 Return if #REGe is zero.
  $E1F5,$01 #REGa=#REGc.
  $E1F6,$01 Compare #REGa with #REGb.
  $E1F7,$01 Stash #REGhl on the stack.
  $E1F8,$01 #REGh=#REGd.
  $E1F9,$01 #REGl=#REGe.
  $E1FA,$03 Write #REGhl to *#R$E1D5.
  $E1FD,$02 #REGl=#N$00.
  $E1FF,$02 Jump to #R$E205 if #REGa is lower.
  $E201,$01 #REGh=#REGl.
  $E202,$01 #REGl=#REGe.
  $E203,$01 #REGc=#REGb.
  $E204,$01 #REGb=#REGa.
  $E205,$03 Write #REGhl to *#R$E1D7.
  $E208,$01 #REGh=#REGb.
  $E209,$01 #REGa=#REGb.
  $E20A,$02 Shift #REGa right.
  $E20C,$01 #REGl=#REGa.
  $E20D,$01 #REGa=#REGl.
  $E20E,$01 #REGa+=#REGc.
  $E20F,$02 Jump to #R$E214 if #REGa is lower.
  $E211,$01 Compare #REGa with #REGb.
  $E212,$02 Jump to #R$E21C if #REGa is lower.
  $E214,$01 #REGa-=#REGb.
  $E215,$01 #REGl=#REGa.
  $E216,$04 #REGde=*#R$E1D5.
  $E21A,$02 Jump to #R$E221.
  $E21C,$01 #REGl=#REGa.
  $E21D,$04 #REGde=*#R$E1D7.
  $E221,$01 Exchange the *#REGsp with the #REGhl register.
  $E222,$01 #REGa=#REGh.
  $E223,$01 #REGa+=#REGd.
  $E224,$01 #REGh=#REGa.
  $E225,$01 #REGa=#REGl.
  $E226,$01 #REGa+=#REGe.
  $E227,$01 #REGl=#REGa.
  $E228,$01 Stash #REGbc on the stack.
  $E229,$03 Call #R$E1A1.
  $E22C,$03 Call #R$E236.
  $E22F,$01 Restore #REGbc from the stack.
  $E230,$01 Exchange the *#REGsp with the #REGhl register.
  $E231,$01 Decrease #REGh by one.
  $E232,$02 Jump to #R$E20D if #REGh is not zero.
  $E234,$01 Restore #REGhl from the stack.
  $E235,$01 Return.

c $E236
  $E236,$02 Stash #REGaf and #REGhl on the stack.
  $E238,$02 #REGa=the contents of the Memory Refresh Register.
  $E23A,$01 RLCA.
  $E23B,$01 #REGl=#REGa.
  $E23C,$02 #REGa=the contents of the Memory Refresh Register.
  $E23E,$01 RRCA.
  $E23F,$01 RRCA.
  $E240,$01 RRCA.
  $E241,$01 #REGh=#REGa.
  $E242,$01 #REGa=*#REGhl.
  $E243,$02,b$01 Keep only bits 3-4.
  $E245,$02,b$01 Set bits 0, 2.
  $E247,$02 Set border to the colour held by #REGa.
  $E249,$02,b$01 Flip bits 4.
  $E24B,$02 Set border to the colour held by #REGa.
  $E24D,$02 Restore #REGhl and #REGaf from the stack.
  $E24F,$01 Return.

c $E250 Sound: Tile Moving
@ $E250 label=Sound_TileMoving
  $E250,$02 #REGa=#N$05.
  $E252,$02 Set the frequency control (#REGc) to #N$AF.
@ $E254 label=Sound_TileMoving_Loop
  $E254,$01 Set duration for this cycle to current frequency value.
  $E255,$02 Double the duration.
@ $E257 label=Sound_TileMoving_PulseLoop
  $E257,$02 Generate a single tone pulse.
  $E259,$02,b$01 Flip bit 4.
  $E25B,$02 Send to the speaker.
  $E25D,$01 Decrease frequency (raises pitch, shortens next cycle).
  $E25E,$02 Jump to #R$E254 until the frequency is zero.
  $E260,$01 Return.

g $E261 In-Game Tiles
@ $E261 label=InGame_Tiles_Top
@ $E270 label=InGame_Tiles
D $E261 Used by the routine at #R$D97E.
B $E261
B $E264
B $E26A
B $E270,$05
B $E275,$02,$01
L $E270,$07,$04
B $E28E

b $E292

b $E293 Tile Table
@ $E293 label=Table_Tiles
D $E293 Populated by #R$D2A1.
  $E293,$05
L $E293,$05,$04

b $E2A7

g $E2C5 Random Number Seed
@ $E2C5 label=RandomNumberSeed
W $E2C5,$02

g $E2C7 Item ID
@ $E2C7 label=Item_ID
B $E2C7,$01

g $E2C8 Item Sprite Bank
D $E2C8 Will point to either of: #R$A0E3, #R$AC24 or #R$B765.
@ $E2C8 label=Item_SpriteBank
W $E2C8,$02

c $E2CA Fetch Tile Object
@ $E2CA label=FetchTileObject
  $E2CA,$0A Fetch *#R$D834 and create an offset using the current tile ID.
N $E2D4 Note; the tile IDs are numbered starting from #N$01, so the routine is
. fetching from #N$E260+#N$01=#R$E261(#N$E261) (#R$E261).
  $E2D4,$02 Add the offset to #R$E261(#N$E260) and fetch the item which is at
. the currently referenced tile ID location.
  $E2D6,$03 Call #R$DFB2.
  $E2D9,$01 Return.

c $E2DA
  $E2DA,$03 #REGhl=*#R$E5B0.
  $E2DD,$01 #REGa=*#REGhl.
  $E2DE,$03 Write #REGa to *#R$E2C7.
  $E2E1,$01 Stash #REGhl on the stack.
  $E2E2,$03 Call #R$E741.
  $E2E5,$01 Restore #REGhl from the stack.
  $E2E6,$03 Write #N$00 to *#REGhl.
  $E2E9,$02 #REGb=#N$04.
  $E2EB,$05 Write #N$01 to *#R$E761.
  $E2F0,$01 Return.

c $E2F1
  $E2F1,$01 Stash #REGde on the stack.
  $E2F2,$04 #REGde=*#R$E5B0.
  $E2F6,$02 Write *#REGde to *#REGhl.
  $E2F8,$03 Write #N$00 to *#REGde.
  $E2FB,$01 Restore #REGde from the stack.
  $E2FC,$01 Return.

c $E2FD
  $E2FD,$06 Return if the player has pressed fire (#N$10).
  $E303,$06 Return if *#R$D832 is equal to #N$02.
  $E309,$03 Return if *#R$D832 is equal to #N$00.
  $E30C,$08 Return if *#R$D82C is not equal to *#R$D830.
  $E314,$08 Return if *#R$D82D is not equal to *#R$D831.
  $E31C,$03 Call #R$E658.
  $E31F,$01 Return.

c $E320 Handler: Home Arrow
@ $E320 label=Handler_HomeArrow
N $E320 To indicate when the cursor is "docked", the home box cycles through a
. bunch of attribute values:
N $E320 #PUSHS #UDGTABLE {
.   #SIM(start=$D1F1,stop=$D1F7)#POKES$E337,$00
.   #FOR$00,$0E||x|#SIM(start=$E320,stop=$E33C)
.     #SCR$02{$00,$00,$50,$50}(*home-arrow-x)#PLOT(0,0,0)(home-arrow-x)
.   ||
.   #UDGARRAY#(#ANIMATE$02,$0E(home-arrow))
. } UDGTABLE# #POPS
  $E320,$03 Point #REGhl at #R$E695 where the attributes are stored.
N $E323 Validate the attribute offset value.
  $E323,$07 Jump to #R$E32F if *#R$D836 is not equal to #N$0E.
N $E32A If *#R$D836 is at the end of the table, reset it back to #N$00.
  $E32A,$05 Reset *#R$D836 back to the first colour.
N $E32F Fetch the attribute value using the offset.
@ $E32F label=HomeArrow_SkipReset
  $E32F,$03 Create an offset in #REGbc against the arrow attribute table.
  $E332,$01 Add the offset to the arrow attribute table pointer.
  $E333,$01 Fetch the attribute byte from the table and store it in #REGa.
  $E334,$03 Call #R$E682.
  $E337,$01 Halt operation (suspend CPU until the next interrupt).
N $E338 Move the attribute offset to the next value in the attribute table.
  $E338,$03 #REGhl=#R$D836.
  $E33B,$01 Increment the attribute offset value to the next colour value.
N $E33C Set up playing a sound.
  $E33C,$04 Multiply the attribute offset value by #N$04 and store the result
. in #REGc.
  $E340,$02 Set a counter in #REGb for the number of times to make the sound.
  $E342,$02 Set the initial border/ speaker state in #REGa.
@ $E344 label=HomeArrow_Sound_Loop
  $E344,$02 Set the border colour/ play sound.
  $E346,$02,b$01 Flip the speaker bit.
  $E348,$01 Stash the loop counter on the stack.
  $E349,$01 Set the delay counter to the value held in REGc.
@ $E34A label=HomeArrow_Sound_Delay
  $E34A,$02 Decrease the delay counter by one and loop back to #R$E34A until
. the delay counter is zero.
  $E34C,$01 Restore the loop counter from the stack.
  $E34D,$02 Decrease the loop counter by one and loop back to #R$E344 until the
. loop counter is zero.
  $E34F,$03 Jump to #R$F39E.

c $E352
  $E352,$03 Set the low byte in #REGl to the contents of the Memory Refresh Register.
  $E355,$02 Set the high byte in #REGh to #N$C8.
  $E357,$02 Set a loop counter in #REGb to #N$32.
  $E359,$02 Set a delay counter in #REGd of #N$05.
  $E35B,$01 #REGa=*#REGhl.
  $E35C,$02,b$01 Keep only bits 3-4.
  $E35E,$02,b$01 Set bits 0, 2.
  $E360,$02 Set border to the colour held by #REGa.
  $E362,$01 Increment #REGhl by one.
  $E363,$01 Stash the loop counter on the stack.
  $E364,$01 Set the delay loop counter.
@ $E365 label=Delay_Loop_01
  $E365,$02 Decrease the delay counter by one and loop back to #R$E365 until
. the delay counter is zero.
  $E367,$01 Restore the loop counter from the stack.
  $E368,$02 Decrease the loop counter by one and loop back to #R$E35B until the
. loop counter is zero.

  $E36A,$02 Halt operation (suspend CPU until the next interrupt) twice.
  $E36C,$03 Call #R$EB56.
  $E36F,$0C Return if the player has pressed any direction key.
  $E37B,$02 Halt operation (suspend CPU until the next interrupt) twice.

  $E37D,$03 Set the low byte in #REGl to the contents of the Memory Refresh Register.
  $E380,$02 Set the high byte in #REGh to #N$0A.
  $E382,$02 Set a loop counter in #REGb to #N$23.
  $E384,$02 Set a delay counter in #REGc this time of #N$64.
  $E386,$01 #REGa=*#REGhl.
  $E387,$02,b$01 Keep only bits 3-4.
  $E389,$02,b$01 Set bits 0, 2.
  $E38B,$02 Set border to the colour held by #REGa.
  $E38D,$01 Increment #REGhl by one.
  $E38E,$01 Stash the loop counter on the stack.
  $E38F,$01 Set the delay loop counter.
@ $E390 label=Delay_Loop_02
  $E390,$02 Decrease the delay counter by one and loop back to #R$E390 until
. the delay counter is zero.
  $E392,$01 Restore the loop counter from the stack.
  $E393,$02 Decrease the loop counter by one and loop back to #R$E386 until the
. loop counter is zero.
  $E395,$01 Return.

c $E396 Handler: Controls
@ $E396 label=Handler_Controls
E $E396 Continue on to #R$E39C.
  $E396,$03 #REGa=*#R$E5B2.
  $E399,$03 #REGhl=#R$D834.

c $E39C Controls: Right
@ $E39C label=Controls_CheckRight
N $E39C Did the player press right?
  $E39C,$04 Jump to #R$E3F9 if the player didn't press right (#N$01).
N $E3A0 Right movement checks for boundaries and the home box.
@ $E3A0 label=MoveRight_Checks
  $E3A0,$03 #REGa=*#R$D82D.
N $E3A3 Can the player move right?
  $E3A3,$05 If *#R$D82D is at or beyond the right-most boundary jump to
. *#R$E53C.
N $E3A8 Is the player inside the home box?
N $E3A8 The game restricts this (i.e. this image would never happen), but to
. demonstrate - this is position #N$02/ #N$02:
. #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$02
. #UDGTABLE { #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-02-02) }
. UDGTABLE# #POPS
  $E3A8,$04 If *#R$D82D is not #N$02 (which confirms the player can't be inside
. the home box), jump to #R$E3F0.
N $E3AC If both the horizontal and the vertical co-ordinates are #N$02, then
. the player IS inside the home box.
  $E3AC,$05 Now compare *#R$D82C with #N$02.
  $E3B1,$03 Reload *#R$D82D into #REGa.
  $E3B4,$02 If *#R$D82C is not #N$02 (which confirms the player can't be inside
. the home box), jump to #R$E3F0.
N $E3B6 Else the player is inside the home box, so the treatment of the cursor
. isn't quite so simple.
  $E3B6,$05 Move *#R$D82D to #N$04 character blocks to the right.
  $E3BB,$01 Update the tile ID the player will land on.
  $E3BC,$05 Write #N$00 to *#R$D835, the cursor is still inside the home box
. and so isn't drawn to the screen buffer just yet.
N $E3C1 The player is leaving the home box, so reset the colour of the arrow.
  $E3C1,$02 #REGa=#COLOUR$2F.
  $E3C3,$03 Call #R$E682.
N $E3C6 Animate the cursor leaving the home box.
  $E3C6,$03 #REGhl=#R$D82F.
  $E3C9,$01 Move the cursor position right by one character block.
N $E3CA Each valid direction moves the cursor one-cursor-width character blocks
. and rather than simply jump the whole way, the game auto-moves one character
. block at a time until the cursor reaches it's destination.
N $E3CA I've called these "frames" here, but it's the same cursor just moving
. between positions, there are no differently stored frames.
  $E3CA,$02 Set a counter in #REGb for #N$03 animation "frames".
@ $E3CC label=AnimateMoveRight_Loop
  $E3CC,$02 Stash the frame counter and horizontal position on the stack.
N $E3CE To demonstrate the three "frames" of movement:
. #UDGTABLE(default,centre) { #FOR$03,$05(n,=h #Nn, | ) } {
.   #FOR$03,$05""n"
.     #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$0n
.     #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-0n-02) #POPS
.   " | ""
. } UDGTABLE#
. If the code only called #R$E5E4 then the above is what would actually
. display! Instead the default attributes are written to the home box very
. quickly, and then the code forces a HALT to wait for the next frame to avoid
. any flicker.
N $E3CE So this is what is actually displayed:
. #UDGTABLE(default,centre) { #FOR$03,$05(n,=h #Nn, | ) } {
.   #FOR$03,$05""n"
.     #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$0n
.     #SIM(start=$E3CE,stop=$E3D4)#SCR$01(cursor-good-0n-02) #POPS
.   " | ""
. } UDGTABLE#
. And then position #N$06 is just the cursor being printed normally (hence only
. #N$03 "frames" are needed here).
  $E3CE,$03 Call #R$E5E4.
  $E3D1,$03 Call #R$E66A.
  $E3D4,$03 Call #R$E5B3.
N $E3D7 Wait for the next frame.
  $E3D7,$01 Halt operation (suspend CPU until the next interrupt).
  $E3D8,$03 Call #R$E63F.
  $E3DB,$02 Restore the horizontal position and frame counter from the stack.
  $E3DD,$01 Move the cursor position right by one character block.
  $E3DE,$02 Decrease the frame counter by one and loop back to #R$E3CC until
. all #N$03 frames have played.
N $E3E0 Display the cursor in its final position.
  $E3E0,$03 Call #R$E661.
N $E3E3 Update the stored cursor positions.
  $E3E3,$06 Write *#R$D82C to *#R$D830.
  $E3E9,$06 Write *#R$D82D to *#R$D831.
  $E3EF,$01 Return.
N $E3F0 Normal right movement.
@ $E3F0 label=MoveRight
  $E3F0,$02 Move #N$04 character blocks right.
  $E3F2,$03 Update *#R$D82D.
N $E3F5 Update the tile ID the player has now landed on.
  $E3F5,$01 Increment *#REGhl by one.
  $E3F6,$03 Jump to #R$E53C.

c $E3F9 Controls: Left
@ $E3F9 label=Controls_CheckLeft
N $E3F9 Did the player press left?
  $E3F9,$04 Jump to #R$E454 if the player didn't press left (#N$02).
N $E3FD Left movement checks for boundaries and the home box.
@ $E3FD label=MoveLeft_Checks
  $E3FD,$03 #REGa=*#R$D82D.
N $E400 Can the player move left?
  $E400,$05 If *#R$D82D is at or beyond the left-most boundary jump to
. *#R$E53C.
N $E405 Is the player about to enter the home box?
N $E405 This is position #N$06/ #N$02:
. #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$06
. #UDGTABLE { #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-06-02) }
. UDGTABLE# #POPS
  $E405,$04 If *#R$D82D is not #N$06 (which confirms the player can't be beside
. the home box), jump to #R$E44B.
N $E409 If the horizontal co-ordinate is #N$06 and the vertical co-ordinate is
. #N$02 then the player IS beside the home box.
  $E409,$05 Now compare *#R$D82C with #N$02.
  $E40E,$03 Reload *#R$D82D into #REGa.
  $E411,$02 If *#R$D82C is not #N$02 (which confirms the player can't be beside
. the home box), jump to #R$E44B.
N $E413 Else the player is entering the home box, so the treatment of the
. cursor isn't quite so simple.
  $E413,$05 Move *#R$D82D to #N$04 character blocks to the left.
  $E418,$01 Update the tile ID the player will land on.
  $E419,$03 Call #R$E658.
N $E41C Animate the cursor entering the home box.
  $E41C,$03 #REGhl=#R$D82F.
N $E41F Each valid direction moves the cursor one-cursor-width character blocks
. and rather than simply jump the whole way, the game auto-moves one character
. block at a time until the cursor reaches it's destination.
N $E41F I've called these "frames" here, but it's the same cursor just moving
. between positions, there are no differently stored frames.
  $E41F,$02 Set a counter in #REGb for #N$04 animation "frames".
  $E421,$04 Jump to #R$E3FD if #REGa is equal to #N$02.
@ $E425 label=AnimateMoveLeft_Loop
  $E425,$02 Stash the frame counter and horizontal position on the stack.
N $E427 To demonstrate the four "frames" of movement:
. #UDGTABLE(default,centre) { #FOR($06,$03,-$01)(n,=h #Nn, | ) } {
.   #FOR($06,$03,-$01)!!n!
.     #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$0n
.     #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-0n-02) #POPS
.   ! | !!
. } UDGTABLE#
. If the code only called #R$E5E4 then the above is what would actually
. display! Instead the default attributes are written to the home box very
. quickly, and then the code forces a HALT to wait for the next frame to avoid
. any flicker.
N $E427 So this is what is actually displayed:
. #UDGTABLE(default,centre) { #FOR($06,$03,-$01)(n,=h #Nn, | ) } {
.   #FOR($06,$03,-$01)!!n!
.     #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$0n
.     #SIM(start=$E3CE,stop=$E3D4)#SCR$01(cursor-good-0n-02) #POPS! |
.   !!
. } UDGTABLE#
. And then position #N$02 is handled below by setting *#R$D835 to #N$00.
  $E427,$03 Call #R$E5E4.
  $E42A,$03 Call #R$E66A.
  $E42D,$03 Call #R$E5B3.
N $E430 Wait for the next frame.
  $E430,$01 Halt operation (suspend CPU until the next interrupt).
  $E431,$03 Call #R$E63F.
  $E434,$02 Restore the horizontal position and frame counter from the stack.
  $E436,$01 Move the cursor position left by one character block.
  $E437,$02 Decrease the frame counter by one and loop back to #R$E425 until
. all #N$04 frames have played.
N $E439 Mark that the cursor is now inside the home box.
  $E439,$05 Write #N$00 to *#R$D835.
N $E43E Update the stored cursor positions.
  $E43E,$06 Write *#R$D82C to *#R$D830.
  $E444,$06 Write *#R$D82D to *#R$D831.
  $E44A,$01 Return.
N $E44B Normal left movement.
@ $E44B label=MoveLeft
  $E44B,$02 Move #N$04 character blocks left.
  $E44D,$03 Update *#R$D82D.
N $E450 Update the tile ID the player has now landed on.
  $E450,$01 Decrease *#REGhl by one.
  $E451,$03 Jump to #R$E53C.

c $E454 Controls: Down
@ $E454 label=Controls_CheckDown
N $E454 Did the player press down?
  $E454,$04 Jump to #R$E47B if the player didn't press down (#N$04).
N $E458 Down movement checks for boundaries and the home box.
@ $E458 label=MoveDown_Checks
  $E458,$03 #REGa=*#R$D82C.
N $E45B Can the player move down?
  $E45B,$05 If *#R$D82C is at or beyond the bottom-most boundary jump to #R$E53C.
N $E460 Is the player inside the home box?
N $E460 The game restricts this (i.e. this image would never happen), but to
. demonstrate - this is position #N$02/ #N$02:
. #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$02
. #UDGTABLE { #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-02-02) }
. UDGTABLE# #POPS
  $E460,$04 If *#R$D82C is not #N$02 (which confirms the player can't be inside
. the home box), jump to #R$E46F.
N $E464 If both the horizontal and the vertical co-ordinates are #N$02, then
. the player IS inside the home box. The outcome is different to left and right
. though - the home box can only be exited by moving right. So for this "down"
. action, we treat the bottom side of the home box as another boundary and
. don't allow the player to move through it.
  $E464,$05 Now compare *#R$D82D with #N$02.
  $E469,$03 If *#R$D82D is #N$02 (which confirms that yes, the player is inside
. the home box), jump to #R$E53C to prevent the movement from happening.
N $E46C Normal down movement.
  $E46C,$03 Reload *#R$D82C into #REGa.
@ $E46F label=MoveDown
  $E46F,$02 Move #N$04 rows down.
  $E471,$03 Update *#R$D82C.
N $E474 Update the tile ID the player has now landed on.
  $E474,$04 Add #N$07 to *#REGhl.
  $E478,$03 Jump to #R$E53C.

c $E47B Controls: Up
@ $E47B label=Controls_CheckUp
N $E47B Did the player press up?
  $E47B,$04 Jump to #R$E4A2 if the player didn't press up (#N$08).
N $E47F Up movement checks for boundaries and the home box.
@ $E47F label=MoveUp_Checks
  $E47F,$03 #REGa=*#R$D82C.
N $E482 Can the player move up?
  $E482,$05 If *#R$D82C is at or beyond the top-most boundary jump to #R$E53C.
N $E487 Is the player below the home box?
N $E487 This is position #N$02/ #N$06:
. #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$06;$D82F,$02
. #UDGTABLE { #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-02-06) }
. UDGTABLE# #POPS
  $E487,$04 If *#R$D82C is not #N$06 (which confirms the player can't be below
. the home box), jump to #R$E496.
N $E48B If the horizontal co-ordinate is #N$02 and the vertical co-ordinate is
. #N$06 then the player is below the home box. As the home box can only be
. entered from the right side, we treat the bottom side as a boundary and don't
. allow the player to move through it.
  $E48B,$05 Now compare *#R$D82D with #N$02.
  $E490,$03 If *#R$D82D is #N$02 (which confirms that yes, the player is below
. the home box), jump to #R$E53C to prevent the movement from happening.
N $E493 Normal up movement.
  $E493,$03 Reload *#R$D82C into #REGa.
@ $E496 label=MoveUp
  $E496,$02 Move #N$04 rows up.
  $E498,$03 Update *#R$D82C.
N $E49B Update the tile ID the player has now landed on.
  $E49B,$04 Subtract #N$07 from *#REGhl.
  $E49F,$03 Jump to #R$E53C.

c $E4A2 Controls: Right/ Down
@ $E4A2 label=Controls_CheckRightDown
N $E4A2 Did the player press diagonally right/ down?
  $E4A2,$04 Jump to #R$E4C5 if the player didn't press right/ down
. (#N$01+#N$04=#N$05).
N $E4A6 Right/ down movement checks for boundaries and the home box.
  $E4A6,$03 #REGa=*#R$D82D.
N $E4A9 Can the player move right?
  $E4A9,$05 If *#R$D82D is at or beyond the right-most boundary jump to #R$E458.
N $E4AE Is the player inside the home box?
N $E4AE The game restricts this (i.e. this image would never happen), but to
. demonstrate - this is position #N$02/ #N$02:
. #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$02
. #UDGTABLE { #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-02-02) }
. UDGTABLE# #POPS
  $E4AE,$04 If *#R$D82D is not #N$02 (which confirms the player can't be inside
. the home box), jump to #R$E4BD.
N $E4B2 If both the horizontal and the vertical co-ordinates are #N$02 then the
. player IS inside the home box. We then jump to #R$E3A0 to handle the
. animation of moving out of the home box.
  $E4B2,$08 If *#R$D82C is #N$02 (which confirms that yes, the player is inside
. the home box), jump to #R$E3A0 so this routine can handle the rest of the
. movement update.
N $E4BA Normal right movement.
  $E4BA,$03 Reload *#R$D82D into #REGa.
N $E4BD Note this only handles moving right, it then passes the rest of the
. movement to #R$E458 for handling moving down.
@ $E4BD label=MoveRightDown
  $E4BD,$02 Move #N$04 character blocks right.
  $E4BF,$03 Update *#R$D82D.
N $E4C2 Update the tile ID the player has now landed on (note, this only covers
. the "right" movement here - the jump below covers if down should also alter
. the value).
  $E4C2,$01 Increment *#REGhl by one.
  $E4C3,$02 Jump to #R$E458.

c $E4C5 Controls: Left/ Down
@ $E4C5 label=Controls_CheckLeftDown
N $E4C5 Did the player press diagonally left/ down?
  $E4C5,$04 Jump to #R$E4E9 if the player didn't press left/ down
. (#N$02+#N$04=#N$06).
N $E4C9 Left/ down movement checks for boundaries and the home box.
  $E4C9,$03 #REGa=*#R$D82D.
N $E4CC Can the player move left?
  $E4CC,$05 If *#R$D82D is at or beyond the left-most boundary jump to #R$E458.
N $E4D1 Is the player about to enter the home box?
N $E4D1 This is position #N$06/ #N$02:
. #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$06
. #UDGTABLE { #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-06-02) }
. UDGTABLE# #POPS
  $E4D1,$04 If *#R$D82D is not #N$06 (which confirms the player can't be beside
. the home box), jump to #R$E4E0.
N $E4D5 If the horizontal co-ordinate is #N$06 and the vertical co-ordinate is
. #N$02 then the player IS beside the home box. We then jump to #R$E3FD to
. handle the animation of entering the home box.
  $E4D5,$05 Now compare *#R$D82C with #N$02.
  $E4DA,$03 If *#R$D82C is #N$02 (which confirms that yes, the player is beside
. the home box), jump to #R$E3FD so this routine can handle the rest of the
. movement update.
N $E4DD Normal left movement.
  $E4DD,$03 Reload *#R$D82D into #REGa.
N $E4E0 Note this only handles moving left, it then passes the rest of the
. movement to #R$E458 for handling moving down.
@ $E4E0 label=MoveLeftDown
  $E4E0,$02 Move #N$04 character blocks left.
  $E4E2,$03 Update *#R$D82D.
N $E4E5 Update the tile ID the player has now landed on (note, this only covers
. the "left" movement here - the jump below covers if down should also alter
. the value).
  $E4E5,$01 Decrease *#REGhl by one.
  $E4E6,$03 Jump to #R$E458.

c $E4E9 Controls: Right/ Up
@ $E4E9 label=Controls_CheckRightUp
N $E4E9 Did the player press diagonally right/ up?
  $E4E9,$04 Jump to #R$E512 if the player didn't press right/ up
. (#N$01+#N$08=#N$09).
N $E4ED Right/ up movement checks for boundaries and the home box.
  $E4ED,$03 #REGa=*#R$D82D.
N $E4F0 Can the player move right?
  $E4F0,$05 If *#R$D82D is at or beyond the right-most boundary jump to #R$E47F.
N $E4F5 Is the player either inside or below the home box?
N $E4F5 This is position #N$02/ #N$02 and also position #N$02/ #N$06:
. #UDGTABLE { =h #N$02/ #N$02 (Inside) | =h #N$02/ #N$06 (Below) }
. { #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$02
.   #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-02-02) #POPS |
.   #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$06;$D82F,$02
.   #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-02-06) #POPS
. } UDGTABLE#
  $E4F5,$04 If *#R$D82D is not #N$02 (which confirms the player can't be inside
. the home box), jump to #R$E509.
N $E4F9 Else it is now confirmed that *#R$D82D is at position #N$02.
  $E4F9,$0D If *#R$D82C is either #N$06 (which confirms that yes, the player is
. below the home box) or #N$02 (which confirms that yes, the player is inside
. the home box), jump to #R$E3A0.
N $E506 Normal right movement.
  $E506,$03 Reload *#R$D82D into #REGa.
@ $E509 label=MoveRightUp
  $E509,$02 Move #N$04 character blocks right.
  $E50B,$03 Update *#R$D82D.
N $E50E Update the tile ID the player has now landed on (note, this only covers
. the "right" movement here - the jump below covers if up should also alter the
. value).
  $E50E,$01 Increment *#REGhl by one.
  $E50F,$03 Jump to #R$E47F.

c $E512 Controls: Left/ Up
@ $E512 label=Controls_CheckLeftUp
N $E512 Did the player press diagonally left/ up?
  $E512,$05 Jump to #R$F43E if the player didn't press left up
. (#N$02+#N$08=#N$0A).
N $E517 Left/ up movement checks for boundaries and the home box.
  $E517,$03 #REGa=*#R$D82D.
N $E51A Can the player move left?
  $E51A,$05 If *#R$D82D is at or beyond the left-most boundary jump to #R$E47F.
N $E51F Is the player about to enter the home box?
N $E51F This is position #N$06/ #N$06 and also position #N$06/ #N$02:
. #UDGTABLE { =h #N$06/ #N$06 (Below) | =h #N$06/ #N$02 (Beside) }
. { #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$06;$D82F,$06
.   #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-06-06) #POPS |
.   #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$02;$D82F,$06
.   #SIM(start=$E5E4,stop=$E63E)#SCR$01(cursor-06-02) #POPS
. } UDGTABLE#
  $E51F,$04 If *#R$D82D is not #N$06 (which confirms the player can't be beside
. the home box), jump to #R$E533.
N $E523 Else it is now confirmed that *#R$D82D is at position #N$06.
  $E523,$08 If *#R$D82C is #N$06 (which confirms that yes, the player is
. diagonally below the home box) jump to #R$E53C.
  $E52B,$05 If *#R$D82C is #N$02 (which confirms that yes, the player is beside
. the home box) jump to #R$E3FD so this routine can handle the rest of the
. movement update.
N $E530 Normal left movement.
  $E530,$03 Reload *#R$D82D into #REGa.
@ $E533 label=MoveLeftUp
  $E533,$02 Move #N$04 character blocks left.
  $E535,$03 Update *#R$D82D.
N $E538 Update the tile ID the player has now landed on (note, this only covers
. the "left" movement here - the jump below covers if up should also alter the
. value).
  $E538,$01 Decrease *#REGhl by one.
  $E539,$03 Jump to #R$E47F.

c $E53C Handler: Cursor Movement
@ $E53C label=Handler_CursorMovement
  $E53C,$03 Call #R$E2CA.
  $E53F,$06 Write *#R$D82C to *#R$D830.
  $E545,$06 Write *#R$D82D to *#R$D831.
  $E54B,$02 #REGa=the contents of the Memory Refresh Register.
  $E54D,$02 Multiply #REGa by #N$02 and store the result in #REGl.
  $E54F,$02 #REGh=#N$00.
  $E551,$02 Set a counter in #REGb for the first outer loop.
  $E553,$02 Set a counter in #REGd for the first inner loop.
@ $E555 label=CursorMovement_SoundLoop_01
  $E555,$01 Fetch a byte from the ZX Spectrum ROM and store it in #REGa.
  $E556,$02,b$01 Keep only bits 3-4.
  $E558,$02,b$01 Set bits 0, 2.
  $E55A,$02 Send to the speaker.
  $E55C,$01 Increment the ROM pointer by one.
  $E55D,$01 Stash the outer loop counter on the stack.
  $E55E,$01 Set #REGb to the inner loop counter held by #REGd.
@ $E55F label=CursorMovement_DelayLoop_01
  $E55F,$02 Decrease the inner loop counter by one and loop back to #R$E55F
. until the counter is zero.
  $E561,$01 Restore the outer loop counter from the stack.
  $E562,$02 Decrease the outer loop counter by one and loop back to #R$E555
. until the counter is zero.
  $E564,$01 Halt operation (suspend CPU until the next interrupt).
N $E565 Update the cursor position.
  $E565,$09 Jump to #R$E575 if *#R$D82C is equal to *#R$D82E.
  $E56E,$03 Jump to #R$E574 if *#R$D82C is greater than or equal to *#R$D82E.
  $E571,$01 Decrease *#R$D82E by one.
  $E572,$02 Jump to #R$E575.

  $E574,$01 Increment *#REGhl by one.

  $E575,$09 Jump to #R$E585 if *#R$D82D is equal to *#R$D82F.
  $E57E,$03 Jump to #R$E584 if *#R$D82D is greater than or equal to *#R$D82F.
  $E581,$01 Decrease *#R$D82F by one.
  $E582,$02 Jump to #R$E585.

  $E584,$01 Increment *#REGhl by one.

  $E585,$09 Jump to #R$E53C if *#R$D82E is not equal to *#R$D82C.
  $E58E,$09 Jump to #R$E53C if *#R$D82F is not equal to *#R$D82D.
N $E597 The final sound effect when the cursor reaches its destination.
  $E597,$03 Set the lower byte in #REGl, which for randomness is the contents
. of the Memory Refresh Register.
  $E59A,$02 Set the upper byte of the sound data address (#N0A00-#N0AFF).
  $E59C,$02 Set a counter in #REGb for the second outer loop.
  $E59E,$02 Set a counter in #REGc for the second inner loop.
@ $E5A0 label=CursorMovement_SoundLoop_02
  $E5A0,$01 Fetch a byte from the ZX Spectrum ROM and store it in #REGa.
  $E5A1,$01 Increment the ROM pointer by one.
  $E5A2,$02,b$01 Keep only bits 3-4.
  $E5A4,$02,b$01 Set bits 0, 2.
  $E5A6,$02 Send to the speaker.
  $E5A8,$01 Stash the outer loop counter on the stack.
  $E5A9,$01 Set #REGb to the inner loop counter held by #REGc.
@ $E5AA label=CursorMovement_DelayLoop_02
  $E5AA,$02 Decrease the inner loop counter by one and loop back to #R$E5AA
. until counter is zero.
  $E5AC,$01 Restore the outer loop counter from the stack.
  $E5AD,$02 Decrease the outer loop counter by one and loop back to #R$E5A0
. until the counter is zero.
  $E5AF,$01 Return.

g $E5B0
W $E5B0,$02

g $E5B2 Data: Control Byte
@ $E5B2 label=Data_Control
D $E5B2 Used by the routines at #R$E2FD, #R$EB56 and #R$EBF5.
. #TABLE(default,centre,centre)
. { =h Byte | =h Meaning }
. { #N$00 | No input }
. { #N$01 | Right }
. { #N$02 | Left }
. { #N$04 | Down }
. { #N$08 | Up }
. { #N$10 | Fire }
. TABLE#
B $E5B2,$01

c $E5B3 Sound: Cursor Movement
@ $E5B3 label=Sound_Cursor
  $E5B3,$03 Load *#R$D82F into #REGa.
N $E5B6 The value in #REGc is used as a delay value.
  $E5B6,$05 Multiply #REGa by #N$20 and store the result in #REGc.
  $E5BB,$02 Set the number of sound loops in #REGb.
  $E5BD,$03 In #REGhl set a pointer to an arbitrary area in ZX Spectrum ROM.
@ $E5C0 label=Sound_Cursor_Loop
  $E5C0,$01 Fetch the byte from ZX Spectrum ROM and store it in #REGa.
  $E5C1,$02,b$01 Keep only bits 3-4.
  $E5C3,$02,b$01 Set bits 0, 2.
  $E5C5,$02 Send to the speaker.
  $E5C7,$01 Increment the ZX Spectrum memory byte pointer by one.
  $E5C8,$01 Stash the sound loop counter on the stack.
  $E5C9,$01 Write the delay value from #REGc into #REGb.
@ $E5CA label=Sound_Cursor_DelayLoop
  $E5CA,$02 Decrease the delay counter by one and loop back to #R$E5CA until
. the delay counter is zero.
  $E5CC,$01 Restore the sound loop counter from the stack.
  $E5CD,$02 Decrease the sound loop counter by one and loop back to #R$E5C0
. until the sound loop counter is zero.
  $E5CF,$01 Return.

g $E5D0 Saved Attributes Block For Cursor
@ $E5D0 label=SavedAttributesBlock
D $E5D0 Saves the attributes before painting the players cursor, this allows it
. to more easily be "undrawn".
.
. Used by the routines at #R$E5E4 and #R$E63F.
B $E5D0,$10,$04

g $E5E0 Cursor Attribute Position
@ $E5E0 label=Cursor_AttributePosition_Y
@ $E5E1 label=Cursor_AttributePosition_X
B $E5E0,$02,$01

g $E5E2 Cursor Attribute Buffer Pointer
@ $E5E2 label=Cursor_AttributePointer
W $E5E2,$02

c $E5E4 Draw Cursor
@ $E5E4 label=Draw_Cursor
N $E5E4 #PUSHS #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$06;$D82F,$06
. #UDGTABLE { #SIM(start=$E5E4,stop=$E63E)#SCR$02{$50,$50,$40,$40}(game-cursor) }
. UDGTABLE# #POPS
  $E5E4,$05 #REGb=*#R$D82E-#N$01.
  $E5E9,$03 Write #REGb to *#R$E5E0.
  $E5EC,$05 #REGc=*#R$D82F-#N$01.
  $E5F1,$03 Write #REGc to *#R$E5E1.
  $E5F4,$03 Call #R$DCC2.
  $E5F7,$03 Call #R$DCD1.
  $E5FA,$04 Write the calculated attribute buffer address to *#R$E5E2.
  $E5FE,$02 #REGb=#N$04.
  $E600,$03 #REGhl=#R$E5D0.
  $E603,$01 Exchange the #REGde and #REGhl registers.
  $E604,$01 Stash #REGbc on the stack.
  $E605,$05 Copy #N($0004,$04,$04) bytes from *#REGhl to *#REGde.
  $E60A,$04 #REGhl+=#N($001C,$04,$04).
  $E60E,$01 Restore #REGbc from the stack.
  $E60F,$02 Decrease counter by one and loop back to #R$E604 until counter is zero.
N $E611 Paint the top section of the cursor.
  $E611,$0C Copy #N($0004,$04,$04) bytes from #R$E6AF to *#R$E5E2.
N $E61D Paint the middle section of the cursor.
  $E61D,$02 #REGb=#N$02.
@ $E61F label=Draw_Cursor_Loop
  $E61F,$01 Stash #REGbc on the stack.
  $E620,$01 Exchange the #REGde and #REGhl registers.
  $E621,$04 #REGhl+=#N($001C,$04,$04).
  $E625,$01 Exchange the #REGde and #REGhl registers.
  $E626,$02 Write *#REGhl to *#REGde.
  $E628,$01 Increment #REGhl by one.
  $E629,$03 Increment #REGde by three.
  $E62C,$02 Write *#REGhl to *#REGde.
  $E62E,$01 Increment #REGhl by one.
  $E62F,$01 Increment #REGde by one.
  $E630,$01 Restore #REGbc from the stack.
  $E631,$02 Decrease counter by one and loop back to #R$E61F until counter is zero.
  $E633,$01 Exchange the #REGde and #REGhl registers.
  $E634,$04 #REGhl+=#N($001C,$04,$04).
  $E638,$01 Exchange the #REGde and #REGhl registers.
N $E639 Paint the bottom section of the cursor.
  $E639,$05 Copy #N($0004,$04,$04) bytes from *#REGhl to *#REGde.
  $E63E,$01 Return.

c $E63F Remove Player Cursor Attributes
@ $E63F label=Remove_PlayerCursorAttributes
N $E63F Less "remove" and more "replace"; this routine erases the players
. cursor attributes, but it doesn't leave a hole - it replaces the attributes
. with the values they were prior to it being originally drawn.
N $E63F This is the 4x4 block of attributes which were behind the cursor before
. it was initially painted.
  $E63F,$03 Load #REGhl with #R$E5D0.
N $E642 This is a pointer to the starting attribute buffer location of the
. players cursor.
  $E642,$04 Load #REGde with *#R$E5E2.
N $E646 The cursor block is #N$04x#N$04 (#N$04 rows of #N$04 bytes).
  $E646,$02 Set a counter in #REGb for #N$04 rows.
@ $E648 label=Remove_PlayerCursorAttributes_Loop
  $E648,$01 Stash the row counter on the stack.
  $E649,$05 Copy #N($0004,$04,$04) bytes from the stored attributes to the
. attribute buffer.
N $E64E One full row is #N$20 bytes, so this is #N$04 bytes less than one row.
. Hence this moves down one row, but back to the start of the line.
  $E64E,$06 Add #N($001C,$04,$04) to the attribute buffer position.
  $E654,$01 Restore the row counter from the stack.
  $E655,$02 Decrease the row counter by one and loop back to #R$E648 until
. all the rows have been updated.
  $E657,$01 Return.

c $E658 Remove Player Cursor
@ $E658 label=Remove_PlayerCursor
  $E658,$05 Set *#R$D835 to OFF (#N$00).
  $E65D,$03 Call #R$E63F.
  $E660,$01 Return.

c $E661 Display Player Cursor
@ $E661 label=Display_PlayerCursor
  $E661,$03 Call #R$E5E4.
  $E664,$05 Set *#R$D835 to ON (#N$01).
  $E669,$01 Return.

c $E66A Set Home To Default Attributes
@ $E66A label=Home_DefaultAttributes
  $E66A,$03 #REGde=#N$5822 (attribute buffer location).
  $E66D,$03 #REGhl=#R$E6A3.
N $E670 The home block is #N$04x#N$04 (#N$04 rows of #N$04 bytes) but not all
. of it cycles attributes. Only #N$03x#N$04 is used here.
  $E670,$02 Set a counter in #REGb for #N$04 rows.
@ $E672 label=Home_DefaultAttributes_Loop
  $E672,$01 Stash the row counter on the stack.
  $E673,$05 Copy #N($0003,$04,$04) bytes from the attribute buffer to #R$E6A3.
N $E678 One full row is #N$20 bytes, so this is #N$03 bytes less than one row.
. Hence this moves down one row, but back to the start of the line.
  $E678,$06 Add #N($001D,$04,$04) to the attribute buffer position.
  $E67E,$01 Restore the row counter from the stack.
  $E67F,$02 Decrease the row counter by one and loop back to #R$E672 until all
. the rows have been updated.
  $E681,$01 Return.

c $E682 Colourise Home
@ $E682 label=ColouriseHome
R $E682 A The attribute value to write
  $E682,$03 #REGhl=#N$5821 (attribute buffer location).
  $E685,$02 Set a counter in #REGb for #N$02 rows.
@ $E687 label=ColouriseHome_Loop
  $E687,$01 Stash the row counter on the stack.
  $E688,$02 Set a counter in #REGb for #N$03 character blocks.
@ $E68A label=Home_WriteAttribute
  $E68A,$01 Write the value stored in #REGa to the address held by the
. attribute buffer pointer.
  $E68B,$01 Increment the attribute buffer pointer by one.
  $E68C,$02 Decrease the character block counter by one and loop back to
. #R$E68A until all three byte values have been written.
  $E68E,$03 #REGhl=#N$5841 (attribute buffer location).
  $E691,$01 Restore the row counter from the stack.
  $E692,$02 Decrease the row counter by one and loop back to #R$E687 until all
. the rows have been updated.
  $E694,$01 Return.

g $E695 Home Arrow Attributes
@ $E695 label=HomeArrowAttributes
D $E695 Used by the routine at #R$E320.
B $E695,$01 #COLOUR(#PEEK(#PC)).
L $E695,$01,$0E

g $E6A3 Home Attributes
@ $E6A3 label=HomeAttributes
D $E6A3 Used by the routine at #R$E66A.
B $E6A3,$03 Top line.
B $E6A6,$03 Middle line (upper).
B $E6A9,$03 Middle line (lower).
B $E6AC,$03 Bottom line.

g $E6AF Cursor Attributes
@ $E6AF label=CursorAttributes
D $E6AF Used by the routine at #R$E5E4.
B $E6AF,$04 Top line.
B $E6B3,$04,$02 Left/ right middle.
B $E6B7,$04 Bottom line.

g $E6BB Table: Cursor Attribute Positions
@ $E6BB label=Table_CursorAttributePositions
D $E6BB Used by the routine at #R$E6C8.
B $E6BB,$0B

g $E6C6 Temporary Cursor Attribute Byte Pointer
@ $E6C6 label=TempAttributeStore
D $E6C6 Used by the routine at #R$E6C8.
W $E6C6,$02

c $E6C8 Rotate Player Cursor Attributes
@ $E6C8 label=PlayerCursor_AttributesRotator
N $E6C8 This is a pretty confusing routine, it's used for rotating the
. attribute values of the players cursor. These are stored in a table at
. #R$E6AF.
N $E6C8 The reason why this is complicated is simply down to how the data is
. stored... Rather than hold the attribute bytes sequentially, they're held as:
. top row x 4 bytes, left side x 1 byte, right side x 1 byte, left side x 1
. byte, right side x 1 byte and lastly, the bottom row x 4 bytes.
.
. This makes them a lot easier to draw, as the whole thing can then be drawn
. left-to-right one row at a time (see #R$E5E4).
.
. Hopefully the rotation problem is clear already, this isn't a matter of just
. moving every byte along one position - in order to rotate, a look up table is
. used to track the positions at #R$E6BB.
.
. This table should also hopefully make things clearer:
. #PUSHS #SIM(start=$E6C8,stop=$E6EB)#LET(cursor1[]=(0))
. #FOR$00,$0B||x|#LET(cursor1[x]=#PEEK($E6AF+x))||
. #SIM(start=$E6C8,stop=$E6EB)#LET(cursor2[]=(0))
. #FOR$00,$0B||x|#LET(cursor2[x]=#PEEK($E6AF+x))|| #POPS
. #TABLE(default,centre,centre,centre,centre)
. { =h,r2 Address | =h Before | =h After 1 Pass | =h After 2 Passes | =h,r2 Position }
. { =h Attribute Byte | =h Attribute Byte | =h Attribute Byte }
. #FOR$00,$0B(n,{ #N($E6AF+n) | #N(#PEEK($E6AF+n)) | #N({cursor1[n]}) | #N({cursor2[n]}) | #MAP(n)(
. ?,
. 0:Top byte 1 (left),
. 1:Top byte 2,
. 2:Top byte 3,
. 3:Top byte 4 (right),
. 4:Middle top byte 1 (left),
. 5:Middle top byte 2 (right),
. 6:Middle bottom byte 1 (left),
. 7:Middle bottom byte 2 (right),
. 8:Bottom byte 1 (left),
. 9:Bottom byte 2,
. 10:Bottom byte 3,
. 11:Bottom byte 4 (right)) })
. TABLE#
N $E6C8 On the top row, it's very simple to shift each byte one position to the
. right but when you reach the end of that row, the subsequent address isn't
. just next in the sequence. Instead, it's "Middle top byte 2 (right)" as shown
. in the table which is two positions after "Top byte 4 (right)". Likewise, the
. next position for the middle section is again, two positions after this one
. and the bottom row moves in the opposite direction entirely in order to
. achieve the circular motion!
N $E6C8 This creates a wonderful effect as shown here:
. #PUSHS #UDGTABLE {
.   #SIM(start=$D1F1,stop=$D1F7)#POKES$D82E,$06;$D82F,$06
.   #FOR$01,$0C||x|#SIM(start=$F874,stop=$F87D)
.     #SCR$02{$50,$50,$40,$40}(*moving-game-cursor-x)#PLOT(0,0,0)(moving-game-cursor-x)
.   ||
.   #UDGARRAY#(#ANIMATE$02,$0C(moving-game-cursor))
. } UDGTABLE# #POPS
  $E6C8,$03 Set #REGhl to point to #R$E6AF.
  $E6CB,$04 Set #REGix to point to #R$E6BB which is the rotation order table.
  $E6CF,$03 Initialise #REGde to #N($0000,$04,$04).
  $E6D2,$02 Set a counter in #REGb for #N$0B attribute byte positions.
N $E6D4 Grab the first attribute byte value and store it in #REGc for the last
. part...
  $E6D4,$01 Fetch the first byte from the cursor attributes pointer and store
. it in #REGc.
N $E6D5 This is a loop which rotates the attributes #N$0B times, each time
. moving an attribute from the position specified in the table to the current
. position.
@ $E6D5 label=PlayerCursor_AttributesRotator_Loop
  $E6D5,$01 Stash the current position in #R$E6AF on the stack.
  $E6D6,$03 Fetch the current position in the rotation order and store it in #REGe.
  $E6D9,$02 Move to the next entry in rotation table.
  $E6DB,$04 Add #R$E6AF with #REGde and store the result in #REGhl.
  $E6DF,$01 Fetch a byte from the calculated attribute byte pointer and store it in #REGa.
  $E6E0,$03 Store the calculated attribute byte pointer at *#R$E6C6.
  $E6E3,$01 Restore the cursor attributes pointer from the stack.
  $E6E4,$01 Write the byte to the cursor attributes pointer.
  $E6E5,$03 Restore the calculated attribute byte pointer at *#R$E6C6 back to #REGhl.
  $E6E8,$02 Decrease the attribute byte counter by one and loop back to #R$E6D5
. until the attribute byte counter is zero.
N $E6EA Write the first attribute byte value we stored in #REGc to the second
. position in the attributes table.
  $E6EA,$01 Write the stored attribute byte in #REGc to *#REGhl.
  $E6EB,$01 Return.

c $E6EC Generate Random Number
@ $E6EC label=GenerateRandomNumber
R $E6EC O:BC The generated random number
  $E6EC,$01 Stash #REGhl on the stack.
  $E6ED,$03 #REGhl=*#R$E2C5.
  $E6F0,$01 Fetch a byte from *#REGhl and store it in #REGa.
  $E6F1,$03 Multiply #REGa by #N$10.
  $E6F4,$01 Stash the result on the stack.
  $E6F5,$02 #REGa=the contents of the Memory Refresh Register.
  $E6F7,$02,b$01 Ensure the number is between #N$00-#N$1F.
  $E6F9,$01 Store the result in #REGh.
  $E6FA,$01 Increment #REGl by one.
  $E6FB,$03 Write #REGhl to *#R$E2C5.
  $E6FE,$01 Restore #REGaf from the stack.
  $E6FF,$03 Write #REGhl to *#R$E2C5.
  $E702,$03 #REGhl=#R$D825.
  $E705,$02 Divide #REGa by #N$02.
@ $E707 label=HalveRandomNumber
  $E707,$02 Divide #REGa by #N$02.
  $E709,$04 Jump to #R$E707 if #REGa is greater than or equal to *#REGhl.
  $E70D,$01 Increment #REGa by one.
  $E70E,$03 Store the result in #REGbc.
  $E711,$01 Restore #REGhl from the stack.
  $E712,$01 Return.

c $E713
  $E713,$03 #REGhl=#R$E293.
  $E716,$08 Jump to #R$E724 if *#R$D826 is not equal to #N$00.
  $E71E,$05 Write #N$00 to *#R$E2C7.
  $E723,$01 Return.

  $E724,$01 #REGa=*#REGhl.
  $E725,$02 #REGde=#REGhl (using the stack).
  $E727,$01 Increment #REGhl by one.
  $E728,$03 Write #REGa to *#R$E2C7.
  $E72B,$03 #REGa=*#R$D826.
  $E72E,$01 Decrease #REGa by one.
  $E72F,$05 Jump to #R$E738 if #REGa is not equal to #N$00.
  $E734,$02 #REGc=#N$01.
  $E736,$02 Jump to #R$E739.

  $E738,$01 #REGc=#REGa.
  $E739,$02 #REGb=#N$00.
  $E73B,$02 LDIR.
  $E73D,$03 Write #REGa to *#R$D826.
  $E740,$01 Return.

c $E741
  $E741,$08 Jump to #R$E74A if *#R$E2C7 is less than #N$15 (unsigned comparison).
  $E749,$01 Return.
  $E74A,$03 #REGhl=#R$E293.
  $E74D,$02 #REGb=#N$00.
  $E74F,$03 #REGa=*#R$D826.
  $E752,$01 #REGc=#REGa.
  $E753,$01 Increment #REGa by one.
  $E754,$03 Write #REGa to *#R$D826.
  $E757,$01 #REGhl+=#REGbc.
  $E758,$04 Write *#R$E2C7 to *#REGhl.
  $E75C,$01 Return.

g $E75D Tile Helper Variables
@ $E75D label=Tile_Horizontal_Position
@ $E75E label=Tile_Vertical_Position
@ $E75F label=Tile_Horizontal_Coordinate
@ $E760 label=Tile_Vertical_Coordinate
@ $E761 label=Tile_SpacesToMove
  $E75D,$13,$01

b $E771

c $E775
  $E775,$03 #REGa=*#R$E75D.
  $E778,$03 Write #REGa to *#R$E762.
  $E77B,$01 Increment #REGa by one.
  $E77C,$03 Write #REGa to *#R$E763.
  $E77F,$03 #REGa=*#R$E75E.
  $E782,$03 Write #REGa to *#R$E764.
  $E785,$01 Increment #REGa by one.
  $E786,$03 Write #REGa to *#R$E765.
  $E789,$04 #REGb=*#R$E75D.
  $E78D,$04 #REGc=*#R$E75E.
  $E791,$03 Call #R$E992.
  $E794,$02 #REGe=#N$7F.
  $E796,$01 Stash #REGhl on the stack.
  $E797,$01 #REGa=*#REGhl.
  $E798,$01 Write #REGe to *#REGhl.
  $E799,$03 Write #REGa to *#R$E766.
  $E79C,$01 Increment #REGhl by one.
  $E79D,$01 #REGa=*#REGhl.
  $E79E,$01 Write #REGe to *#REGhl.
  $E79F,$03 Write #REGa to *#R$E767.
  $E7A2,$04 #REGhl+=#N($001F,$04,$04).
  $E7A6,$01 #REGa=*#REGhl.
  $E7A7,$01 Write #REGe to *#REGhl.
  $E7A8,$03 Write #REGa to *#R$E768.
  $E7AB,$01 Increment #REGhl by one.
  $E7AC,$01 #REGa=*#REGhl.
  $E7AD,$01 Write #REGe to *#REGhl.
  $E7AE,$03 Write #REGa to *#R$E769.
  $E7B1,$03 Call #R$E9A5.
  $E7B4,$01 Halt operation (suspend CPU until the next interrupt).
  $E7B5,$01 Restore #REGhl from the stack.
  $E7B6,$04 Write *#R$E766 to *#REGhl.
  $E7BA,$01 Increment #REGhl by one.
  $E7BB,$04 Write *#R$E767 to *#REGhl.
  $E7BF,$04 #REGhl+=#N($001F,$04,$04).
  $E7C3,$04 Write *#R$E768 to *#REGhl.
  $E7C7,$01 Increment #REGhl by one.
  $E7C8,$04 Write *#R$E769 to *#REGhl.
  $E7CC,$02 #REGd=#N$00.
  $E7CE,$03 #REGa=*#R$E762.
  $E7D1,$04 Jump to #R$E7DB if #REGa is equal to #N$00.
  $E7D5,$01 Decrease #REGa by one.
  $E7D6,$03 Write #REGa to *#R$E762.
  $E7D9,$02 Set bit 1 of #REGd.
  $E7DB,$03 #REGa=*#R$E763.
  $E7DE,$04 Jump to #R$E7E8 if #REGa is equal to #N$17.
  $E7E2,$01 Increment #REGa by one.
  $E7E3,$03 Write #REGa to *#R$E763.
  $E7E6,$02 Set bit 2 of #REGd.
  $E7E8,$03 #REGa=*#R$E765.
  $E7EB,$04 Jump to #R$E7F5 if #REGa is equal to #N$1F.
  $E7EF,$01 Increment #REGa by one.
  $E7F0,$03 Write #REGa to *#R$E765.
  $E7F3,$02 Set bit 3 of #REGd.
  $E7F5,$03 #REGa=*#R$E764.
  $E7F8,$04 Jump to #R$E802 if #REGa is equal to #N$00.
  $E7FC,$01 Decrease #REGa by one.
  $E7FD,$03 Write #REGa to *#R$E764.
  $E800,$02 Set bit 4 of #REGd.
  $E802,$01 #REGa=#REGd.
  $E803,$03 Return if #REGa is equal to #N$00.
  $E806,$02 #REGb=#N$02.
  $E808,$02 #REGe=#N$52.
  $E80A,$01 Stash #REGbc on the stack.
  $E80B,$02 Test bit 1 of #REGd.
  $E80D,$02 Jump to #R$E859 if #REGa is zero.
  $E80F,$04 #REGb=*#R$E762.
  $E813,$04 #REGc=*#R$E75E.
  $E817,$03 Call #R$E992.
  $E81A,$01 Restore #REGbc from the stack.
  $E81B,$01 Stash #REGbc on the stack.
  $E81C,$05 Jump to #R$E82C if #REGb is equal to #N$02.
  $E821,$04 Write *#R$E766 to *#REGhl.
  $E825,$01 Increment #REGhl by one.
  $E826,$04 Write *#R$E767 to *#REGhl.
  $E82A,$02 Jump to #R$E837.

  $E82C,$04 Write *#REGhl to *#R$E766.
  $E830,$01 Write #REGe to *#REGhl.
  $E831,$01 Increment #REGhl by one.
  $E832,$04 Write *#REGhlto *#R$E767.
  $E836,$01 Write #REGe to *#REGhl.
  $E837,$02 Test bit 3 of #REGd.
  $E839,$03 Jump to #R$E8BC if #REGhl is zero.
  $E83C,$04 #REGb=*#R$E762.
  $E840,$04 #REGc=*#R$E765.
  $E844,$03 Call #R$E992.
  $E847,$01 Restore #REGbc from the stack.
  $E848,$01 Stash #REGbc on the stack.
  $E849,$05 Jump to #R$E854 if #REGb is equal to #N$02.
  $E84E,$04 Write *#R$E768 to *#REGhl.
  $E852,$02 Jump to #R$E859.

  $E854,$04 Write *#REGhl to *#R$E768.
  $E858,$01 Write #REGe to *#REGhl.
  $E859,$02 Test bit 3 of #REGd.
  $E85B,$02 Jump to #R$E8BC if #REGa is zero.
  $E85D,$04 #REGb=*#R$E75D.
  $E861,$04 #REGc=*#R$E765.
  $E865,$03 Call #R$E992.
  $E868,$01 Restore #REGbc from the stack.
  $E869,$01 Stash #REGbc on the stack.
  $E86A,$05 Jump to #R$E885 if #REGb is equal to #N$02.
  $E86F,$04 Write *#R$E769 to *#REGhl.
  $E873,$04 #REGb=*#R$E75D.
  $E877,$01 Increment #REGb by one.
  $E878,$04 #REGc=*#R$E765.
  $E87C,$03 Call #R$E992.
  $E87F,$04 Write *#R$E76A to *#REGhl.
  $E883,$02 Jump to #R$E89B.

  $E885,$04 Write *#REGhl to *#R$E769.
  $E889,$01 Write #REGe to *#REGhl.
  $E88A,$04 #REGb=*#R$E75D.
  $E88E,$01 Increment #REGb by one.
  $E88F,$04 #REGc=*#R$E765.
  $E893,$03 Call #R$E992.
  $E896,$04 Write *#REGhl to *#R$E76A.
  $E89A,$01 Write #REGe to *#REGhl.
  $E89B,$02 Test bit 2 of #REGd.
  $E89D,$02 Jump to #R$E90A if #REGb is zero.
  $E89F,$04 #REGb=*#R$E763.
  $E8A3,$04 #REGc=*#R$E765.
  $E8A7,$03 Call #R$E992.
  $E8AA,$01 Restore #REGbc from the stack.
  $E8AB,$01 Stash #REGbc on the stack.
  $E8AC,$05 Jump to #R$E8B7 if #REGb is equal to #N$02.
  $E8B1,$04 Write *#R$E76B to *#REGhl.
  $E8B5,$02 Jump to #R$E8BC.

  $E8B7,$04 Write *#REGhl to *#R$E76B.
  $E8BB,$01 Write #REGe to *#REGhl.
  $E8BC,$02 Test bit 2 of #REGd.
  $E8BE,$02 Jump to #R$E90A if #REGa is zero.
  $E8C0,$04 #REGb=*#R$E763.
  $E8C4,$04 #REGc=*#R$E75E.
  $E8C8,$03 Call #R$E992.
  $E8CB,$01 Restore #REGbc from the stack.
  $E8CC,$01 Stash #REGbc on the stack.
  $E8CD,$05 Jump to #R$E8DD if #REGb is equal to #N$02.
  $E8D2,$04 Write *#R$E76C to *#REGhl.
  $E8D6,$01 Increment #REGhl by one.
  $E8D7,$04 Write *#R$E76D to *#REGhl.
  $E8DB,$02 Jump to #R$E8E8.

  $E8DD,$04 Write *#REGhl to *#R$E76C.
  $E8E1,$01 Write #REGe to *#REGhl.
  $E8E2,$01 Increment #REGhl by one.
  $E8E3,$04 Write *#REGhl to *#R$E76D.
  $E8E7,$01 Write #REGe to *#REGhl.
  $E8E8,$02 Test bit 4 of #REGd.
  $E8EA,$03 Jump to #R$E96D if #REGhl is zero.
  $E8ED,$04 #REGb=*#R$E763.
  $E8F1,$04 #REGc=*#R$E764.
  $E8F5,$03 Call #R$E992.
  $E8F8,$01 Restore #REGbc from the stack.
  $E8F9,$01 Stash #REGbc on the stack.
  $E8FA,$05 Jump to #R$E905 if #REGb is equal to #N$02.
  $E8FF,$04 Write *#R$E76E to *#REGhl.
  $E903,$02 Jump to #R$E90A.

  $E905,$04 Write *#REGhl to *#R$E76E.
  $E909,$01 Write #REGe to *#REGhl.
  $E90A,$02 Test bit 4 of #REGd.
  $E90C,$02 Jump to #R$E96D if #REGa is zero.
  $E90E,$04 #REGb=*#R$E75D.
  $E912,$04 #REGc=*#R$E764.
  $E916,$03 Call #R$E992.
  $E919,$01 Restore #REGbc from the stack.
  $E91A,$01 Stash #REGbc on the stack.
  $E91B,$05 Jump to #R$E936 if #REGb is equal to #N$02.
  $E920,$04 Write *#R$E76F to *#REGhl.
  $E924,$04 #REGb=*#R$E75D.
  $E928,$01 Increment #REGb by one.
  $E929,$04 #REGc=*#R$E764.
  $E92D,$03 Call #R$E992.
  $E930,$04 Write *#R$E770 to *#REGhl.
  $E934,$02 Jump to #R$E94C.

  $E936,$04 Write *#REGhl to *#R$E76F.
  $E93A,$01 Write #REGe to *#REGhl.
  $E93B,$04 #REGb=*#R$E75D.
  $E93F,$01 Increment #REGb by one.
  $E940,$04 #REGc=*#R$E764.
  $E944,$03 Call #R$E992.
  $E947,$04 Write *#REGhl to *#R$E770.
  $E94B,$01 Write #REGe to *#REGhl.
  $E94C,$02 Test bit 1 of #REGd.
  $E94E,$02 Jump to #R$E96D if #REGb is zero.
  $E950,$04 #REGb=*#R$E762.
  $E954,$04 #REGc=*#R$E764.
  $E958,$03 Call #R$E992.
  $E95B,$01 Restore #REGbc from the stack.
  $E95C,$01 Stash #REGbc on the stack.
  $E95D,$05 Jump to #R$E968 if #REGb is equal to #N$02.
  $E962,$04 Write *#R$E771 to *#REGhl.
  $E966,$02 Jump to #R$E96D.

  $E968,$04 Write *#REGhl to *#R$E771.
  $E96C,$01 Write #REGe to *#REGhl.
  $E96D,$02 #REGa=the contents of the Memory Refresh Register.
  $E96F,$01 #REGl=#REGa.
  $E970,$02 #REGh=#N$0A.
  $E972,$04 #REGb=*#R$E763.
  $E976,$02 #REGa=#N$18.
  $E978,$01 #REGa-=#REGb.
  $E979,$01 #REGb=#REGa.
  $E97A,$01 #REGa=*#REGhl.
  $E97B,$02,b$01 Keep only bits 3-4.
  $E97D,$02,b$01 Set bits 0, 2.
  $E97F,$02 Set border to the colour held by #REGa.
  $E981,$01 Increment #REGhl by one.
  $E982,$02 Decrease counter by one and loop back to #R$E97A until counter is zero.
  $E984,$01 Restore #REGbc from the stack.
  $E985,$01 #REGa=#REGb.
  $E986,$04 Jump to #R$E98B if #REGa is not equal to #N$02.
  $E98A,$01 Halt operation (suspend CPU until the next interrupt).
  $E98B,$01 Decrease #REGb by one.
  $E98C,$03 Jump to #R$E80A if #REGb is not zero.
  $E98F,$03 Jump to #R$E7CC.
  $E992,$01 #REGa=#REGb.
  $E993,$06 Shift #REGa right three positions (with carry).
  $E999,$02 #REGa+=#N$58.
  $E99B,$01 #REGh=#REGa.
  $E99C,$01 #REGa=#REGb.
  $E99D,$02,b$01 Keep only bits 0-2.
  $E99F,$03 RRCA.
  $E9A2,$01 #REGa+=#REGc.
  $E9A3,$01 #REGl=#REGa.
  $E9A4,$01 Return.

c $E9A5
  $E9A5,$03 #REGl=the contents of the Memory Refresh Register.
  $E9A8,$02 #REGh=#N$01.
  $E9AA,$02 #REGb=#N$64.
  $E9AC,$01 #REGa=*#REGhl.
  $E9AD,$02,b$01 Keep only bits 3-4.
  $E9AF,$02,b$01 Set bits 0, 2.
  $E9B1,$02 Send to the speaker.
  $E9B3,$01 Increment #REGhl by one.
  $E9B4,$02 #REGa=the contents of the Memory Refresh Register.
  $E9B6,$01 Increment #REGa by one.
  $E9B7,$01 RLCA.
  $E9B8,$01 #REGe=#REGa.
  $E9B9,$01 Decrease #REGe by one.
  $E9BA,$02 Jump to #R$E9B9 if #REGe is not zero.
  $E9BC,$02 Decrease counter by one and loop back to #R$E9AC until counter is zero.
  $E9BE,$01 Return.

c $E9BF
  $E9BF,$03 #REGhl=#R$D827.
  $E9C2,$01 Increment *#REGhl by one.
  $E9C3,$03 #REGhl=*#R$D872.
  $E9C6,$02 Decrease #REGhl by two.
  $E9C8,$03 Write #REGhl to *#R$D872.
  $E9CB,$02 Write #COLOUR$28 to *#REGhl.
  $E9CD,$01 Increment #REGhl by one.
  $E9CE,$02 Write #COLOUR$28 to *#REGhl.
  $E9D0,$04 #REGhl+=#N($001F,$04,$04).
  $E9D4,$02 Write #COLOUR$28 to *#REGhl.
  $E9D6,$01 Increment #REGhl by one.
  $E9D7,$02 Write #COLOUR$28 to *#REGhl.
  $E9D9,$01 Return.

c $E9DA
  $E9DA,$02 #REGa=the contents of the Memory Refresh Register.
  $E9DC,$01 Stash #REGaf on the stack.
  $E9DD,$01 Disable interrupts.
  $E9DE,$02 #REGb=#N$02.
  $E9E0,$01 Stash #REGbc on the stack.
  $E9E1,$03 #REGbc=#N($1388,$04,$04).
  $E9E4,$01 Decrease #REGbc by one.
  $E9E5,$04 Jump to #R$E9E4 if #REGbc is not zero.
  $E9E9,$03 #REGhl=#N$5800 (screen buffer location).
  $E9EC,$03 #REGbc=#N($0300,$04,$04).
  $E9EF,$01 #REGa=*#REGhl.
  $E9F0,$02,b$01 Flip bits 0-6.
  $E9F2,$01 Write #REGa to *#REGhl.
  $E9F3,$01 Increment #REGhl by one.
  $E9F4,$01 Decrease #REGbc by one.
  $E9F5,$04 Jump to #R$E9EF if #REGbc is not zero.
  $E9F9,$01 Restore #REGbc from the stack.
  $E9FA,$02 Decrease counter by one and loop back to #R$E9E0 until counter is zero.
  $E9FC,$01 Restore #REGaf from the stack.
  $E9FD,$01 Return if #REGbc is odd.
  $E9FE,$01 Enable interrupts.
  $E9FF,$01 Return.

c $EA00 Print Bonus
@ $EA00 label=Print_Bonus
  $EA00,$02 #REGb=#N$11.
  $EA02,$02 #REGc=#N$18.
  $EA04,$03 #REGde=#R$D83F.
  $EA07,$02 #REGa=#N$06.
  $EA09,$04 #REGix=#R$D83A.
  $EA0D,$04 Reset bit 1 of *#REGix+#N$00.
  $EA11,$03 Jump to #R$DB2E.

c $EA14 Print Score
@ $EA14 label=Print_Score
  $EA14,$02 #REGb=#N$13.
  $EA16,$02 #REGc=#N$18.
  $EA18,$03 Call #R$DCC2.
  $EA1B,$04 Increment #REGh by four.
  $EA1F,$03 #REGde=#R$D874.
  $EA22,$04 #REGix=#R$D83A.
  $EA26,$04 Set bit 1 of *#REGix+#N$00.
  $EA2A,$02 Set the number of digits to display: #N$03.
  $EA2C,$03 Jump to #R$DB35.

c $EA2F Print Level
@ $EA2F label=Print_Level
  $EA2F,$02 #REGb=#N$0E.
  $EA31,$02 #REGc=#N$1C.
  $EA33,$03 Call #R$DCC2.
  $EA36,$04 Increment #REGh by four.
  $EA3A,$03 #REGde=#R$D86E.
  $EA3D,$04 #REGix=#R$D83A.
  $EA41,$04 Set bit 1 of *#REGix+#N$00.
  $EA45,$02 #REGb=#N$01.
  $EA47,$03 Jump to #R$DB35.

c $EA4A Handler: Main Menu
@ $EA4A label=Handler_MainMenu
N $EA4A #PUSHS #UDGTABLE { #SIM(start=$D1BF,stop=$D1DB)#SIM(start=$EA4A,stop=$EAFB)#SCR$02(main-menu-cursor) } UDGTABLE# #POPS
  $EA4A,$03 #REGde=#R$D874.
  $EA4D,$03 #REGhl=#R$D86F.
  $EA50,$01 Load the first byte of the current score.
  $EA51,$01 Compare it with the first byte of the high score.
  $EA52,$03 Jump to #R$EA62 if the current score digit is less than the high
. score digit.
N $EA55 It's a new high score! Update what's stored.
  $EA55,$02 Write the first score digit to the first highscore digit.
  $EA57,$01 Increment the current score pointer by one.
  $EA58,$01 Increment the high score pointer by one.
  $EA59,$02 Jump to #R$EA60 until the score digit is zero.
  $EA5B,$01 Load the second byte of the current score.
  $EA5C,$01 Compare it with the second byte of the high score.
  $EA5D,$03 Jump to #R$EA62 if the current score digit is less than the high
. score digit.
@ $EA60 label=UpdateHighScore
  $EA60,$02 Write the second score digit to the second highscore digit.
N $EA62 Print the score of the last game and the high score.
@ $EA62 label=Print_Score/HighScore
  $EA62,$02 Set the X co-ordinate for the score display.
  $EA64,$02 Set the Y co-ordinate for the score display.
  $EA66,$03 #REGde=#R$D874.
  $EA69,$02 Set the number of digits to print in #REGa.
  $EA6B,$03 Call #R$DB2E.
  $EA6E,$02 Set the X co-ordinate for the high score display.
  $EA70,$02 Set the Y co-ordinate for the high score display.
  $EA72,$03 #REGde=#R$D86F.
  $EA75,$02 Set the number of digits to print in #REGa.
  $EA77,$03 Call #R$DB2E.
N $EA7A Initialise the cursor/ pointer which highlights the currently selected
. menu item.
  $EA7A,$04 #REGix=*#R$D877.
  $EA7E,$03 #REGhl=#R$EB38.
  $EA81,$02 Jump to #R$EAE7.
N $EA83 Maybe a debounce loop?
@ $EA83 label=Debounce_Loop
  $EA83,$03 Get the player input from ALL half-rows (i.e. all the keys).
  $EA86,$01 Invert the bits in #REGa.
  $EA87,$02,b$01 Keep only bits 0-4.
  $EA89,$02 Jump to #R$EA83 if #REGhl is not zero.
N $EA8B Get the player input.
@ $EA8B label=MainMenuInput_Loop
  $EA8B,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $EA8F,$01 Invert the bits in #REGa.
  $EA90,$02,b$01 Mask for the key bits.
  $EA92,$02 Jump back to #R$EA8B if no keys are being pressed.
N $EA94 Check which key was pressed and handle accordingly.
N $EA94 Handle "KEYBOARD" being selected.
  $EA94,$03 Jump to #R$EAA8 if "1" was not pressed.
  $EA97,$05 Jump back to #R$EA83 if this menu item is already selected.
  $EA9C,$03 Call #R$EAFD.
  $EA9F,$04 Set the screen position for this option in #REGix.
  $EAA3,$03 Set the address of the input control routine for this option in #REGde (#R$EB64).
  $EAA6,$02 Jump to #R$EAE2.

N $EAA8 Handle "KEMPSTON" being selected.
@ $EAA8 label=MainMenuInput_Kempston
  $EAA8,$03 Jump to #R$EABC if "2" was not pressed.
  $EAAB,$05 Jump back to #R$EA83 if this menu item is already selected.
  $EAB0,$03 Call #R$EAFD.
  $EAB3,$04 Set the screen position for this option in #REGix.
  $EAB7,$03 Set the address of the input control routine for this option in #REGde (#R$EB98).
  $EABA,$02 Jump to #R$EAE2.

N $EABC Handle "CURSOR" being selected.
@ $EABC label=MainMenuInput_Cursor
  $EABC,$03 Jump to #R$EAD0 if "3" was not pressed.
  $EABF,$05 Jump back to #R$EA83 if this menu item is already selected.
  $EAC4,$03 Call #R$EAFD.
  $EAC7,$04 Set the screen position for this option in #REGix.
  $EACB,$03 Set the address of the input control routine for this option in #REGde (#R$EB9E).
  $EACE,$02 Jump to #R$EAE2.

N $EAD0 Handle "SINCLAIR" being selected.
@ $EAD0 label=MainMenuInput_Sinclair
  $EAD0,$03 Jump to #R$EB0E if "4" was not pressed.
  $EAD3,$05 Jump back to #R$EA83 if this menu item is already selected.
  $EAD8,$03 Call #R$EAFD.
  $EADB,$04 Set the screen position for this option in #REGix.
  $EADF,$03 Set the address of the input control routine for this option in #REGde (#R$EBCD).

N $EAE2 Update menu selection.
@ $EAE2 label=UpdateMenuSelection
  $EAE2,$01 Write the selected menu item to *#R$EB38.
  $EAE3,$04 Write the address of the input control routine to *#R$EB36.

N $EAE7 Point to selected menu item.
@ $EAE7 label=HighlightSelectedMenuItem
  $EAE7,$08 Write #COLOUR$45 to: #TABLE(default,centre,centre)
. { =h Offset | =h Position }
. { *#REGix+#N$00 | Top-left }
. { *#REGix+#N$01 | Top-right }
. TABLE#
  $EAEF,$08 Write #COLOUR$05 to: #TABLE(default,centre,centre)
. { =h Offset | =h Position }
. { *#REGix+#N$20 | Bottom-left }
. { *#REGix+#N$21 | Bottom-right }
. TABLE#
  $EAF7,$04 Write #REGix to #R$D877.
  $EAFB,$02 Jump to #R$EA83.
N $EAFD Clear previous selected menu item.
@ $EAFD label=ClearSelectedMenuItem
  $EAFD,$10 Write #COLOUR$00 to: #TABLE(default,centre,centre)
. { =h Offset | =h Position }
. { *#REGix+#N$00 | Top-left }
. { *#REGix+#N$01 | Top-right }
. { *#REGix+#N$20 | Bottom-left }
. { *#REGix+#N$21 | Bottom-right }
. TABLE#
  $EB0D,$01 Return.

N $EB0E Note; there's no need for the "not pressed" check, as there are only five options.
N $EB0E Handle "START GAME" being selected.
N $EB0E #PUSHS #UDGTABLE { #SIM(start=$D1BF,stop=$D1DB)#SIM(start=$EA4A,stop=$EAFB)#SIM(start=$EB0E,stop=$EB24)#SCR$02(good-luck) } UDGTABLE# #POPS
N $EB0E Uncover the "Good Luck" messaging (it's already present, just black on black).
@ $EB0E label=MainMenuInput_StartGame
  $EB0E,$03 #REGhl=#N$5A36 (attribute buffer location).
  $EB11,$03 #REGde=#N($0020,$04,$04).
  $EB14,$02 Set a counter in #REGb for the number of rows to process.
@ $EB16 label=GoodLuck_OuterLoop
  $EB16,$01 Stash the row counter on the stack.
  $EB17,$02 Set a counter in #REGb for the width of the messaging.
  $EB19,$01 Stash the starting position in the attribute buffer on the stack.
@ $EB1A label=GoodLuck_InnerLoop
  $EB1A,$02 Write #COLOUR$47 to *#REGhl.
  $EB1C,$01 Increment attribute buffer screen position by one.
  $EB1D,$02 Decrease width counter by one and loop back to #R$EB1A until all
. the width has been coloured.
  $EB1F,$01 Restore the attribute buffer starting position from the stack.
  $EB20,$01 #REGhl+=#N($0020,$04,$04) (move down one row).
  $EB21,$01 Restore the row counter from the stack.
  $EB22,$02 Decrease the row counter by one and loop back to #R$EB16 until the
. row counter is zero.
  $EB24,$05 Write #N$01 to #R$EB39.
  $EB29,$01 Stash #R$EB39 on the stack.
  $EB2A,$03 #REGhl=#R$EB3A.
  $EB2D,$02 #REGb=#N$0E.
  $EB2F,$03 Call #R$EF4A.
  $EB32,$01 Restore #REGhl from the stack.
  $EB33,$02 Write #N$00 to *#REGhl.
  $EB35,$01 Return.

g $EB36 Input Control Pointer
@ $EB36 label=Pointer_InputControl
D $EB36 Will point to one of:
. #TABLE(default,centre,centre)
. { =h Control Method | =h Address }
. { Keyboard | #R$EB64 }
. { Kempston | #R$EB98 }
. { Cursor | #R$EB9E }
. { Sinclair | #R$EBCD }
. TABLE#
W $EB36,$02

g $EB38 Selected Menu Item
D $EB38 Populated by the routine at #R$EA4A (#R$EAE2).
. #TABLE(default,centre,centre)
. { =h Byte | =h Meaning }
. { #N$01 | Keyboard }
. { #N$02 | Kempston }
. { #N$03 | Cursor }
. { #N$04 | Sinclair }
. TABLE#
@ $EB38 label=SelectedMenuItem
B $EB38,$01

g $EB39

g $EB3A

c $EB56 Handler: Get Player Input
@ $EB56 label=Handler_PlayerInput
  $EB56,$03 Stash #REGhl and #REGix on the stack.
  $EB59,$03 #REGhl=#R$E5B2.
  $EB5C,$04 #REGix=*#R$EB36.
  $EB60,$02 Initialise *#R$E5B2 to "no input" (#N$00).
  $EB62,$02 Jump to the input control routine address held in *#REGix.

c $EB64 Input Handler: Keyboard
@ $EB64 label=InputHandler_Keyboard
R $EB64 HL Points to #R$E5B2
R $EB64 IX Points to this routine
R $EB64 O:A The control byte
N $EB64 All the handlers match the outputs of the Kempston Joystick:
. #TABLE(default,centre,centre,centre)
. { =h Byte | =h Bits | =h Action }
. { #N$01 | #EVAL($01,$02,$08) | Right }
. { #N$02 | #EVAL($02,$02,$08) | Left }
. { #N$04 | #EVAL($04,$02,$08) | Down }
. { #N$08 | #EVAL($08,$02,$08) | Up }
. { #N$10 | #EVAL($10,$02,$08) | Fire }
. TABLE#
  $EB64,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$DF | P | O | I | U | Y }
. TABLE#
N $EB68 If "right" has been pressed, add #N$01 to *#REGhl.
  $EB68,$03 Jump to #R$EB6C if "P" (right) is not being pressed.
  $EB6B,$01 Increment *#REGhl by one.
N $EB6C If "left" has been pressed, add #N$02 to *#REGhl.
@ $EB6C label=Keyboard_CheckLeft
  $EB6C,$03 Jump to #R$EB71 if "O" (left) is not being pressed.
  $EB6F,$02 Increment *#REGhl by two.
@ $EB71 label=Keyboard_CheckUp
  $EB71,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FB | Q | W | E | R | T }
. TABLE#
  $EB75,$03 Jump to #R$EB7C if "Q" (up) is not being pressed.
  $EB78,$04 Add #N$08 to *#REGhl and write it back.
N $EB7C If "down" has been pressed, add #N$04 to *#REGhl.
@ $EB7C label=Keyboard_CheckDown
  $EB7C,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FD | A | S | D | F | G }
. TABLE#
  $EB80,$03 Jump to #R$EB87 if "A" (down) is not being pressed.
  $EB83,$04 Add #N$04 to *#REGhl and write it back.
N $EB87 If "fire" has been pressed, add #N$10 to *#REGhl.
N $EB87 Note; ALL these keys are fire button keys.
@ $EB87 label=Keyboard_CheckFire
  $EB87,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { =r2 #N$7E | SPACE | FULL-STOP | M | N | B }
. { Shift | Z | X | C | V }
. TABLE#
  $EB8B,$01 Invert the bits in #REGa.
  $EB8C,$02,b$01 Keep only the key bits 0-4.
  $EB8E,$03 Jump to #R$EBF5 if none of the fire keys are being pressed.
  $EB91,$04 Add #N$10 to *#REGhl and write it back.
  $EB95,$03 Jump to #R$EBF5.

c $EB98 Input Handler: Kempston
@ $EB98 label=InputHandler_Kempston
R $EB98 HL Points to #R$E5B2
R $EB98 IX Points to this routine
R $EB98 O:A The control byte
N $EB98 The outputs are:
. #TABLE(default,centre,centre,centre)
. { =h Byte | =h Bits | =h Action }
. { #N$01 | #EVAL($01,$02,$08) | Right }
. { #N$02 | #EVAL($02,$02,$08) | Left }
. { #N$04 | #EVAL($04,$02,$08) | Down }
. { #N$08 | #EVAL($08,$02,$08) | Up }
. { #N$10 | #EVAL($10,$02,$08) | Fire }
. TABLE#
  $EB98,$02 #REGa=read from the Kempston joystick port.
  $EB9A,$01 Write #REGa to *#REGhl.
  $EB9B,$03 Jump to #R$EBF5.

c $EB9E Input Handler: Cursor
@ $EB9E label=InputHandler_Cursor
R $EB9E HL Points to #R$E5B2
R $EB9E IX Points to this routine
R $EB9E O:A The control byte
N $EB9E All the handlers match the outputs of the Kempston Joystick:
. #TABLE(default,centre,centre,centre)
. { =h Byte | =h Bits | =h Action }
. { #N$01 | #EVAL($01,$02,$08) | Right }
. { #N$02 | #EVAL($02,$02,$08) | Left }
. { #N$04 | #EVAL($04,$02,$08) | Down }
. { #N$08 | #EVAL($08,$02,$08) | Up }
. { #N$10 | #EVAL($10,$02,$08) | Fire }
. TABLE#
  $EB9E,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $EBA2,$01 Invert the bits in #REGa.
  $EBA3,$02,b$01 Keep only bit 4 ("5" i.e. left).
N $EBA5 If "left" has been pressed, add #N$02 to *#REGhl.
  $EBA5,$02 Jump to #R$EBA9 if "5" (left) is not being pressed.
  $EBA7,$02 Increment *#REGhl by two.
@ $EBA9 label=Cursor_CheckInputs
  $EBA9,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
N $EBAD If "fire" has been pressed, add #N$10 to *#REGhl.
  $EBAD,$03 Jump to #R$EBB6 if "0" (fire) is not being pressed.
  $EBB0,$01 Stash the inputs on the stack.
  $EBB1,$04 Add #N$10 to *#REGhl and write it back.
  $EBB5,$01 Restore the inputs from the stack.
N $EBB6 If "right" has been pressed, add #N$01 to *#REGhl.
@ $EBB6 label=Cursor_CheckRight
  $EBB6,$04 Jump to #R$EBBB if "8" (right) is not being pressed.
  $EBBA,$01 Increment *#REGhl by one.
N $EBBB If "up" has been pressed, add #N$08 to *#REGhl.
@ $EBBB label=Cursor_CheckUp
  $EBBB,$03 Jump to #R$EBC4 if "7" (up) is not being pressed.
  $EBBE,$01 Stash the inputs on the stack.
  $EBBF,$04 Add #N$08 to *#REGhl and write it back.
  $EBC3,$01 Restore the inputs from the stack.
N $EBC4 If "down" has been pressed, add #N$04 to *#REGhl.
@ $EBC4 label=Cursor_CheckDown
  $EBC4,$03 Jump to #R$EBF5 if "6" (down) is not being pressed.
  $EBC7,$04 Add #N$04 to *#REGhl and write it back.
  $EBCB,$02 Jump to #R$EBF5.

c $EBCD Input Handler: Sinclair
@ $EBCD label=InputHandler_Sinclair
R $EBCD HL Points to #R$E5B2
R $EBCD IX Points to this routine
R $EBCD O:A The control byte
N $EBCD All the handlers match the outputs of the Kempston Joystick:
. #TABLE(default,centre,centre,centre)
. { =h Byte | =h Bits | =h Action }
. { #N$01 | #EVAL($01,$02,$08) | Right }
. { #N$02 | #EVAL($02,$02,$08) | Left }
. { #N$04 | #EVAL($04,$02,$08) | Down }
. { #N$08 | #EVAL($08,$02,$08) | Up }
. { #N$10 | #EVAL($10,$02,$08) | Fire }
. TABLE#
E $EBCD Continue on to #R$EBF5.
  $EBCD,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
N $EBD1 If "fire" has been pressed, add #N$10 to *#REGhl.
  $EBD1,$03 Jump to #R$EBDA if "0" (fire) is not being pressed.
  $EBD4,$01 Stash the inputs on the stack.
  $EBD5,$04 Add #N$10 to *#REGhl and write it back.
  $EBD9,$01 Restore the inputs from the stack.
N $EBDA If "up" has been pressed, add #N$08 to *#REGhl.
@ $EBDA label=Sinclair_CheckUp
  $EBDA,$03 Jump to #R$EBE3 if "9" (up) is not being pressed.
  $EBDD,$01 Stash the inputs on the stack.
  $EBDE,$04 Add #N$08 to *#REGhl and write it back.
  $EBE2,$01 Restore the inputs from the stack.
N $EBE3 If "down" has been pressed, add #N$04 to *#REGhl.
@ $EBE3 label=Sinclair_CheckDown
  $EBE3,$03 Jump to #R$EBEC if "8" (down) is not being pressed.
  $EBE6,$01 Stash the inputs on the stack.
  $EBE7,$04 Add #N$04 to *#REGhl and write it back.
  $EBEB,$01 Restore the inputs from the stack.
N $EBEC If "right" has been pressed, add #N$01 to *#REGhl.
@ $EBEC label=Sinclair_CheckRight
  $EBEC,$03 Jump to #R$EBF0 if "7" (right) is not being pressed.
  $EBEF,$01 Increment *#REGhl by one.
N $EBF0 If "left" has been pressed, add #N$02 to *#REGhl.
@ $EBF0 label=Sinclair_CheckLeft
  $EBF0,$03 Jump to #R$EBF5 if "6" (left) is not being pressed.
  $EBF3,$02 Increment *#REGhl by two.

c $EBF5 Input Handler: Common
@ $EBF5 label=InputHandler_Common
N $EBF5 Handle game controls which are common across all input control
. routines.
  $EBF5,$03 Housekeeping; see #R$EB56. Restore #REGix and #REGhl from the stack.
  $EBF8,$07 Jump to #R$EC35 if bit 7 of *#R$D838 is set.
N $EBFF Handler for HOLD ("H").
  $EBFF,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$BF | ENTER | L | K | J | H }
. TABLE#
  $EC03,$07 Jump to #R$EC1D if "H" (hold) is not being pressed.
  $EC0A,$02 #REGa=the contents of the Memory Refresh Register.
  $EC0C,$01 Stash #REGaf on the stack.
  $EC0D,$01 Disable interrupts.
N $EC0E Handler for CONTINUE ("J").
@ $EC0E label=Common_CheckContinue
  $EC0E,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$BF | ENTER | L | K | J | H }
. TABLE#
  $EC12,$06 Jump to #R$EC0E if "J" (continue) is not being pressed.
  $EC18,$01 Restore #REGaf from the stack.
  $EC19,$03 Jump to #R$EC1D if  is odd.
  $EC1C,$01 Enable interrupts.
N $EC1D Handler for ABORT ("R" and "T" together).
@ $EC1D label=Common_CheckAbort
  $EC1D,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FB | Q | W | E | R | T }
. TABLE#
  $EC21,$06 Jump to #R$EC35 if "R" (abort game - first key) is not being pressed.
  $EC27,$03 Jump to #R$EC35 if "T" (abort game - second key) is not being pressed.
N $EC2A Initiate a game abort, do some housekeeping.
  $EC2A,$08 Restore #REGiy from the stack FOUR times.
  $EC32,$03 Jump to #R$D1D0.
N $EC35 Load the control byte into the accumulator for the return to the calling routine.
@ $EC35 label=Common_Continue
  $EC35,$03 #REGa=*#R$E5B2.
  $EC38,$01 Return.

c $EC39 Colourise Preview Grid
@ $EC39 label=Colourise_PreviewGrid
N $EC39 Colours in the green checkerboard attribute pattern. Note, it doesn't
. alter the top row at all - only the rows which will have content in them.
  $EC39,$02 Set a counter in #REGb for #N$04 rows.
  $EC3B,$03 #REGde=#N$5896 (attribute buffer location).
  $EC3E,$03 #REGhl=#R$ECAF.
@ $EC41 label=PreviewGrid_RowCounter_Loop
  $EC41,$01 Stash the row counter on the stack.
  $EC42,$02 Set a counter in #REGb for #N$02 character blocks per square.
@ $EC44 label=PreviewGrid_BlockCounter_Loop
  $EC44,$02 Stash the block counter and the attribute reference pointer on the stack.
  $EC46,$05 Copy #N($000A,$04,$04) bytes from #REGhl to #REGde.
  $EC4B,$05 #REGde+=#N($0016,$04,$04).
  $EC50,$02 Restore the attribute reference pointer and the block counter from the stack.
  $EC52,$02 Decrease block counter by one and loop back to #R$EC44 until the block counter is zero.
  $EC54,$01 Restore the row counter from the stack.
N $EC55 This is how it becomes checkered, we move the pointer forward by two
. (each block is two character blocks wide) and then it can alternate between
. the two attribute values. Although we copy #N$0A bytes - the data is actually
. #N$10 bytes long, to cope with this reference movement.
  $EC55,$02 Increment the attribute reference pointer by two.
  $EC57,$02 Decrease the row counter by one and loop back to #R$EC41 until all
. the rows have been coloured in.
  $EC59,$01 Return.

c $EC5A Static Animation
@ $EC5A label=StaticAnimation
N $EC5A #PUSHS #UDGTABLE { #SIM(start=$D1F1,stop=$D1F7)#SIM(start=$EC5A,stop=$EC83)#SCR$02(static) } UDGTABLE# #POPS
  $EC5A,$02 #REGb=#N$4B.
  $EC5C,$01 Stash #REGbc on the stack.
  $EC5D,$02 #REGb=#N$04.
  $EC5F,$02 #REGc=#N$16.
  $EC61,$02 #REGa=the contents of the Memory Refresh Register.
  $EC63,$02,b$01 Keep only bits 0-3.
  $EC65,$01 #REGd=#REGa.
  $EC66,$03 #REGe=the contents of the Memory Refresh Register.
  $EC69,$01 Stash #REGbc on the stack.
  $EC6A,$03 Call #R$DCC2.
  $EC6D,$01 Exchange the #REGde and #REGhl registers.
  $EC6E,$02 #REGb=#N$08.
  $EC70,$02 Stash #REGbc and #REGde on the stack.
  $EC72,$03 #REGbc=#N($000A,$04,$04).
  $EC75,$02 LDIR.
  $EC77,$01 Restore #REGde from the stack.
  $EC78,$01 Increment #REGd by one.
  $EC79,$01 Restore #REGbc from the stack.
  $EC7A,$02 Decrease counter by one and loop back to #R$EC70 until counter is zero.
  $EC7C,$01 Restore #REGbc from the stack.
  $EC7D,$01 Increment #REGb by one.
  $EC7E,$05 Jump to #R$EC61 if #REGb is not equal to #N$0C.
  $EC83,$02 #REGh=#N$05.
  $EC85,$03 #REGbc=#N$012C.
  $EC88,$01 #REGa=*#REGhl.
  $EC89,$02,b$01 Keep only bits 3-4.
  $EC8B,$02,b$01 Set bits 0, 2.
  $EC8D,$02 Set border to the colour held by #REGa.
  $EC8F,$01 Increment #REGhl by one.
  $EC90,$01 Decrease #REGbc by one.
  $EC91,$04 Jump to #R$EC88 if #REGbc is not zero.
  $EC95,$01 Restore #REGbc from the stack.
  $EC96,$02 Decrease counter by one and loop back to #R$EC5C until counter is zero.
N $EC98 Now clear the display.
  $EC98,$03 #REGhl=#N$5896 (attribute buffer location).
  $EC9B,$03 #REGde=#N($0020,$04,$04).
  $EC9E,$02 #REGb=#N$08.
  $ECA0,$02 Stash #REGhl and #REGbc on the stack.
  $ECA2,$02 #REGb=#N$0A.
  $ECA4,$02 Write #N$00 to *#REGhl.
  $ECA6,$01 Increment #REGhl by one.
  $ECA7,$02 Decrease counter by one and loop back to #R$ECA4 until counter is zero.
  $ECA9,$02 Restore #REGbc and #REGhl from the stack.
  $ECAB,$01 #REGhl+=#REGde.
  $ECAC,$02 Decrease counter by one and loop back to #R$ECA0 until counter is zero.
  $ECAE,$01 Return.

b $ECAF Attribute Data: Preview Grid
@ $ECAF label=AttributeData_PreviewGrid
D $ECAF Used by the routine at #R$EC39.
  $ECAF,$01 #COLOUR(#PEEK(#PC)).
L $ECAF,$01,$10

c $ECBF Controller: Game Over
@ $ECBF label=Controller_GameOver
N $ECBF First draw a yellow "GAME OVER":
. #PUSHS #SIM(start=$D1F1,stop=$D1F7)
. #UDGTABLE { #SIM(start=$ECBF,stop=$ECCD)#SCR$01(game-over-01) }
. UDGTABLE#
  $ECBF,$02 #REGc=#COLOUR$36.
  $ECC1,$04 Set *#R$EDEF to #N$00.
  $ECC5,$05 Set *#R$EDF0 to #N$01.
  $ECCA,$03 Call #R$ED6F.
N $ECCD Then, a little offset to the first one, draw a cyan "GAME OVER".
. #UDGTABLE { #SIM(start=$ECCD,stop=$ECD6)#SCR$01(game-over-02) }
. UDGTABLE#
  $ECCD,$02 #REGc=#COLOUR$6D.
  $ECCF,$04 Set *#R$EDF0 to #N$00.
  $ECD3,$03 Call #R$ED6F.
N $ECD6 Now flash the "GAME OVER" cycling down and back up through the
. following colours: #LIST #FOR$49,$7F,$09(n,{ #Nn: #COLOURn }) LIST#
N $ECD6 #SIM(start=$ECD8,stop=$ECDE) #UDGTABLE {
.   #FOR$00,$06||x|#SIM(start=$ECE0,stop=$ECEE)
.     #SCR$01(*game-over-03-x)#PLOT(0,0,0)(game-over-03-x)
.   ||
.   #FOR$07,$0D||x|#SIM(start=$ECF0,stop=$ECFE)
.     #SCR$01(*game-over-03-x)#PLOT(0,0,0)(game-over-03-x)
.   ||
.   #UDGARRAY#(#ANIMATE$04,$0D(game-over-03))
. } UDGTABLE# #POPS
  $ECD6,$02 Set a counter in #REGb of #N$0A to count the number of down/ up
. cycles here.
@ $ECD8 label=GameOver_Flash_Loop
  $ECD8,$05 Set *#R$EDEF to #N$01.
  $ECDD,$01 Stash the colour loop counter on the stack.
N $ECDE First cycle down, starting at: #COLOUR$7F (#N$7F).
  $ECDE,$02 Set the starting colour value in #REGc to #COLOUR$7F.
@ $ECE0 label=CycleDown_Loop
  $ECE0,$03 Call #R$ED6F.
  $ECE3,$05 Jump to #R$ECF0 if the current colour is: #COLOUR$49 (#N$49).
  $ECE8,$03 Subtract #N$09 from the current colour value and store the result
. back in #REGc.
  $ECEB,$03 Call #R$ED62.
  $ECEE,$02 Jump to #R$ECE0.
N $ECF0 Next cycle back up again; on first entry, starting at #COLOUR$49 (#N$49).
@ $ECF0 label=CycleUp_Loop
  $ECF0,$05 Jump to #R$ED00 if the current colour is: #COLOUR$76 (#N$76).
  $ECF5,$03 Add #N$09 to the current colour value and store the result back in
. #REGc.
  $ECF8,$03 Call #R$ED6F.
  $ECFB,$03 Call #R$ED62.
  $ECFE,$02 Jump to #R$ECF0.
N $ED00 Handle the flash loop.
@ $ED00 label=GameOver_Cycle_Next
  $ED00,$01 Restore the cycle counter from the stack.
  $ED01,$02 Decrease the cycle counter by one and loop back to #R$ECD8 until
. the cycle has repeated #N$0A times.
  $ED03,$02 #REGb=#N$02.
  $ED05,$01 Stash #REGbc on the stack.
  $ED06,$03 #REGhl=#R$ED12.
  $ED09,$02 #REGb=#N$28.
  $ED0B,$03 Call #R$EF6A.
  $ED0E,$01 Restore #REGbc from the stack.
  $ED0F,$02 Decrease counter by one and loop back to #R$ED05 until counter is zero.
  $ED11,$01 Return.

b $ED12

c $ED62 Game Over Flash Offset
@ $ED62 label=GameOver_FlashOffset
  $ED62,$04 Set *#R$EDEF to #N$00.
  $ED66,$03 Call #R$EDD2.
  $ED69,$05 Set *#R$EDEF to #N$01.
  $ED6E,$01 Return.

c $ED6F Draw Game Over
@ $ED6F label=Draw_GameOver
R $ED6F C Colour attribute value
  $ED6F,$04 Set the data pointer in #REGix to the start of the data in #R$EDF1.
  $ED73,$03 Set #REGde with #N($0020,$04,$04) (the number of character blocks
. in one line).
N $ED76 Set the base drawing pointer in the attribute buffer from the data.
@ $ED76 label=Draw_GameOver_Loop
  $ED76,$03 Load the low byte of the attribute buffer address into #REGl.
  $ED79,$05 Load the high byte of the attribute buffer address into #REGh.
N $ED7E Skip moving "up" if the offset is OFF.
  $ED7E,$07 Jump to #R$ED87 if *#R$EDF0 is equal to #N$00.
N $ED85 Else, move up one row.
  $ED85,$02 Subtract #N($0020,$04,$04) from the drawing pointer.
@ $ED87 label=WriteAttributeToScreen
  $ED87,$01 Write the attribute value to *#REGhl.
  $ED88,$02 Move the data pointer to the next item of data.
@ $ED8A label=Movement_Loop
  $ED8A,$05 Load the repeat count into #REGb.
  $ED8F,$03 Load the direction code into #REGa.
  $ED92,$02 Move the data pointer to the next item of data.
  $ED94,$04 Jump to #R$EDAD if the direction code is "right".
  $ED98,$04 Jump to #R$EDB6 if the direction code is "left".
  $ED9C,$04 Jump to #R$EDBF if the direction code is "down".
  $EDA0,$04 Jump to #R$EDC8 if the direction code is "up".
  $EDA4,$03 Return if the terminator has been reached.
N $EDA7 Else, this is a new starting point, so rewind the pointer and jump back
. to the start of the loop.
  $EDA7,$04 Decrease the data pointer by two.
  $EDAB,$02 Jump to #R$ED76.
N $EDAD Handle moving right:
@ $EDAD label=GameOver_Move_Right
  $EDAD,$01 Increment the drawing pointer by one (move right).
  $EDAE,$01 Write the attribute value to *#REGhl.
  $EDAF,$03 Call #R$EDD2.
  $EDB2,$02 Decrease the repeat counter by one and loop back to #R$EDAD until
. the repeat counter is zero.
  $EDB4,$02 Jump to #R$ED8A.
N $EDB6 Handle moving left:
@ $EDB6 label=GameOver_Move_Left
  $EDB6,$01 Decrease the drawing pointer by one (move left).
  $EDB7,$01 Write the attribute value to *#REGhl.
  $EDB8,$03 Call #R$EDD2.
  $EDBB,$02 Decrease the repeat counter by one and loop back to #R$EDB6 until
. the repeat counter is zero.
  $EDBD,$02 Jump to #R$ED8A.
N $EDBF Handle moving down:
@ $EDBF label=GameOver_Move_Down
  $EDBF,$01 Add #N($0020,$04,$04) to the drawing pointer (move down).
  $EDC0,$01 Write the attribute value to *#REGhl.
  $EDC1,$03 Call #R$EDD2.
  $EDC4,$02 Decrease the repeat counter by one and loop back to #R$EDBF until
. the repeat counter is zero.
  $EDC6,$02 Jump to #R$ED8A.
N $EDC8 Handle moving up:
@ $EDC8 label=GameOver_Move_Up
  $EDC8,$02 Subtract #N($0020,$04,$04) from the drawing pointer (move up).
  $EDCA,$01 Write the attribute value to *#REGhl.
  $EDCB,$03 Call #R$EDD2.
  $EDCE,$02 Decrease the repeat counter by one and loop back to #R$EDC8 until
. the repeat counter is zero.
  $EDD0,$02 Jump to #R$ED8A.

c $EDD2 Sound: Game Over
@ $EDD2 label=Sound_GameOver
  $EDD2,$06 Return if *#R$EDEF is not equal to #N$00.
  $EDD8,$02 Stash #REGbc and #REGhl on the stack.
  $EDDA,$02 #REGh=#N$02.
  $EDDC,$03 Set the repeat counter in #REGbc to #N($03E8,$04,$04).
@ $EDDF label=Sound_GameOver_Loop
  $EDDF,$01 #REGa=*#REGhl.
  $EDE0,$01 Increment #REGhl by one.
  $EDE1,$02,b$01 Keep only bits 3-4.
  $EDE3,$02,b$01 Set bits 0, 2.
  $EDE5,$02 Send to the speaker.
  $EDE7,$01 Decrease the repeat counter by one.
  $EDE8,$04 Jump back to #R$EDDF until the repeat counter is zero.
  $EDEC,$02 Restore #REGhl and #REGbc from the stack.
  $EDEE,$01 Return.

g $EDEF Game Over Variables
@ $EDEF label=GameOver_X_Offset
B $EDEF,$01
@ $EDF0 label=GameOver_Y_Offset
B $EDF0,$01
N $EDF1 Draw the "G".
@ $EDF1 label=GameOver_Data
W $EDF1,$02 Attribute buffer starting point.
B $EDF3,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
L $EDF3,$02,$05
N $EDFD Draw the "A".
W $EDFD,$02 Attribute buffer starting point.
B $EDFF,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
L $EDFF,$02,$05
N $EE09 Draw the "M".
W $EE09,$02 Attribute buffer starting point.
B $EE0B,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
L $EE0B,$02,$03
W $EE11,$02 Attribute buffer starting point.
B $EE13,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
L $EE13,$02,$02
N $EE17 Draw the "E".
W $EE17,$02 Attribute buffer starting point.
B $EE19,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
L $EE19,$02,$07
N $EE27 Draw the "O".
W $EE27,$02 Attribute buffer starting point.
B $EE29,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
L $EE29,$02,$04
N $EE31 Draw the "V".
W $EE31,$02 Attribute buffer starting point.
B $EE33,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
W $EE35,$02 Attribute buffer starting point.
B $EE37,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
W $EE39,$02 Attribute buffer starting point.
B $EE3B,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
N $EE3D Draw the "E".
W $EE3D,$02 Attribute buffer starting point.
B $EE3F,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
L $EE3F,$02,$07
N $EE4D Draw the "R".
W $EE4D,$02 Attribute buffer starting point.
B $EE4F,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
L $EE4F,$02,$06
W $EE5B,$02 Attribute buffer starting point.
B $EE5D,$02 Draw: #MAP(#PEEK(#PC+$01))(?,1:right,2:left,4:down,8:up) x
. #PLURAL(#PEEK(#PC))(1 time, #N({count}) times).
B $EE5F,$02 Terminator.

c $EE61
  $EE61,$05 Write #N$80 to *#R$D83A.
  $EE66,$05 Write #N$08 to *#R$D839.
  $EE6B,$03 Call #R$EF2D.
  $EE6E,$03 Call #R$FA9D.
  $EE71,$03 #REGhl=#R$D839.
  $EE74,$02 Test bit 3 of *#REGhl.
  $EE76,$02 Jump to #R$EE6B if  is not zero.
  $EE78,$05 Write #N$12 to *#R$D82C.
  $EE7D,$03 #REGhl=#R$EF45.
  $EE80,$03 #REGde=#N($03E8,$04,$04).
  $EE83,$01 Decrease #REGde by one.
  $EE84,$02 #REGa=#N$64.
  $EE86,$01 Decrease #REGa by one.
  $EE87,$02 Jump to #R$EE86 if #REGa is not zero.
  $EE89,$04 Jump to #R$EE83 if #REGde is not zero.
  $EE8D,$02 #REGb=#N$04.
  $EE8F,$01 Stash #REGbc on the stack.
  $EE90,$02 #REGb=#N$05.
  $EE92,$02 Stash #REGhl and #REGbc on the stack.
  $EE94,$06 Write *#R$D82C to *#R$E75D.
  $EE9A,$01 #REGa=*#REGhl.
  $EE9B,$03 Write #REGa to *#R$E75E.
  $EE9E,$02 #REGa-=#N$0A.
  $EEA0,$02 Jump to #R$EEB6 if #REGa is zero.
  $EEA2,$03 Jump to #R$EEB0 P.
  $EEA5,$02 NEG.
  $EEA7,$03 Write #REGa to *#R$E761.
  $EEAA,$03 Call #R$DB7E.
  $EEAD,$03 Jump to #R$EEB6.
  $EEB0,$03 Write #REGa to *#R$E761.
  $EEB3,$03 Call #R$DBE5.
  $EEB6,$03 #REGa=*#R$D82C.
  $EEB9,$02 #REGa-=#N$12.
  $EEBB,$02 NEG.
  $EEBD,$01 Increment #REGa by one.
  $EEBE,$03 Write #REGa to *#R$E761.
  $EEC1,$03 Call #R$DC4B.
  $EEC4,$02 #REGb=#N$04.
  $EEC6,$05 Write #N$01 to *#R$E761.
  $EECB,$01 Stash #REGbc on the stack.
  $EECC,$05 Write #N$12 to *#R$E75D.
  $EED1,$03 Call #R$DC4B.
  $EED4,$02 #REGd=#N$32.
  $EED6,$02 #REGe=#N$1E.
  $EED8,$02 #REGa=#N$05.
  $EEDA,$02,b$01 Flip bit 4.
  $EEDC,$02 Send to the speaker.
  $EEDE,$01 #REGb=#REGd.
  $EEDF,$02 Decrease counter by one and loop back to #R$EEDF until counter is zero.
  $EEE1,$01 Decrease #REGe by one.
  $EEE2,$02 Jump to #R$EEDA if #REGe is not zero.
  $EEE4,$01 Restore #REGbc from the stack.
  $EEE5,$02 Decrease counter by one and loop back to #R$EECB until counter is zero.
  $EEE7,$02 Restore #REGbc and #REGhl from the stack.
  $EEE9,$01 Increment #REGhl by one.
  $EEEA,$02 Decrease counter by one and loop back to #R$EE92 until counter is zero.
  $EEEC,$01 Restore #REGbc from the stack.
  $EEED,$03 #REGhl=#R$EF45.
  $EEF0,$03 #REGa=*#R$D82C.
  $EEF3,$02 #REGa-=#N$04.
  $EEF5,$03 Write #REGa to *#R$D82C.
  $EEF8,$02 Decrease counter by one and loop back to #R$EE8F until counter is zero.
  $EEFA,$03 #REGde=#N($03E8,$04,$04).
  $EEFD,$01 Decrease #REGde by one.
  $EEFE,$02 #REGa=#N$64.
  $EF00,$01 Decrease #REGa by one.
  $EF01,$02 Jump to #R$EF00 if #REGa is not zero.
  $EF03,$04 Jump to #R$EEFD if #REGde is not zero.
  $EF07,$02 #REGa=#COLOUR$45.
  $EF09,$03 Write #REGa to *#N$5AA9 (attribute buffer location).
  $EF0C,$03 Write #REGa to *#N$5AAA (attribute buffer location).
  $EF0F,$03 Write #REGa to *#N$5AAB (attribute buffer location).
  $EF12,$03 Write #REGa to *#N$5AAC (attribute buffer location).
  $EF15,$05 Write #N$80 to *#R$D83A.
  $EF1A,$05 Write #N$08 to *#R$D839.
  $EF1F,$03 Call #R$EF2D.
  $EF22,$03 Call #R$FAD6.
  $EF25,$03 #REGhl=#R$D839.
  $EF28,$02 Test bit 3 of *#REGhl.
  $EF2A,$02 Jump to #R$EF1F if #REGa is not zero.
  $EF2C,$01 Return.

  $EF2D,$03 #REGbc=#N($03E8,$04,$04).
  $EF30,$02 #REGh=#N$05.
  $EF32,$01 #REGa=*#REGhl.
  $EF33,$01 Increment #REGhl by one.
  $EF34,$02,b$01 Keep only bits 3-4.
  $EF36,$02,b$01 Set bits 0, 2.
  $EF38,$02 Send to the speaker.
  $EF3A,$01 Decrease #REGbc by one.
  $EF3B,$04 Jump to #R$EF32 if #REGbc is not zero.
  $EF3F,$02 #REGb=#N$08.
  $EF41,$03 #REGhl=*#R$D84C.
  $EF44,$01 Return.

c $EF4A
  $EF4A,$03 #REGde=#N$07D0.
  $EF4D,$01 Decrease #REGde by one.
  $EF4E,$02 #REGa=#N$32.
  $EF50,$01 Decrease #REGa by one.
  $EF51,$02 Jump to #R$EF50 if #REGa is not zero.
  $EF53,$04 Jump to #R$EF4D if #REGde is not zero.
  $EF57,$04 #REGix=#R$D838.
  $EF5B,$04 Set bit 7 of *#REGix+#N$00.
@ $EF5F label=Debounce__Loop
  $EF5F,$03 Call #R$EB56.
  $EF62,$04 Jump back to #R$EF5F if there's any player input.
  $EF66,$04 Reset bit 7 of *#REGix+#N$00.
  $EF6A,$01 Stash #REGbc on the stack.
  $EF6B,$01 Increment #REGhl by one.
  $EF6C,$01 #REGa=*#REGhl.
  $EF6D,$01 Decrease #REGhl by one.
  $EF6E,$05 Jump to #R$EF80 if #REGa is not equal to #N$FF.
  $EF73,$02 Increment #REGhl by two.
  $EF75,$03 #REGbc=#N$4E20.
  $EF78,$01 Decrease #REGbc by one.
  $EF79,$04 Jump to #R$EF78 if #REGbc is not zero.
  $EF7D,$03 Jump to #R$EFBF.
  $EF80,$02 RLCA.
  $EF82,$04 #REGix=#R$F092.
  $EF86,$02 #REGb=#N$00.
  $EF88,$01 #REGc=#REGa.
  $EF89,$02 #REGix+=#REGbc.
  $EF8B,$01 Stash #REGhl on the stack.
  $EF8C,$03 #REGl=*#REGix+#N$00.
  $EF8F,$03 #REGh=*#REGix+#N$01.
  $EF92,$03 Write #REGhl to *#R$F04B.
  $EF95,$03 #REGc=*#REGix+#N$02.
  $EF98,$03 #REGb=*#REGix+#N$03.
  $EF9B,$01 Restore #REGhl from the stack.
  $EF9C,$01 #REGa=*#REGhl.
  $EF9D,$02 Increment #REGhl by two.
  $EF9F,$02 Stash #REGhl and #REGbc on the stack.
  $EFA1,$01 Restore #REGde from the stack.
  $EFA2,$01 #REGb=#REGa.
  $EFA3,$03 #REGhl=#N($0000,$04,$04).
  $EFA6,$01 #REGhl+=#REGde.
  $EFA7,$02 Decrease counter by one and loop back to #R$EFA6 until counter is zero.
  $EFA9,$01 Set flags.
  $EFAA,$03 #REGde=#N($0000,$04,$04).
  $EFAD,$03 #REGbc=#N($0032,$04,$04).
  $EFB0,$01 Increment #REGde by one.
  $EFB1,$02 #REGhl-=#REGbc.
  $EFB3,$03 Jump to #R$EFB0 P.
  $EFB6,$01 Decrease #REGde by one.
  $EFB7,$04 Write #REGde to *#R$F04D.
  $EFBB,$03 Call #R$EFD5.
  $EFBE,$02 Restore #REGhl and #REGbc from the stack.
  $EFC0,$04 #REGix=#R$D838.
  $EFC4,$04 Set bit 7 of *#REGix+#N$00.
  $EFC8,$03 Call #R$EB56.
  $EFCB,$02 Was there any player input?
  $EFCD,$04 Reset bit 7 of *#REGix+#N$00.
  $EFD1,$01 Return there was any kind of player input.
  $EFD2,$02 Decrease counter by one and loop back to #R$EF6A until counter is zero.
  $EFD4,$01 Return.

c $EFD5
  $EFD5,$06 Write #N($0001,$04,$04) to *#R$F045.
  $EFDB,$06 Write *#R$F04B to *#R$F049.
  $EFE1,$04 #REGde=*#R$F04D.
  $EFE5,$04 #REGbc=*#R$F04B.
  $EFE9,$01 Decrease #REGbc by one.
  $EFEA,$02 Stash #REGbc and #REGde on the stack.
  $EFEC,$03 Call #R$F04F.
  $EFEF,$02 Restore #REGde and #REGbc from the stack.
  $EFF1,$03 #REGhl=*#R$F045.
  $EFF4,$01 Increment #REGhl by one.
  $EFF5,$03 Write #REGhl to *#R$F045.
  $EFF8,$03 #REGhl=*#R$F049.
  $EFFB,$01 Decrease #REGhl by one.
  $EFFC,$03 Write #REGhl to *#R$F049.
  $EFFF,$01 Decrease #REGbc by one.
  $F000,$05 Jump to #R$F00C if #REGbc is zero.
  $F005,$01 Decrease #REGde by one.
  $F006,$05 Jump to #R$EFEA if #REGde is not zero.
  $F00B,$01 Return.

  $F00C,$01 Decrease #REGde by one.
  $F00D,$03 Return if #REGde is zero.
  $F010,$04 #REGbc=*#R$F04B.
  $F014,$01 Decrease #REGbc by one.
  $F015,$02 Stash #REGbc and #REGde on the stack.
  $F017,$03 Call #R$F04F.
  $F01A,$02 Restore #REGde and #REGbc from the stack.
  $F01C,$03 #REGhl=*#R$F045.
  $F01F,$01 Decrease #REGhl by one.
  $F020,$03 Write #REGhl to *#R$F045.
  $F023,$03 #REGhl=*#R$F049.
  $F026,$01 Increment #REGhl by one.
  $F027,$03 Write #REGhl to *#R$F049.
  $F02A,$01 Decrease #REGbc by one.
  $F02B,$05 Jump to #R$F037 if #REGbc is zero.
  $F030,$01 Decrease #REGde by one.
  $F031,$05 Jump to #R$F015 if #REGde is not zero.
  $F036,$01 Return.

  $F037,$01 Decrease #REGde by one.
  $F038,$03 Return if #REGde is zero.
  $F03B,$04 #REGbc=*#R$F04B.
  $F03F,$01 Decrease #REGbc by one.
  $F040,$03 Jump to #R$EFEA.

w $F043
  $F043,$02
  $F045,$02
  $F047,$02
  $F049,$02
  $F04B,$02
  $F04D,$02

c $F04F
  $F04F,$07 Jump to #R$F059 if *#R$EB39 is equal to #N$00.
  $F056,$01 #REGa=#N$00.
  $F057,$02 Jump to #R$F05B.
@ $F059 label=SetDefault
  $F059,$02 #REGa=#N$05.
  $F05B,$03 Write #REGa to *#R$F043.
  $F05E,$03 Write #REGa to *#R$F047.
  $F061,$02 #REGb=#N$02.
  $F063,$04 #REGde=*#R$F045.
  $F067,$01 Decrease #REGde by one.
  $F068,$05 Jump to #R$F067 if #REGde is not zero.
  $F06D,$03 #REGa=*#R$F043.
  $F070,$02,b$01 Flip the speaker bit.
  $F072,$03 Write #REGa to *#R$F043.
  $F075,$02 Set border to the colour held by #REGa.
  $F077,$02 Decrease counter by one and loop back to #R$F063 until counter is zero.
  $F079,$02 #REGb=#N$02.
  $F07B,$04 #REGde=*#R$F049.
  $F07F,$01 Decrease #REGde by one.
  $F080,$05 Jump to #R$F07F if #REGde is not zero.
  $F085,$03 #REGa=*#R$F047.
  $F088,$02,b$01 Flip the speaker bit.
  $F08A,$03 Write #REGa to *#R$F047.
  $F08D,$02 Set border to the colour held by #REGa.
  $F08F,$02 Decrease counter by one and loop back to #R$F07B until counter is zero.
  $F091,$01 Return.

w $F092

c $F130
  $F130,$03 Return if #REGa is equal to #N$FF.
  $F133,$04 Jump to #R$F13A if #REGa is not equal to #N$80.
  $F137,$02 Set bit 7 of #REGb.
  $F139,$01 Return.

  $F13A,$04 Jump to #R$F141 if #REGa is not equal to #N$40.
  $F13E,$02 Set bit 6 of #REGb.
  $F140,$01 Return.

  $F141,$01 #REGc=#REGa.
  $F142,$04 Return if #REGb is equal to #N$00.
  $F146,$01 #REGa=#REGc.
  $F147,$05 Jump to #R$F249 if #REGa is lower than #N$15 (unsigned comparison).
  $F14C,$02 Compare #REGa with #N$40.
  $F14E,$03 Jump to #R$F249 P.
  $F151,$01 #REGc=#REGa.
  $F152,$03 #REGa=*#R$E2C7.
  $F155,$05 Jump to #R$F249 if #REGa is lower than #N$15 (unsigned comparison).
  $F15A,$02 Compare #REGa with #N$40.
  $F15C,$03 Jump to #R$F249 P.
  $F15F,$02 #REGd=#N$15.
  $F161,$03 Call #R$F286.
  $F164,$02 #REGd=#N$3D.
  $F166,$02 #REGe=#N$03.
  $F168,$03 #REGa=*#R$E2C7.
  $F16B,$03 Call #R$F286.
  $F16E,$01 Increment #REGd by one.
  $F16F,$01 Decrease #REGe by one.
  $F170,$03 #REGa=*#R$E2C7.
  $F173,$02 Jump to #R$F16B if #REGe is not zero.
  $F175,$04 Jump to #R$F180 if #REGa is not equal to #N$1B.
  $F179,$05 Jump to #R$F194 if #REGc is not equal to #N$1C.
  $F17E,$02 Jump to #R$F189.

  $F180,$04 Jump to #R$F194 if #REGa is not equal to #N$1C.
  $F184,$05 Jump to #R$F194 if #REGc is not equal to #N$1B.
  $F189,$04 #REGix=#R$D83A.
  $F18D,$04 Set bit 3 of *#REGix+#N$00.
  $F191,$03 Jump to #R$F231.

  $F194,$07 Jump to #R$F1A2 if *#R$E2C7 is not equal to #N$1D.
  $F19B,$05 Jump to #R$F1D6 if #REGc is not equal to #N$1E.
  $F1A0,$02 Jump to #R$F1AB.

  $F1A2,$04 Jump to #R$F1D6 if #REGa is not equal to #N$1E.
  $F1A6,$05 Jump to #R$F1D6 if #REGc is not equal to #N$1D.
  $F1AB,$04 #REGix=#R$D83A.
  $F1AF,$04 Set bit 2 of *#REGix+#N$00.
  $F1B3,$03 #REGa=*#R$D840.
  $F1B6,$01 Set flags.
  $F1B7,$01 #REGa+=#REGa.
  $F1B8,$01 DAA.
  $F1B9,$03 Write #REGa to *#R$D840.
  $F1BC,$03 #REGa=*#R$D83F.
  $F1BF,$01 Stash #REGaf on the stack.
  $F1C0,$01 Set flags.
  $F1C1,$01 #REGa+=#REGa.
  $F1C2,$01 DAA.
  $F1C3,$03 Write #REGa to *#R$D83F.
  $F1C6,$01 Restore #REGaf from the stack.
  $F1C7,$03 Jump to #R$F231 if #REGa is higher.
  $F1CA,$01 Invert the carry flag.
  $F1CB,$03 #REGa=*#R$D83F.
  $F1CE,$01 Increment #REGa by one.
  $F1CF,$01 DAA.
  $F1D0,$03 Write #REGa to *#R$D83F.
  $F1D3,$03 Jump to #R$F231.
  $F1D6,$03 #REGa=*#R$E2C7.
  $F1D9,$04 Jump to #R$F1EB if #REGa is not equal to #N$17.
  $F1DD,$03 Jump to #R$F1EB if #REGa is not equal to #REGc.
  $F1E0,$04 #REGix=#R$D83A.
  $F1E4,$04 Set bit 6 of *#REGix+#N$00.
  $F1E8,$03 Jump to #R$F231.

  $F1EB,$03 #REGa=*#R$E2C7.
  $F1EE,$01 Increment #REGa by one.
  $F1EF,$03 Jump to #R$F1F8 if #REGa is equal to #REGc.
  $F1F2,$02 #REGa-=#N$02.
  $F1F4,$03 Jump to #R$F231 if #REGa is not equal to #REGc.
  $F1F7,$01 Increment #REGa by one.
  $F1F8,$01 Decrease #REGa by one.
  $F1F9,$03 Call #R$D7C6.
  $F1FC,$02 #REGd=#N$1F.
  $F1FE,$02 #REGe=#N$0D.
  $F200,$01 Compare #REGa with #REGd.
  $F201,$02 Jump to #R$F20A if #REGa is zero.
  $F203,$02 Increment #REGd by two.
  $F205,$01 Decrease #REGe by one.
  $F206,$02 Jump to #R$F200 if #REGe is not zero.
  $F208,$02 Jump to #R$F231.

  $F20A,$02 #REGa=#N$0E.
  $F20C,$01 #REGa-=#REGe.
  $F20D,$01 #REGd=#REGa.
  $F20E,$02 #REGa=#N$05.
  $F210,$02 #REGa+=#N$05.
  $F212,$01 DAA.
  $F213,$01 Decrease #REGd by one.
  $F214,$02 Jump to #R$F210 if #REGd is not zero.
  $F216,$01 Stash #REGaf on the stack.
  $F217,$02 Set bit 3 of #REGb.
  $F219,$03 Write #REGa to *#R$D86B.
  $F21C,$04 #REGd=*#R$D840.
  $F220,$01 Restore #REGaf from the stack.
  $F221,$01 #REGa+=#REGd.
  $F222,$01 DAA.
  $F223,$03 Write #REGa to *#R$D840.
  $F226,$02 Jump to #R$F231 if #REGd is higher.
  $F228,$03 #REGa=*#R$D83F.
  $F22B,$01 Invert the carry flag.
  $F22C,$01 Increment #REGa by one.
  $F22D,$01 DAA.
  $F22E,$03 Write #REGa to *#R$D83F.
  $F231,$01 Increment #REGb by one.
  $F232,$02 Set bit 4 of #REGb.
  $F234,$07 Jump to #R$F240 if *#R$D832 is equal to #N$00.
  $F23B,$05 Write #N$03 to *#R$D832.
  $F240,$02 #REGa=#N$00.
  $F242,$04 #REGde=*#R$E5B0.
  $F246,$01 Write #REGa to *#REGde.
  $F247,$01 Write #REGa to *#REGhl.
  $F248,$01 Return.

c $F249
  $F249,$09 Return if *#R$D832 is equal to either #N$00 or #N$03.
  $F252,$02 Set bit 5 of #REGb.
  $F254,$01 Return.

c $F255
  $F255,$05 Jump to #R$F262 if #REGb is equal to #N$00.
  $F25A,$04 Jump to #R$F262 if #REGb is equal to #N$40.
  $F25E,$04 Jump to #R$F266 if #REGb is not equal to #N$20.
  $F262,$01 Restore #REGhl from the stack.
  $F263,$03 Jump to #R$E352.
  $F266,$02,b$01 Keep only bits 0-2.
  $F268,$02 RLCA.
  $F26A,$04 Jump to #R$F276 if bit 7 of #REGb is not set.
  $F26E,$01 Increment #REGa by one.
  $F26F,$01 Stash #REGhl on the stack.
  $F270,$05 Set bit 0 of *#R$D839.
  $F275,$01 Restore #REGhl from the stack.
  $F276,$03 Write #REGa to *#R$E761.
  $F279,$06 Write *#R$D82C to *#R$E75D.
  $F27F,$06 Write *#R$D82D to *#R$E75E.
  $F285,$01 Return.

c $F286
  $F286,$03 Jump to #R$F293 if #REGa is not equal to #REGd.
  $F289,$03 Compare #REGc with #N$16.
  $F28C,$02 Restore #REGiy from the stack.
  $F28E,$02 Jump to #R$F2A0 if #REGc was equal to #N$16.
  $F290,$03 Jump to #R$F249.
  $F293,$03 Return if #REGc is not equal to #REGd.
  $F296,$05 Compare *#R$E2C7 with #N$16.
  $F29B,$02 Restore #REGiy from the stack.
  $F29D,$03 Jump to #R$F249 if *#R$E2C7 was not equal to #N$16.
  $F2A0,$05 Write #N$00 to *#R$E2C7.
  $F2A5,$01 #REGa=#REGd.
  $F2A6,$03 Call #R$D99E.
  $F2A9,$02 #REGa=#N$50.
  $F2AB,$03 Jump to #R$F216.

b $F2AE Graphics: Bomb Fuse
@ $F2AE label=Graphics_BombFuse
  $F2AE,$08 #UDG(#PC,attr=$46)
L $F2AE,$08,$04

b $F2CE Custom Font
@ $F2CE label=CustomFont
  $F2CE,$08 #LET(fname=#CHR($30+(#PC-$F2CE)/$08)) #UDG(#PC,attr=$46)(#FORMAT(font-{fname})*)
L $F2CE,$08,$0A

c $F31E Draw Time Bar
@ $F31E label=Draw_TimeBar
N $F31E Test
. #PUSHS #SIM(start=$D1F1,stop=$D1F7)
. #UDGTABLE { #SCR$01(*cursor-background)
.   #FOR$00,$04||x|#OVER($02+x*$04,$02)(cursor-background,font-x)||
.   #FOR$00,$04||x|#OVER($02+x*$04,$06)(cursor-background,font-x)||
. #UDGARRAY*cursor-background(image) }
. UDGTABLE# #POPS
N $F31E #PUSHS #UDGTABLE {
.   #SIM(start=$D1F1,stop=$D1F7)#SIM(start=$F31E,stop=$F323)
.   #FOR$00,$13||x|#SIM(start=$F323,stop=$F337)
.     #SCR$02(*time-bar-x)#PLOT(0,0,0)(time-bar-x)
.   ||
.   #UDGARRAY#(#ANIMATE$05,$13(time-bar))
. } UDGTABLE# #POPS
  $F31E,$03 Set the location of where to start drawing the time bar in #REGhl
. (#N$50E1 in the screen buffer).
  $F321,$02 Set a counter in #REGb for the total length.
@ $F323 label=Draw_TimeBar_Loop
  $F323,$02 Set a pixel counter in #REGc for the height of each segment.
  $F325,$01 Stash the current screen position on the stack.
@ $F326 label=Draw_TimeBarColumn
  $F326,$01 Set the carry flag (prepare for the right rotation).
  $F327,$02 Rotate *#REGhl right one position.
  $F329,$03 If the carry flag is set after the rotation, move to the next
. column - jump to #R$F335.
  $F32C,$01 Increment #REGh by one.
  $F32D,$01 Decrease the pixel counter by one.
  $F32E,$03 Jump back to #R$F326 until the full height of the bar has been drawn.
  $F331,$01 Restore the screen position from the stack.
  $F332,$03 Keep jumping back to #R$F323.
@ $F335 label=TimeBarNextColumn
  $F335,$01 Restore the screen position from the stack.
  $F336,$01 Increment the screen position by one.
N $F337 Wait for the next frame.
  $F337,$01 Halt operation (suspend CPU until the next interrupt).
  $F338,$02 Decrease the length counter by one and loop back to #R$F323 until
. the entire time bar has been drawn.
N $F33A Set up the time bar being active and counting down in the game.
  $F33A,$04 Decrease the screen position by one and write it to *#R$D85B.
  $F33E,$05 Set *#R$D85D to #N$01 to make it active.
  $F343,$05 Set *#R$D85E to #N$14 for the length in character blocks.
  $F348,$01 Return.

c $F349 Handler: Time Bar
@ $F349 label=Handler_TimeBar
  $F349,$02 #REGb=#N$28.
  $F34B,$03 #REGhl=#R$D83A.
  $F34E,$04 Reset bits 5 and 6 of *#REGhl.
  $F352,$03 #REGhl=*#R$D85B.
@ $F355 label=UpdateTimeBar_Loop
  $F355,$02 Set a pixel counter in #REGc for the height of each segment.
  $F357,$01 Stash the current screen position on the stack.
  $F358,$01 Set the carry flag (prepare for the right rotation).
  $F359,$02 Rotate *#REGhl right one position.
  $F35B,$03 If the carry flag is set after the rotation, move to the next
. column - jump to #R$F37C.
  $F35E,$01 Increment #REGh by one.
  $F35F,$01 Decrease the pixel counter by one.
  $F360,$03 Jump to #R$F358 until the full height of the bar has been drawn.
  $F363,$04 #REGh=#REGb+#N$1E.
  $F367,$02 #REGl=#N$14.
  $F369,$02 #REGa=#N$05.
  $F36B,$02,b$01 Flip bit 4.
  $F36D,$02 Send to the speaker.
  $F36F,$01 Load the pitch delay counter into #REGd.
@ $F370 label=TimeBar_PitchDelay
  $F370,$01 Decrease the pitch delay counter by one.
  $F371,$03 Jump back to #R$F370 until the pitch delay counter is zero.
  $F374,$01 Decrease #REGl by one.
  $F375,$03 Jump to #R$F36B until #REGl is zero.
  $F378,$01 Restore #REGhl from the stack.
  $F379,$02 Decrease counter by one and loop back to #R$F355 until counter is zero.
  $F37B,$01 Return.

  $F37C,$01 Restore #REGhl from the stack.
  $F37D,$03 #REGa=*#R$D85E.
  $F380,$03 Return if #REGa is greater than or equal to #N$14.
  $F383,$01 Increment #REGa by one.
  $F384,$03 Write #REGa to *#R$D85E.
  $F387,$01 Increment #REGhl by one.
  $F388,$03 Write #REGhl to *#R$D85B.
  $F38B,$01 Stash #REGhl on the stack.
  $F38C,$03 Jump to #R$F358.

c $F38F
  $F38F,$03 #REGhl=#R$E261.
  $F392,$02 #REGb=#N$2A.
  $F394,$03 Jump to #R$F39B if #REGa is equal to *#REGhl.
  $F397,$01 Increment #REGhl by one.
  $F398,$02 Decrease counter by one and loop back to #R$F394 until counter is zero.
  $F39A,$01 Return.

  $F39B,$02 Write #N$00 to *#REGhl.
  $F39D,$01 Return.

c $F39E Handler: Check Time
@ $F39E label=Handler_CheckTime
N $F39E See #POKE#infinitetime(Infinite Time).
  $F39E,$07 Jump to #R$F3AC if bit 4 of *#R$D83A is not set.
  $F3A5,$02 Reset bit 4 of *#REGhl.
  $F3A7,$02 Restore #REGiy from the stack.
  $F3A9,$03 Jump to #R$D41E.

c $F3AC Handler: Bombs
@ $F3AC label=Handler_Bombs
N $F3AC See #POKE#bombs(Bombs Don't Explode).
  $F3AC,$07 Jump to #R$F428 if *#R$D838 is equal to #N$00.
  $F3B3,$04 Jump to #R$F3CB if bit 1 of #REGa is not set.
  $F3B7,$02 Reset bit 1 of #REGa.
  $F3B9,$03 Write #REGa to *#R$D838.
  $F3BC,$02 #REGa=#N$15.
  $F3BE,$03 Call #R$F38F.
  $F3C1,$08 Write *#R$DA15 to *#R$E75D.
  $F3C9,$02 Jump to #R$F411.

  $F3CB,$04 Jump to #R$F3E3 if bit 2 of #REGa is not set.
  $F3CF,$02 Reset bit 2 of #REGa.
  $F3D1,$03 Write #REGa to *#R$D838.
  $F3D4,$02 #REGa=#N$3D.
  $F3D6,$03 Call #R$F38F.
  $F3D9,$04 #REGbc=*#R$DA17.
  $F3DD,$04 Write #REGbc to *#R$E75D.
  $F3E1,$02 Jump to #R$F411.
  $F3E3,$04 Jump to #R$F3FB if bit 3 of #REGa is not set.
  $F3E7,$02 Reset bit 3 of #REGa.
  $F3E9,$03 Write #REGa to *#R$D838.
  $F3EC,$02 #REGa=#N$3E.
  $F3EE,$03 Call #R$F38F.
  $F3F1,$08 Write *#R$DA19 to *#R$E75D.
  $F3F9,$02 Jump to #R$F411.
  $F3FB,$04 Jump to #R$F428 if bit 4 of #REGa is not set.
  $F3FF,$02 Reset bit 4 of #REGa.
  $F401,$03 Write #REGa to *#R$D838.
  $F404,$02 #REGa=#N$3F.
  $F406,$03 Call #R$F38F.
  $F409,$08 Write *#R$DA1B to *#R$E75D.
  $F411,$04 Write #N$00 to *#R$D833.
  $F415,$03 Call #R$DABF.
  $F418,$05 Write #N$01 to *#R$D833.
  $F41D,$03 Call #R$E9DA.
  $F420,$03 Call #R$E775.
  $F423,$02 Restore #REGiy from the stack.
  $F425,$03 Jump to #R$D41E.
  $F428,$03 Call #R$EB56.
  $F42B,$05 Jump to #R$E396 if #REGa is not equal to #N$00.
  $F430,$08 Jump to #R$E320 if *#R$D835 is equal to #N$00.
  $F438,$03 Call #R$E352.
  $F43B,$03 Jump to #R$F39E.

c $F43E
  $F43E,$01 #REGa=*#REGhl.
  $F43F,$03 #REGhl=#R$E260.
  $F442,$02 #REGb=#N$00.
  $F444,$01 #REGc=#REGa.
  $F445,$01 #REGhl+=#REGbc.
  $F446,$01 #REGa=*#REGhl.
  $F447,$03 Write #REGhl to *#R$E5B0.
  $F44A,$05 Jump to #R$E352 if #REGa is equal to #N$00.
  $F44F,$03 Write #REGa to *#R$E2C7.
  $F452,$07 Jump to #R$F45E if *#R$D832 is equal to #N$03.
  $F459,$05 Write #N$01 to *#R$D832.
  $F45E,$05 Compare *#R$D834 with #N$09.
  $F463,$03 #REGa=*#R$E5B2.
  $F466,$03 Jump to #R$F801 if *#R$D834 is equal to #N$09.
  $F469,$05 Jump to #R$F528 if *#R$D834 is not equal to #N$11.
  $F46E,$01 Increment #REGhl by one.
  $F46F,$05 Jump to #R$F477 if *#REGhl is not equal to #N$00.
  $F474,$01 Increment #REGb by one.
  $F475,$02 Jump to #R$F46E.
  $F477,$03 Call #R$F130.
  $F47A,$03 Call #R$F255.
  $F47D,$02 Stash #REGbc and #REGhl on the stack.
  $F47F,$03 Call #R$D99B.
  $F482,$03 Call #R$E2FD.
  $F485,$03 Call #R$DB7E.
  $F488,$03 Call #R$D9BE.
  $F48B,$02 Restore #REGhl and #REGbc from the stack.
  $F48D,$01 Decrease #REGhl by one.
  $F48E,$03 Call #R$E2F1.
  $F491,$06 Return if *#R$D832 is equal to #N$02.
  $F497,$02 Test bit 5 of #REGb.
  $F499,$02 Jump to #R$F4B7 if #REGa is zero.
  $F49B,$05 Write #N$00 to *#R$D832.
  $F4A0,$03 #REGa=*#R$E75E.
  $F4A3,$03 Return if *#R$E75E is greater than or equal to #N$0F.
  $F4A6,$02 #REGa+=#N$04.
  $F4A8,$03 Write #REGa to *#R$D82D.
  $F4AB,$01 Increment #REGhl by one.
  $F4AC,$03 Write #REGhl to *#R$E5B0.
  $F4AF,$04 Write *#REGhl to *#R$E2C7.
  $F4B3,$02 #REGb=#N$00.
  $F4B5,$02 Jump to #R$F46E.
  $F4B7,$07 Jump to #R$F4C5 if *#R$D832 is not equal to #N$00.
  $F4BE,$02 Stash #REGbc and #REGhl on the stack.
  $F4C0,$03 Call #R$F5FB.
  $F4C3,$02 Restore #REGhl and #REGbc from the stack.
  $F4C5,$03 #REGa=*#R$D832.
  $F4C8,$03 Return if #REGa is equal to #N$02.
  $F4CB,$04 Jump to #R$F4D4 if #REGa is equal to #N$03.
  $F4CF,$05 Write #N$01 to *#R$D832.
  $F4D4,$02 Test bit 6 of #REGb.
  $F4D6,$02 Jump to #R$F4E0 if #REGa is not zero.
  $F4D8,$06 Return if *#R$D832 is equal to #N$03.
  $F4DE,$02 Jump to #R$F4A0.

  $F4E0,$04 #REGc=*#R$E761.
  $F4E4,$03 #REGa=*#R$D82D.
  $F4E7,$01 #REGa+=#REGc.
  $F4E8,$03 Write #REGa to *#R$D82D.
  $F4EB,$03 Write #REGhl to *#R$E5B0.
  $F4EE,$03 Call #R$E250.
  $F4F1,$07 Jump to #R$F4FD if *#R$D832 is equal to #N$03.
  $F4F8,$05 Write #N$02 to *#R$D832.
  $F4FD,$03 Call #R$F52D.
  $F500,$02 Stash #REGbc and #REGhl on the stack.
  $F502,$03 Call #R$F510.
  $F505,$02 Restore #REGhl and #REGbc from the stack.
  $F507,$06 Return if *#R$D832 is equal to #N$03.
  $F50D,$03 Jump to #R$F586.
  $F510,$03 #REGa=*#R$D82D.
  $F513,$02 #REGa+=#N$03.
  $F515,$03 RLCA.
  $F518,$01 Decrease #REGa by one.
  $F519,$01 #REGh=#REGa.
  $F51A,$03 #REGa=*#R$D82C.
  $F51D,$01 Increment #REGa by one.
  $F51E,$03 RLCA.
  $F521,$04 #REGix=#R$E17A.
  $F525,$03 Jump to #R$E0E2.

  $F528,$05 Jump to #R$F611 if #REGa is not equal to #N$12.
  $F52D,$01 Decrease #REGhl by one.
  $F52E,$05 Jump to #R$F536 if *#REGhl is not equal to #N$00.
  $F533,$01 Increment #REGb by one.
  $F534,$02 Jump to #R$F52D.
  $F536,$03 Call #R$F130.
  $F539,$03 Call #R$F255.
  $F53C,$02 Stash #REGbc and #REGhl on the stack.
  $F53E,$03 Call #R$D99B.
  $F541,$03 Call #R$E2FD.
  $F544,$03 Call #R$DBE5.
  $F547,$03 Call #R$D9BE.
  $F54A,$02 Restore #REGhl and #REGbc from the stack.
  $F54C,$02 Test bit 7 of #REGb.
  $F54E,$02 Jump to #R$F578 if #REGb is zero.
  $F550,$03 #REGa=*#R$E761.
  $F553,$01 Stash #REGaf on the stack.
  $F554,$03 Call #R$E2DA.
  $F557,$03 Call #R$D99B.
  $F55A,$01 Stash #REGbc on the stack.
  $F55B,$05 Write #N$02 to *#R$E75E.
  $F560,$03 Call #R$DBE5.
  $F563,$01 Restore #REGbc from the stack.
  $F564,$02 Decrease counter by one and loop back to #R$F55A until counter is zero.
  $F566,$01 Restore #REGaf from the stack.
  $F567,$02 #REGa+=#N$03.
  $F569,$03 Write #REGa to *#R$E761.
  $F56C,$03 #REGa=*#R$D832.
  $F56F,$03 Return if #REGa is equal to #N$01.
  $F572,$03 Return if #REGa is equal to #N$03.
  $F575,$03 Jump to #R$F510.

  $F578,$01 Increment #REGhl by one.
  $F579,$03 Call #R$E2F1.
  $F57C,$06 Return if *#R$D832 is equal to #N$02.
  $F582,$02 Test bit 5 of #REGb.
  $F584,$02 Jump to #R$F5A2 if #REGa is zero.
  $F586,$05 Write #N$00 to *#R$D832.
  $F58B,$03 #REGa=*#R$E75E.
  $F58E,$03 Return if #REGa is lower than #N$06 (unsigned comparison).
  $F591,$02 #REGa-=#N$04.
  $F593,$03 Write #REGa to *#R$D82D.
  $F596,$01 Decrease #REGhl by one.
  $F597,$03 Write #REGhl to *#R$E5B0.
  $F59A,$04 Write *#REGhl to *#R$E2C7.
  $F59E,$02 #REGb=#N$00.
  $F5A0,$02 Jump to #R$F52D.

  $F5A2,$07 Jump to #R$F5B0 if *#R$D832 is not equal to #N$00.
  $F5A9,$02 Stash #REGbc and #REGhl on the stack.
  $F5AB,$03 Call #R$F510.
  $F5AE,$02 Restore #REGhl and #REGbc from the stack.
  $F5B0,$03 #REGa=*#R$D832.
  $F5B3,$03 Return if #REGa is equal to #N$02.
  $F5B6,$04 Jump to #R$F5BF if #REGa is equal to #N$03.
  $F5BA,$05 Write #N$01 to *#R$D832.
  $F5BF,$02 Test bit 6 of #REGb.
  $F5C1,$02 Jump to #R$F5CB if #REGa is not zero.
  $F5C3,$06 Return if *#R$D832 is equal to #N$03.
  $F5C9,$02 Jump to #R$F58B.

  $F5CB,$04 #REGc=*#R$E761.
  $F5CF,$03 #REGa=*#R$D82D.
  $F5D2,$01 #REGa-=#REGc.
  $F5D3,$03 Write #REGa to *#R$D82D.
  $F5D6,$03 Write #REGhl to *#R$E5B0.
  $F5D9,$03 Call #R$E250.
  $F5DC,$07 Jump to #R$F5E8 if *#R$D832 is equal to #N$03.
  $F5E3,$05 Write #N$02 to *#R$D832.
  $F5E8,$03 Call #R$F46E.
  $F5EB,$02 Stash #REGbc and #REGhl on the stack.
  $F5ED,$03 Call #R$F5FB.
  $F5F0,$02 Restore #REGhl and #REGbc from the stack.
  $F5F2,$06 Return if *#R$D832 is equal to #N$03.
  $F5F8,$03 Jump to #R$F49B.

  $F5FB,$03 #REGa=*#R$D82D.
  $F5FE,$01 Decrease #REGa by one.
  $F5FF,$03 RLCA.
  $F602,$01 #REGh=#REGa.
  $F603,$03 #REGa=*#R$D82C.
  $F606,$01 Increment #REGa by one.
  $F607,$03 RLCA.
  $F60A,$04 #REGix=#R$E16E.
  $F60E,$03 Jump to #R$E0E2.
  $F611,$03 #REGde=#N($0007,$04,$04).
  $F614,$05 Jump to #R$F70B if #REGa is not equal to #N$14.
  $F619,$01 #REGhl+=#REGde.
  $F61A,$05 Jump to #R$F622 if *#REGhl is not equal to #N$00.
  $F61F,$01 Increment #REGb by one.
  $F620,$02 Jump to #R$F619.

  $F622,$03 Call #R$F130.
  $F625,$03 Call #R$F255.
  $F628,$02 Stash #REGbc and #REGhl on the stack.
  $F62A,$03 Call #R$D99B.
  $F62D,$03 Call #R$E2FD.
  $F630,$03 Call #R$DC4B.
  $F633,$03 Call #R$D9BE.
  $F636,$02 Restore #REGhl and #REGbc from the stack.
  $F638,$02 Test bit 7 of #REGb.
  $F63A,$02 Jump to #R$F664 if #REGb is zero.
  $F63C,$03 #REGa=*#R$E761.
  $F63F,$01 Stash #REGaf on the stack.
  $F640,$03 Call #R$E2DA.
  $F643,$03 Call #R$D99B.
  $F646,$01 Stash #REGbc on the stack.
  $F647,$05 Write #N$12 to *#R$E75D.
  $F64C,$03 Call #R$DC4B.
  $F64F,$01 Restore #REGbc from the stack.
  $F650,$02 Decrease counter by one and loop back to #R$F646 until counter is zero.
  $F652,$01 Restore #REGaf from the stack.
  $F653,$02 #REGa+=#N$03.
  $F655,$03 Write #REGa to *#R$E761.
  $F658,$03 #REGa=*#R$D832.
  $F65B,$03 Return if #REGa is equal to #N$01.
  $F65E,$03 Return if #REGa is equal to #N$03.
  $F661,$03 Jump to #R$F7EB.

  $F664,$06 #REGhl-=#N($0007,$04,$04).
  $F66A,$03 Call #R$E2F1.
  $F66D,$06 Return if *#R$D832 is equal to #N$02.
  $F673,$02 Test bit 5 of #REGb.
  $F675,$02 Jump to #R$F696 if #REGa is zero.
  $F677,$05 Write #N$00 to *#R$D832.
  $F67C,$03 #REGa=*#R$E75D.
  $F67F,$02 Compare #REGa with #N$0F.
  $F681,$01 Return P.
  $F682,$02 #REGa+=#N$04.
  $F684,$03 Write #REGa to *#R$D82C.
  $F687,$04 #REGhl+=#N($0007,$04,$04).
  $F68B,$03 Write #REGhl to *#R$E5B0.
  $F68E,$04 Write *#REGhl to *#R$E2C7.
  $F692,$02 #REGb=#N$00.
  $F694,$02 Jump to #R$F619.
  $F696,$07 Jump to #R$F6A4 if *#R$D832 is not equal to #N$00.
  $F69D,$02 Stash #REGbc and #REGhl on the stack.
  $F69F,$03 Call #R$F7EB.
  $F6A2,$02 Restore #REGhl and #REGbc from the stack.
  $F6A4,$03 #REGa=*#R$D832.
  $F6A7,$03 Return if #REGa is equal to #N$02.
  $F6AA,$04 Jump to #R$F6B3 if #REGa is equal to #N$03.
  $F6AE,$05 Write #N$01 to *#R$D832.
  $F6B3,$02 Test bit 6 of #REGb.
  $F6B5,$02 Jump to #R$F6BF if #REGa is not zero.
  $F6B7,$06 Return if *#R$D832 is equal to #N$03.
  $F6BD,$02 Jump to #R$F67C.

  $F6BF,$04 #REGc=*#R$E761.
  $F6C3,$03 #REGa=*#R$D82C.
  $F6C6,$01 #REGa+=#REGc.
  $F6C7,$03 Write #REGa to *#R$D82C.
  $F6CA,$03 Write #REGhl to *#R$E5B0.
  $F6CD,$03 Call #R$E250.
  $F6D0,$07 Jump to #R$F6DC if *#R$D832 is equal to #N$03.
  $F6D7,$05 Write #N$02 to *#R$D832.
  $F6DC,$03 #REGde=#N($0007,$04,$04).
  $F6DF,$01 Set flags.
  $F6E0,$03 Call #R$F711.
  $F6E3,$02 Stash #REGbc and #REGhl on the stack.
  $F6E5,$03 Call #R$F6F3.
  $F6E8,$02 Restore #REGhl and #REGbc from the stack.
  $F6EA,$06 Return if *#R$D832 is equal to #N$03.
  $F6F0,$03 Jump to #R$F76E.

  $F6F3,$03 #REGa=*#R$D82D.
  $F6F6,$01 Increment #REGa by one.
  $F6F7,$03 RLCA.
  $F6FA,$01 #REGh=#REGa.
  $F6FB,$03 #REGa=*#R$D82C.
  $F6FE,$02 #REGa+=#N$03.
  $F700,$03 RLCA.
  $F703,$01 Decrease #REGa by one.
  $F704,$04 #REGix=#R$E192.
  $F708,$03 Jump to #R$E0E2.
  $F70B,$02 Compare #REGa with #N$18.
  $F70D,$03 Jump to #R$F430 if #REGa is not zero.
  $F710,$01 Set flags.
  $F711,$02 #REGhl-=#REGde (with carry).
  $F713,$01 #REGa=*#REGhl.
  $F714,$02 Compare #REGa with #N$00.
  $F716,$02 Jump to #R$F71B if #REGa is not zero.
  $F718,$01 Increment #REGb by one.
  $F719,$02 Jump to #R$F711.
  $F71B,$03 Call #R$F130.
  $F71E,$03 Call #R$F255.
  $F721,$02 Stash #REGbc and #REGhl on the stack.
  $F723,$03 Call #R$D99B.
  $F726,$03 Call #R$E2FD.
  $F729,$03 Call #R$DCDC.
  $F72C,$03 Call #R$D9BE.
  $F72F,$02 Restore #REGhl and #REGbc from the stack.
  $F731,$02 Test bit 7 of #REGb.
  $F733,$02 Jump to #R$F75D if #REGb is zero.
  $F735,$03 #REGa=*#R$E761.
  $F738,$01 Stash #REGaf on the stack.
  $F739,$03 Call #R$E2DA.
  $F73C,$03 Call #R$D99B.
  $F73F,$01 Stash #REGbc on the stack.
  $F740,$05 Write #N$02 to *#R$E75D.
  $F745,$03 Call #R$DCDC.
  $F748,$01 Restore #REGbc from the stack.
  $F749,$02 Decrease counter by one and loop back to #R$F73F until counter is zero.
  $F74B,$01 Restore #REGaf from the stack.
  $F74C,$02 #REGa+=#N$03.
  $F74E,$03 Write #REGa to *#R$E761.
  $F751,$09 Return if *#R$D832 is either #N$01 or #N$03.
  $F75A,$03 Jump to #R$F6F3.

  $F75D,$04 #REGhl+=#N($0007,$04,$04).
  $F761,$03 Call #R$E2F1.
  $F764,$06 Return if *#R$D832 is equal to #N$02.
  $F76A,$02 Test bit 5 of #REGb.
  $F76C,$02 Jump to #R$F78F if #REGa is zero.
  $F76E,$05 Write #N$00 to *#R$D832.
  $F773,$03 #REGa=*#R$E75D.
  $F776,$03 Return if #REGa is lower than #N$05 (unsigned comparison).
  $F779,$02 #REGa-=#N$04.
  $F77B,$03 Write #REGa to *#R$D82C.
  $F77E,$06 #REGhl-=#N($0007,$04,$04) (with carry).
  $F784,$03 Write #REGhl to *#R$E5B0.
  $F787,$04 Write *#REGhl to *#R$E2C7.
  $F78B,$02 #REGb=#N$00.
  $F78D,$02 Jump to #R$F711.

  $F78F,$07 Jump to #R$F79D if *#R$D832 is not equal to #N$00.
  $F796,$02 Stash #REGbc and #REGhl on the stack.
  $F798,$03 Call #R$F6F3.
  $F79B,$02 Restore #REGhl and #REGbc from the stack.
  $F79D,$06 Return if *#R$D832 is equal to #N$02.
  $F7A3,$04 Jump to #R$F7AC if *#R$D832 is equal to #N$03.
  $F7A7,$05 Write #N$01 to *#R$D832.
  $F7AC,$02 Test bit 6 of #REGb.
  $F7AE,$02 Jump to #R$F7B8 if #REGa is not zero.
  $F7B0,$06 Return if *#R$D832 is equal to #N$03.
  $F7B6,$02 Jump to #R$F773.
  $F7B8,$04 #REGc=*#R$E761.
  $F7BC,$03 #REGa=*#R$D82C.
  $F7BF,$01 #REGa-=#REGc.
  $F7C0,$03 Write #REGa to *#R$D82C.
  $F7C3,$03 Write #REGhl to *#R$E5B0.
  $F7C6,$03 Call #R$E250.
  $F7C9,$07 Jump to #R$F7D5 if *#R$D832 is equal to #N$03.
  $F7D0,$05 Write #N$02 to *#R$D832.
  $F7D5,$03 #REGde=#N($0007,$04,$04).
  $F7D8,$03 Call #R$F619.
  $F7DB,$02 Stash #REGbc and #REGhl on the stack.
  $F7DD,$03 Call #R$F7EB.
  $F7E0,$02 Restore #REGhl and #REGbc from the stack.
  $F7E2,$06 Return if *#R$D832 is equal to #N$03.
  $F7E8,$03 Jump to #R$F677.

  $F7EB,$03 #REGa=*#R$D82D.
  $F7EE,$01 Increment #REGa by one.
  $F7EF,$03 RLCA.
  $F7F2,$01 #REGh=#REGa.
  $F7F3,$03 #REGa=*#R$D82C.
  $F7F6,$01 Decrease #REGa by one.
  $F7F7,$03 RLCA.
  $F7FA,$04 #REGix=#R$E186.
  $F7FE,$03 Jump to #R$E0E2.

c $F801
  $F801,$05 Jump to #R$E320 if #REGa is not equal to #N$10.
  $F806,$08 Jump to #R$E320 if *#R$E26A is not equal to #N$00.
  $F80E,$03 Call #R$E713.
  $F811,$03 #REGa=*#R$E2C7.
  $F814,$05 Jump to #R$E320 if #REGa is equal to #N$00.
  $F819,$03 Write #REGa to *#R$E26A.
  $F81C,$03 Halt operation (suspend CPU until the next interrupt) three times.
  $F81F,$05 Jump to #R$F84B if #REGa is lower than #N$15.
  $F824,$05 Jump to #R$F853 if #REGa is lower than #N$29.
  $F829,$05 Jump to #R$F858 if #REGa is lower than #N$3D.
N $F82E Else, use #R$AC24 as the default spritesheet.
  $F82E,$03 #REGhl=#R$AC24.
N $F831 Set the active spritesheet.
@ $F831 label=WriteSpriteBank
  $F831,$03 Write #REGhl to *#R$E2C8.
  $F834,$03 Call #R$DE69.
  $F837,$03 Call #R$DA0B.
  $F83A,$03 #REGhl=*#R$E5B0.
  $F83D,$01 Increment #REGhl by one.
  $F83E,$03 Write #REGhl to *#R$E5B0.
  $F841,$02 #REGb=#N$00.
  $F843,$05 Write #N$06 to *#R$D82D.
  $F848,$03 Jump to #R$F46E.
N $F84B Set the spritebank to the buffer image (containing the image tiles).
@ $F84B label=SetSpriteBank_BufferImage
  $F84B,$03 Call #R$DFB2.
  $F84E,$03 #REGhl=#R$A0E3.
  $F851,$02 Jump to #R$F831.
N $F853 Set spritebank #N$01.
@ $F853 label=SetSpriteBank_01
  $F853,$03 #REGhl=#R$AC24.
  $F856,$02 Jump to #R$F831.
N $F858 Set spritebank #N$02.
@ $F858 label=SetSpriteBank_02
  $F858,$03 #REGhl=#R$B765.
  $F85B,$02 Jump to #R$F831.

c $F85D
  $F85D,$01 Disable interrupts.
  $F85E,$06 Stash #REGaf, #REGbc, #REGde, #REGhl and #REGix on the stack.
  $F864,$08 Jump to #R$F9A1 if bit 7 of *#R$D839 is set.
  $F86C,$08 Jump to #R$F87D if *#R$D835 is OFF (#N$00).
N $F874 The players cursor is showing, so update the attribute cycling
. animation.
  $F874,$03 Call #R$E63F.
  $F877,$03 Call #R$E6C8.
  $F87A,$03 Call #R$E5E4.
  $F87D,$08 Jump to #R$F8C6 if *#R$D83B is equal to #N$00.
  $F885,$03 #REGhl=#R$D842.
  $F888,$01 Decrease *#REGhl by one.
  $F889,$03 Jump to #R$F8C6 if *#REGhl is not zero.
  $F88C,$02 Write #N$03 to *#REGhl.
  $F88E,$03 #REGhl=*#R$D853.
  $F891,$01 #REGc=*#REGhl.
  $F892,$01 Increment #REGhl by one.
  $F893,$01 #REGb=*#REGhl.
  $F894,$03 #REGa=*#R$DA15.
  $F897,$03 Call #R$DA85.
  $F89A,$03 #REGa=*#R$DA16.
  $F89D,$03 Call #R$DA8F.
  $F8A0,$03 #REGhl=#R$D846.
  $F8A3,$01 Decrease *#REGhl by one.
  $F8A4,$03 Jump to #R$F8C6 if *#REGhl is not zero.
  $F8A7,$02 Write #N$06 to *#REGhl.
  $F8A9,$03 #REGhl=*#R$D853.
  $F8AC,$02 Increment #REGhl by two.
  $F8AE,$06 Jump to #R$F8C3 if *#REGhl is not equal to #N$FF.
  $F8B4,$03 #REGhl=#R$D838.
  $F8B7,$02 Set bit 1 of *#REGhl.
  $F8B9,$04 Write #N$00 to *#R$D83B.
  $F8BD,$03 Call #R$DAB1.
  $F8C0,$06 Write #R$DA1F to *#R$D853.
  $F8C6,$08 Jump to #R$F90F if *#R$D83C is equal to #N$00.
  $F8CE,$03 #REGhl=#R$D843.
  $F8D1,$01 Decrease *#REGhl by one.
  $F8D2,$03 Jump to #R$F90F if *#REGhl is not zero.
  $F8D5,$02 Write #N$03 to *#REGhl.
  $F8D7,$03 #REGhl=*#R$D855.
  $F8DA,$01 #REGc=*#REGhl.
  $F8DB,$01 Increment #REGhl by one.
  $F8DC,$01 #REGb=*#REGhl.
  $F8DD,$03 #REGa=*#R$DA17.
  $F8E0,$03 Call #R$DA85.
  $F8E3,$03 #REGa=*#R$DA18.
  $F8E6,$03 Call #R$DA8F.
  $F8E9,$03 #REGhl=#R$D847.
  $F8EC,$01 Decrease *#REGhl by one.
  $F8ED,$03 Jump to #R$F90F if *#REGhl is not zero.
  $F8F0,$02 Write #N$06 to *#REGhl.
  $F8F2,$03 #REGhl=*#R$D855.
  $F8F5,$02 Increment #REGhl by two.
  $F8F7,$06 Jump to #R$F90C if *#REGhl is not equal to #N$FF.
  $F8FD,$03 #REGhl=#R$D838.
  $F900,$02 Set bit 2 of *#REGhl.
  $F902,$04 Write #N$00 to *#R$D83C.
  $F906,$03 Call #R$DAB1.
  $F909,$06 Write #R$DA1F to *#R$D855.
  $F90F,$08 Jump to #R$F958 if *#R$D83D is equal to #N$00.
  $F917,$03 #REGhl=#R$D844.
  $F91A,$01 Decrease *#REGhl by one.
  $F91B,$03 Jump to #R$F958 if *#REGhl is not zero.
  $F91E,$02 Write #N$03 to *#REGhl.
  $F920,$03 #REGhl=*#R$D857.
  $F923,$01 #REGc=*#REGhl.
  $F924,$01 Increment #REGhl by one.
  $F925,$01 #REGb=*#REGhl.
  $F926,$03 #REGa=*#R$DA19.
  $F929,$03 Call #R$DA85.
  $F92C,$03 #REGa=*#R$DA1A.
  $F92F,$03 Call #R$DA8F.
  $F932,$03 #REGhl=#R$D848.
  $F935,$01 Decrease *#REGhl by one.
  $F936,$03 Jump to #R$F958 if *#REGhl is not zero.
  $F939,$02 Write #N$06 to *#REGhl.
  $F93B,$03 #REGhl=*#R$D857.
  $F93E,$02 Increment #REGhl by two.
  $F940,$06 Jump to #R$F955 if *#REGhl is not equal to #N$FF.
  $F946,$03 #REGhl=#R$D838.
  $F949,$02 Set bit 3 of *#REGhl.
  $F94B,$04 Write #N$00 to *#R$D83D.
  $F94F,$03 Call #R$DAB1.
  $F952,$06 Write #R$DA1F to *#R$D857.
  $F958,$08 Jump to #R$F9A1 if *#R$D83E is equal to #N$00.
  $F960,$03 #REGhl=#R$D845.
  $F963,$01 Decrease *#REGhl by one.
  $F964,$03 Jump to #R$F9A1 if *#REGhl is not zero.
  $F967,$02 Write #N$03 to *#REGhl.
  $F969,$03 #REGhl=*#R$D859.
  $F96C,$01 #REGc=*#REGhl.
  $F96D,$01 Increment #REGhl by one.
  $F96E,$01 #REGb=*#REGhl.
  $F96F,$03 #REGa=*#R$DA1B.
  $F972,$03 Call #R$DA85.
  $F975,$03 #REGa=*#R$DA1C.
  $F978,$03 Call #R$DA8F.
  $F97B,$03 #REGhl=#R$D849.
  $F97E,$01 Decrease *#REGhl by one.
  $F97F,$03 Jump to #R$F9A1 if *#REGhl is not zero.
  $F982,$02 Write #N$06 to *#REGhl.
  $F984,$03 #REGhl=*#R$D859.
  $F987,$02 Increment #REGhl by two.
  $F989,$06 Jump to #R$F99E if *#REGhl is not equal to #N$FF.
  $F98F,$03 #REGhl=#R$D838.
  $F992,$02 Set bit 4 of *#REGhl.
  $F994,$04 Write #N$00 to *#R$D83E.
  $F998,$03 Call #R$DAB1.
  $F99B,$06 Write #R$DA1F to *#R$D859.
  $F9A1,$08 Jump to #R$F9DD if bit 1 of *#R$D839 is set.
  $F9A9,$03 #REGhl=#R$D850.
  $F9AC,$01 Decrease *#REGhl by one.
  $F9AD,$03 Jump to #R$FA49 if *#REGhl is not zero.
  $F9B0,$02 Write #N$01 to *#REGhl.
  $F9B2,$08 Jump to #R$FA49 if bit 0 of *#R$D839 is set.
  $F9BA,$02 Write #N$1E to *#REGhl.
  $F9BC,$03 #REGhl=#R$D839.
  $F9BF,$02 Set bit 1 of *#REGhl.
  $F9C1,$03 #REGhl=#R$D815.
  $F9C4,$02 Rotate *#REGhl left (with carry).
  $F9C6,$03 #REGhl=#R$D839.
  $F9C9,$03 Jump to #R$F9D6 if *#REGhl is higher.
  $F9CC,$02 Test bit 7 of *#REGhl.
  $F9CE,$03 Jump to #R$F9D6 if *#REGhl is not zero.
  $F9D1,$02 Set bit 2 of *#REGhl.
  $F9D3,$03 Jump to #R$F9DD.
  $F9D6,$02 Reset bit 2 of *#REGhl.
  $F9D8,$05 Write #N$FF to *#R$E264.
  $F9DD,$02 Test bit 2 of *#REGhl.
  $F9DF,$02 #REGa=#COLOUR$45.
  $F9E1,$03 Write #REGa to *#N$5809 (attribute buffer location).
  $F9E4,$03 Write #REGa to *#N$580A (attribute buffer location).
  $F9E7,$03 Write #REGa to *#N$580B (attribute buffer location).
  $F9EA,$03 Write #REGa to *#N$580C (attribute buffer location).
  $F9ED,$03 #REGhl=*#R$D84A.
  $F9F0,$02 #REGb=#N$08.
  $F9F2,$03 Jump to #R$FA22 if *#REGhl is zero.
  $F9F5,$04 Shift *#REGhl left two positions (with carry).
  $F9F9,$03 Jump to #R$FA02 if *#REGhl is higher.
  $F9FC,$01 Increment #REGh by one.
  $F9FD,$02 Decrease counter by one and loop back to #R$F9F5 until counter is zero.
  $F9FF,$03 Jump to #R$FA49.
  $FA02,$03 #REGa=*#R$D828.
  $FA05,$05 Jump to #R$FA15 if #REGa is equal to #N$01.
  $FA0A,$01 Decrease #REGa by one.
  $FA0B,$03 Write #REGa to *#R$D828.
  $FA0E,$01 Decrease #REGhl by one.
  $FA0F,$03 Write #REGhl to *#R$D84A.
  $FA12,$03 Jump to #R$F9F5.
  $FA15,$03 #REGhl=#R$D839.
  $FA18,$02 Reset bit 1 of *#REGhl.
  $FA1A,$05 Write #N$80 to *#R$E264.
  $FA1F,$03 Jump to #R$FA49.
  $FA22,$01 Set the carry flag.
  $FA23,$02 Rotate *#REGhl right.
  $FA25,$01 Set the carry flag.
  $FA26,$02 Rotate *#REGhl right.
  $FA28,$03 Jump to #R$FA31 if #REGhl is lower.
  $FA2B,$01 Increment #REGh by one.
  $FA2C,$02 Decrease counter by one and loop back to #R$FA22 until counter is zero.
  $FA2E,$03 Jump to #R$FA49.
  $FA31,$03 #REGa=*#R$D828.
  $FA34,$05 Jump to #R$FA44 if #REGa is equal to #N$04.
  $FA39,$01 Increment #REGa by one.
  $FA3A,$03 Write #REGa to *#R$D828.
  $FA3D,$01 Increment #REGhl by one.
  $FA3E,$03 Write #REGhl to *#R$D84A.
  $FA41,$03 Jump to #R$FA22.
  $FA44,$03 #REGhl=#R$D839.
  $FA47,$02 Reset bit 1 of *#REGhl.
  $FA49,$03 #REGhl=#R$D839.
  $FA4C,$02 Test bit 3 of *#REGhl.
  $FA4E,$03 Jump to #R$FA85 if #REGhl is not zero.
  $FA51,$03 #REGhl=#R$D851.
  $FA54,$01 Decrease *#REGhl by one.
  $FA55,$03 Jump to #R$FB09 if *#REGhl is not zero.
  $FA58,$02 Write #N$01 to *#REGhl.
  $FA5A,$03 #REGa=*#R$D839.
  $FA5D,$02 Test bit 0 of #REGa.
  $FA5F,$03 Jump to #R$FB09 if *#REGhl is not zero.
  $FA62,$02 Write #N$1E to *#REGhl.
  $FA64,$03 #REGhl=#R$D839.
  $FA67,$02 Set bit 3 of *#REGhl.
  $FA69,$03 #REGhl=#R$D816.
  $FA6C,$02 Rotate *#REGhl left (with carry).
  $FA6E,$03 #REGhl=#R$D839.
  $FA71,$03 Jump to #R$FA7E if *#REGhl is higher.
  $FA74,$02 Test bit 7 of *#REGhl.
  $FA76,$03 Jump to #R$FA7E if *#REGhl is not zero.
  $FA79,$02 Set bit 4 of *#REGhl.
  $FA7B,$03 Jump to #R$FA85.
  $FA7E,$02 Reset bit 4 of *#REGhl.
  $FA80,$05 Write #N$FF to *#R$E28E.
  $FA85,$02 Test bit 4 of *#REGhl.
  $FA87,$02 #REGa=#COLOUR$45.
  $FA89,$03 Write #REGa to *#N$5AA9 (attribute buffer location).
  $FA8C,$03 Write #REGa to *#N$5AAA (attribute buffer location).
  $FA8F,$03 Write #REGa to *#N$5AAB (attribute buffer location).
  $FA92,$03 Write #REGa to *#N$5AAC (attribute buffer location).
  $FA95,$03 #REGhl=*#R$D84C.
  $FA98,$02 #REGb=#N$08.
  $FA9A,$03 Jump to #R$FAD6 if *#REGhl is zero.
  $FA9D,$02 Shift *#REGhl right.
  $FA9F,$02 Shift *#REGhl right.
  $FAA1,$03 Jump to #R$FAB0 if *#REGhl is higher.
  $FAA4,$01 Increment #REGh by one.
  $FAA5,$02 Decrease counter by one and loop back to #R$FA9D until counter is zero.
  $FAA7,$03 #REGhl=#R$D83A.
  $FAAA,$02 Test bit 7 of *#REGhl.
  $FAAC,$01 Return if #REGh is not zero.
  $FAAD,$03 Jump to #R$FB09.
  $FAB0,$03 #REGa=*#R$D829.
  $FAB3,$05 Jump to #R$FAC3 if #REGa is equal to #N$01.
  $FAB8,$01 Decrease #REGa by one.
  $FAB9,$03 Write #REGa to *#R$D829.
  $FABC,$01 Increment #REGhl by one.
  $FABD,$03 Write #REGhl to *#R$D84C.
  $FAC0,$03 Jump to #R$FA9D.
  $FAC3,$03 #REGhl=#R$D839.
  $FAC6,$02 Reset bit 3 of *#REGhl.
  $FAC8,$05 Write #N$80 to *#R$E28E.
  $FACD,$03 #REGhl=#R$D83A.
  $FAD0,$02 Test bit 7 of *#REGhl.
  $FAD2,$01 Return if #REGhl is not zero.
  $FAD3,$03 Jump to #R$FB09.
  $FAD6,$01 Set the carry flag.
  $FAD7,$02 Rotate *#REGhl left.
  $FAD9,$01 Set the carry flag.
  $FADA,$02 Rotate *#REGhl left.
  $FADC,$03 Jump to #R$FAEB if #REGhl is lower.
  $FADF,$01 Increment #REGh by one.
  $FAE0,$02 Decrease counter by one and loop back to #R$FAD6 until counter is zero.
  $FAE2,$03 #REGhl=#R$D83A.
  $FAE5,$02 Test bit 7 of *#REGhl.
  $FAE7,$01 Return if #REGh is not zero.
  $FAE8,$03 Jump to #R$FB09.
  $FAEB,$03 #REGa=*#R$D829.
  $FAEE,$05 Jump to #R$FAFE if #REGa is equal to #N$04.
  $FAF3,$01 Increment #REGa by one.
  $FAF4,$03 Write #REGa to *#R$D829.
  $FAF7,$01 Decrease #REGhl by one.
  $FAF8,$03 Write #REGhl to *#R$D84C.
  $FAFB,$03 Jump to #R$FAD6.
  $FAFE,$03 #REGhl=#R$D839.
  $FB01,$02 Reset bit 3 of *#REGhl.
  $FB03,$03 #REGhl=#R$D83A.
  $FB06,$02 Test bit 7 of *#REGhl.
  $FB08,$01 Return if #REGhl is not zero.
  $FB09,$03 #REGhl=#R$D839.
  $FB0C,$02 Test bit 5 of *#REGhl.
  $FB0E,$03 Jump to #R$FB45 if #REGhl is not zero.
  $FB11,$03 #REGhl=#R$D852.
  $FB14,$01 Decrease *#REGhl by one.
  $FB15,$03 Jump to #R$FBDD if *#REGhl is not zero.
  $FB18,$02 Write #N$01 to *#REGhl.
  $FB1A,$03 #REGa=*#R$D839.
  $FB1D,$02 Test bit 0 of #REGa.
  $FB1F,$03 Jump to #R$FBDD if *#REGhl is not zero.
  $FB22,$02 Write #N$1E to *#REGhl.
  $FB24,$03 #REGhl=#R$D839.
  $FB27,$02 Set bit 5 of *#REGhl.
  $FB29,$03 #REGhl=#R$D817.
  $FB2C,$02 Rotate *#REGhl left (with carry).
  $FB2E,$03 #REGhl=#R$D839.
  $FB31,$03 Jump to #R$FB3E if *#REGhl is higher.
  $FB34,$02 Test bit 7 of *#REGhl.
  $FB36,$03 Jump to #R$FB3E if *#REGhl is not zero.
  $FB39,$02 Set bit 6 of *#REGhl.
  $FB3B,$03 Jump to #R$FB45.
  $FB3E,$02 Reset bit 6 of *#REGhl.
  $FB40,$05 Write #N$FF to *#R$E276.
  $FB45,$02 Test bit 6 of *#REGhl.
  $FB47,$02 #REGa=#COLOUR$45.
  $FB49,$03 Write #REGa to *#N$5920 (attribute buffer location).
  $FB4C,$03 Write #REGa to *#N$5940 (attribute buffer location).
  $FB4F,$03 Write #REGa to *#N$5960 (attribute buffer location).
  $FB52,$03 Write #REGa to *#N$5980 (attribute buffer location).
  $FB55,$03 #REGhl=*#R$D84E.
  $FB58,$03 Jump to #R$FBA0 if *#REGhl is zero.
  $FB5B,$06 Jump to #R$FB93 if *#REGhl is equal to #N$00.
  $FB61,$02 Write #N$00 to *#REGhl.
  $FB63,$01 Increment #REGh by one.
  $FB64,$02 Write #N$00 to *#REGhl.
  $FB66,$01 Increment #REGh by one.
  $FB67,$03 Write #REGhl to *#R$D84E.
  $FB6A,$03 #REGhl=#R$D82A.
  $FB6D,$01 Decrease *#REGhl by one.
  $FB6E,$03 Jump to #R$FBDD if *#REGhl is not zero.
  $FB71,$02 Write #N$04 to *#REGhl.
  $FB73,$03 #REGhl=*#R$D84E.
  $FB76,$03 #REGde=#N($07E0,$04,$04).
  $FB79,$01 Set the carry flag.
  $FB7A,$01 Invert the carry flag.
  $FB7B,$02 #REGhl-=#REGde (with carry).
  $FB7D,$03 Write #REGhl to *#R$D84E.
  $FB80,$03 #REGhl=#R$D82B.
  $FB83,$01 Decrease *#REGhl by one.
  $FB84,$03 Jump to #R$FBDD if *#REGhl is not zero.
  $FB87,$02 Write #N$04 to *#REGhl.
  $FB89,$03 #REGhl=*#R$D84E.
  $FB8C,$04 #REGhl+=#N($06E0,$04,$04).
  $FB90,$03 Write #REGhl to *#R$D84E.
  $FB93,$03 #REGhl=#R$D839.
  $FB96,$02 Reset bit 5 of *#REGhl.
  $FB98,$05 Write #N$80 to *#R$E276.
  $FB9D,$03 Jump to #R$FBDD.
  $FBA0,$06 Jump to #R$FBD8 if *#REGhl is not equal to #N$00.
  $FBA6,$02 Write #N$FF to *#REGhl.
  $FBA8,$01 Decrease #REGh by one.
  $FBA9,$02 Write #N$FF to *#REGhl.
  $FBAB,$01 Decrease #REGh by one.
  $FBAC,$03 Write #REGhl to *#R$D84E.
  $FBAF,$03 #REGhl=#R$D82A.
  $FBB2,$01 Decrease *#REGhl by one.
  $FBB3,$03 Jump to #R$FBDD if *#REGhl is not zero.
  $FBB6,$02 Write #N$04 to *#REGhl.
  $FBB8,$03 #REGhl=*#R$D84E.
  $FBBB,$04 #REGhl+=#N($07E0,$04,$04).
  $FBBF,$03 Write #REGhl to *#R$D84E.
  $FBC2,$03 #REGhl=#R$D82B.
  $FBC5,$01 Decrease *#REGhl by one.
  $FBC6,$03 Jump to #R$FBDD if *#REGhl is not zero.
  $FBC9,$02 Write #N$04 to *#REGhl.
  $FBCB,$03 #REGhl=*#R$D84E.
  $FBCE,$03 #REGde=#N($06E0,$04,$04).
  $FBD1,$01 Set the carry flag.
  $FBD2,$01 Invert the carry flag.
  $FBD3,$02 #REGhl-=#REGde (with carry).
  $FBD5,$03 Write #REGhl to *#R$D84E.
  $FBD8,$03 #REGhl=#R$D839.
  $FBDB,$02 Reset bit 5 of *#REGhl.
  $FBDD,$03 #REGhl=#R$D85F.
  $FBE0,$02 #REGb=#N$0C.
  $FBE2,$01 Decrease *#REGhl by one.
  $FBE3,$03 Call #R$FBEC zero.
  $FBE6,$01 Increment #REGhl by one.
  $FBE7,$02 Decrease counter by one and loop back to #R$FBE2 until counter is zero.
  $FBE9,$03 Jump to #R$FC43.
  $FBEC,$02 Write #N$1E to *#REGhl.
  $FBEE,$01 Stash #REGhl on the stack.
  $FBEF,$03 #REGhl=#R$D818.
  $FBF2,$02 #REGa=#N$0C.
  $FBF4,$01 #REGa-=#REGb.
  $FBF5,$02 #REGd=#N$00.
  $FBF7,$01 #REGe=#REGa.
  $FBF8,$01 #REGhl+=#REGde.
  $FBF9,$02 Rotate *#REGhl left (with carry).
  $FBFB,$03 Jump to #R$FC10 if #REGhl is higher.
  $FBFE,$03 #REGhl=#R$D839.
  $FC01,$02 Test bit 7 of *#REGhl.
  $FC03,$03 Jump to #R$FC10 if #REGhl is not zero.
  $FC06,$02 #REGc=#N$68.
  $FC08,$03 Call #R$FC1A.
  $FC0B,$02 #REGc=#N$40.
  $FC0D,$03 Jump to #R$FC32.
  $FC10,$02 #REGc=#N$6D.
  $FC12,$03 Call #R$FC1A.
  $FC15,$02 #REGc=#N$FF.
  $FC17,$03 Jump to #R$FC32.
  $FC1A,$04 #REGix=#R$D6B4.
  $FC1E,$02 RLCA.
  $FC20,$01 #REGe=#REGa.
  $FC21,$02 #REGix+=#REGde.
  $FC23,$03 #REGl=*#REGix+#N$00.
  $FC26,$03 #REGh=*#REGix+#N$01.
  $FC29,$01 Write #REGc to *#REGhl.
  $FC2A,$03 #REGl=*#REGix+#N$02.
  $FC2D,$03 #REGh=*#REGix+#N$03.
  $FC30,$01 Write #REGc to *#REGhl.
  $FC31,$01 Return.

  $FC32,$04 #REGix=#R$D6E4.
  $FC36,$01 RRCA.
  $FC37,$01 #REGe=#REGa.
  $FC38,$02 #REGix+=#REGde.
  $FC3A,$03 #REGl=*#REGix+#N$00.
  $FC3D,$03 #REGh=*#REGix+#N$01.
  $FC40,$01 Write #REGc to *#REGhl.
  $FC41,$01 Restore #REGhl from the stack.
  $FC42,$01 Return.

c $FC43
  $FC43,$03 #REGhl=#R$D83A.
  $FC46,$02 Test bit 0 of *#REGhl.
  $FC48,$03 Jump to #R$FCA4 if  is zero.
  $FC4B,$03 #REGhl=#R$D85D.
  $FC4E,$01 Decrease *#REGhl by one.
  $FC4F,$03 Jump to #R$FCA4 if *#REGhl is not zero.
  $FC52,$02 Write #N$4B to *#REGhl.
  $FC54,$03 #REGhl=#R$D83A.
  $FC57,$02 Test bit 5 of *#REGhl.
  $FC59,$03 Jump to #R$FC6D if *#REGhl is zero.
  $FC5C,$02 #REGa=#N$05.
  $FC5E,$02 #REGd=#N$32.
  $FC60,$02 #REGe=#N$50.
  $FC62,$02,b$01 Flip bit 4.
  $FC64,$02 Set border to the colour held by #REGa.
  $FC66,$01 #REGb=#REGd.
  $FC67,$02 Decrease counter by one and loop back to #R$FC67 until counter is zero.
  $FC69,$01 Decrease #REGe by one.
  $FC6A,$03 Jump to #R$FC62 if #REGe is not zero.
  $FC6D,$03 #REGhl=*#R$D85B.
  $FC70,$02 #REGb=#N$04.
  $FC72,$02 Shift *#REGhl left (with carry).
  $FC74,$03 Jump to #R$FC7D if #REGe is higher.
  $FC77,$01 Increment #REGh by one.
  $FC78,$02 Decrease counter by one and loop back to #R$FC72 until counter is zero.
  $FC7A,$03 Jump to #R$FCA4.
  $FC7D,$03 #REGa=*#R$D85E.
  $FC80,$01 Decrease #REGa by one.
  $FC81,$03 Jump to #R$FC9B if #REGa is zero.
  $FC84,$03 Write #REGa to *#R$D85E.
  $FC87,$02 Compare #REGa with #N$03.
  $FC89,$03 Jump to #R$FC94 P.
  $FC8C,$03 #REGa=*#R$D83A.
  $FC8F,$02 Set bit 5 of #REGa.
  $FC91,$03 Write #REGa to *#R$D83A.
  $FC94,$01 Decrease #REGhl by one.
  $FC95,$03 Write #REGhl to *#R$D85B.
  $FC98,$03 Jump to #R$FC72.
  $FC9B,$03 #REGhl=#R$D83A.
  $FC9E,$02 Set bit 4 of *#REGhl.
  $FCA0,$02 Reset bit 0 of *#REGhl.
  $FCA2,$02 Reset bit 5 of *#REGhl.
  $FCA4,$03 #REGhl=#R$D83A.
  $FCA7,$02 Test bit 7 of *#REGhl.
  $FCA9,$01 Return if #REGhl is not zero.
  $FCAA,$02 Restore #REGix from the stack.
  $FCAC,$04 Restore #REGhl, #REGde, #REGbc and #REGaf from the stack.
  $FCB0,$01 Enable interrupts.
  $FCB1,$02 Return from the interrupt routine.

b $FCB3

c $FDFD Alias: Interrupt Jump Dispatcher
@ $FDFD label=AliasInterruptRedirect
D $FDFD All generated interrupts jump here and then are redirected to #R$F85D.
  $FDFD,$03 Jump to #R$F85D.

b $FE00 Interrupt Low-Order Byte Jump Table
@ $FE00 label=InterruptLowOrderByteJumpTable
D $FE00 Used as the low-order byte when an interrupt is generated.
. The high-order byte is also #N$FD, meaning all interrupts jump to #R$FDFD.
.
. See #R$D1AA and #R$FDFD.
  $FE00,$0100

b $FF01
