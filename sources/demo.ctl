; Copyright Domark Ltd 1986, 2024 ArcadeGeek LTD.
; NOTE: Disassembly is Work-In-Progress.
; Label naming is loosely based on Action_ActionName_SubAction e.g. Print_HighScore_Loop.

> $4000 @rom
> $4000 @start
b $4000 Loading Screen
D $4000 #UDGTABLE { =h Split Personalities DEMO Loading Screen. } { #SCR$02(demo-loading) } UDGTABLE#
@ $4000 label=Loading
  $4000,$1800,$20 Pixels.
  $5800,$0300,$20 Attributes.

g $61A8

b $9470 Graphics Data: Level 01 (Ronald Reagan)
D $9470 Compressed graphics data for level 1.
.
. This routine is identical to #R$5B00@main(GraphicsData_Level_01) in the main
. game code.
@ $9470 label=GraphicsData_Level_01
N $9470 This is decompressed using the routine at #R$DE0F which writes the
. image to #R$A0E3.
N $9470 #PUSHS #SIM(start=$D2DA,stop=$D2DD,ix=$9470,sp=$FFFA)
. #UDGTABLE { #UDGARRAY$14,scale=$02,step=$14($A0E3-$AACF-$01-$A0)@$AAE3-$AC22(demo-level-01) } UDGTABLE#
N $9470 And split up into separate tiles for the game:
. #UDGTABLE(default,centre)
. #FOR$00,$03''y'
. { #FOR$00,$04(x, =h #N(x+($05*y)), | ) }
. { #FOR$00,$04!!x!
.   #LET(id=(x+($05*y)))#LET(multiplier=({id}+y*$9B)*$04)
.   #UDGARRAY$04,scale=$02,step=$14(($A0E3+{multiplier})-($A34F+{multiplier})-$01-$A0)@($AAE3+({id}+y*$0F)*$04)-($AB22+({id}+y*$0F)*$04)-$01-$14(#FORMAT(demo-level-01-{id:02}))! |
. !! } '' UDGTABLE# #POPS

g $A0E3 Image Buffer
@ $A0E3 label=Buffer_Image
@ $AAE3 label=Buffer_Image_Attributes
D $A0E3 Holds the image for the current level.
B $A0E3,$0B40,$14

b $C2A6 Data: Playarea Surround
@ $C2A6 label=Data_PlayareaSurround
D $C2A6 #PUSHS #UDGTABLE { #SIM(start=$D1E1,stop=$D1E7)#SCR$02(demo-playarea-surround) } UDGTABLE# #POPS

b $CBDE

> $D1AA @org=$D1AA
c $D1AA Demo Entry Point
@ $D1AA label=DemoEntryPoint
  $D1AA,$01 Disable interrupts.
  $D1AB,$04 Stash the current stack pointer at *#R$D22E.
  $D1AF,$03 #REGsp=#N$FFFA.
N $D1B2 Write #N$FD from #R$FE00 for #N$100 bytes. All will become clear soon...
  $D1B2,$03 #REGhl=#N$FE00.
  $D1B5,$03 #HTML(Set a counter in #REGb of #N$00 (as it's a <code>DJNZ</code>
. this is really #N$100) and set #REGc to #N$FD for the value to write.)
@ $D1B8 label=WriteInterruptJumpAddress_Loop
  $D1B8,$01 Write #N$FD to *#REGhl.
  $D1B9,$01 Increment #REGhl by one.
  $D1BA,$02 Decrease counter by one and loop back to #R$D1B8 until counter is zero.
N $D1BC One more for luck...
  $D1BC,$01 Write #REGc to *#REGhl.
N $D1BD This sets interrupt mode #N$02; when the system generates an interrupt,
. it'll use the high-order byte set here, together with a low-order byte
. generated from the system to form a 16-bit address to jump to.
.
. As we've just set #N$FD to every address, this means that every generated
. interrupt will jump to #N$FEFD, which in turn will jump to #R$F47A.
  $D1BD,$04 Set #N$FE as the high-order byte in #REGi.
  $D1C1,$02 Interrupt mode #N$02.
  $D1C3,$01 Disable interrupts.
  $D1C4,$06 Write #R$61A8 to *#R$D5B0.
  $D1CA,$0F Write #N($0000,$04,$04) to: #LIST { *#R$D590 } { *#R$D591 } { *#R$E0D0 } LIST#
  $D1D9,$04 Write #N$00 to *#R$D589.
N $D1DD Print the in-game surround.
  $D1DD,$04 Set border colour to #INK$05.
  $D1E1,$03 #REGhl=#R$C2A6.
  $D1E4,$03 Call #R$D5B2.
N $D1E7 Set the starting lives.
  $D1E7,$05 Write #N$04 to *#R$D543.
  $D1EC,$06 Write #N$5ADA (attribute buffer location) to *#R$D58E.
N $D1F2 Initialise the new game with the level 1 data.
  $D1F2,$06 Write #R$D232 to *#R$D230.
N $D1F8 Note, this level counter counts down instead of up.
  $D1F8,$02 Set a counter in #REGb for the total number of levels (#N$01).
N $D1FA This level counter is used for display purposes.
  $D1FA,$04 Write #N$00 to *#R$D58A.
N $D1FE The game loops here in-game to begin a new level.
  $D1FE,$01 Stash the level counter on the stack.
  $D1FF,$03 #REGhl=*#R$D230.
  $D202,$03 #REGde=current level data pointer.
  $D205,$01 Increment the level data pointer by one to point to the next level.
  $D206,$03 Write the next level pointer to *#R$D230.
  $D209,$01 Exchange the #REGde and #REGhl registers.
  $D20A,$03 #REGa=*#R$D58A.
  $D20D,$01 Increment #REGa by one.
  $D20E,$01 DAA.
  $D20F,$03 Write #REGa to *#R$D58A.
  $D212,$03 Call #R$D234.
  $D215,$02 #REGa=#N$01.
  $D217,$01 Restore #REGbc from the stack.
  $D218,$01 Stash #REGbc on the stack.
  $D219,$03 Call #R$DB7E.
  $D21C,$03 Call #R$E87B.
  $D21F,$01 Enable interrupts.
  $D220,$03 Call #R$D3F5.
  $D223,$01 Restore #REGbc from the stack.
  $D224,$02 Decrease counter by one and loop back to #R$D1FE until counter is zero.
  $D226,$04 Restore the original stack pointer from *#R$D22E.
  $D22A,$02 Interrupt mode #N$01.
  $D22C,$01 Enable interrupts.
  $D22D,$01 Return.

g $D22E Original Stack Pointer
@ $D22E label=Storage_StackPointer
D $D22E The original value of the Stack Pointer when excuting this demo code.
W $D22E,$02

g $D230 Pointer: Current Level Data
@ $D230 label=Pointer_CurrentLevelData
W $D230,$02

g $D232 Table: Level Data
@ $D232 label=Table_LevelData
W $D232,$02 Level #R((#PEEK(#PC+$01)*$100)+#PEEK(#PC))(#N($01+(#PC-$D232)/$02)).

c $D234 Game Initialisation
@ $D234 label=Game_Initialisation
R $D234 HL Pointer to level data
  $D234,$01 The first byte is the length of the level data, store this in #REGc.
  $D235,$01 #REGa=data length.
  $D236,$02 #REGb=#N$00.
  $D238,$01 Increment #REGhl by one.
  $D239,$03 #REGde=#R$E0B2.
  $D23C,$02 LDIR.
  $D23E,$03 #REGde=#R$D531.
  $D241,$03 #REGbc=#N($0012,$04,$04).
  $D244,$02 LDIR.
  $D246,$01 #REGe=*#REGhl.
  $D247,$01 Increment #REGhl by one.
  $D248,$01 #REGd=*#REGhl.
  $D249,$04 Write #REGde to *#R$D5AE.
  $D24D,$03 #REGhl=#R$D57B.
  $D250,$02 #REGb=#N$0C.
  $D252,$02 Write #N$01 to *#REGhl.
  $D254,$01 Increment #REGhl by one.
  $D255,$02 Decrease counter by one and loop back to #R$D252 until counter is zero.
  $D257,$03 #REGde=#R$E06C.
  $D25A,$03 #REGhl=#R$D47D.
  $D25D,$03 #REGbc=#N($0031,$04,$04).
  $D260,$02 LDIR.
  $D262,$03 #REGhl=#R$E09E.
  $D265,$02 #REGb=#N$14.
  $D267,$02 #REGa=#N$01.
  $D269,$01 Write #REGa to *#REGhl.
  $D26A,$01 Increment #REGhl by one.
  $D26B,$01 Increment #REGa by one.
  $D26C,$02 Decrease counter by one and loop back to #R$D269 until counter is zero.
  $D26E,$03 #REGhl=#R$D595.
  $D271,$03 #REGde=#R$D544.
  $D274,$01 #REGa=*#REGhl.
  $D275,$02 Compare #REGa with #N$FF.
  $D277,$02 Jump to #R$D283 if #REGa is equal to #N$FF.
  $D279,$01 #REGb=#REGa.
  $D27A,$01 Increment #REGhl by one.
  $D27B,$01 #REGa=*#REGhl.
  $D27C,$01 Increment #REGhl by one.
  $D27D,$01 Write #REGa to *#REGde.
  $D27E,$01 Increment #REGde by one.
  $D27F,$02 Decrease counter by one and loop back to #R$D27D until counter is zero.
  $D281,$02 Jump to #R$D274.
N $D283 The computed values are done, copy the last six values over.
@ $D283 label=PopulateDefaults_Done
  $D283,$06 Copy the last #N($0006,$04,$04) bytes from D888 to D84A.
N $D289 Write three NOT random numbers between 01-20 to ...
  $D289,$02 #REGb=#N$03.
  $D28B,$03 Write #N$0A to *#REGde.
  $D28E,$01 Increment #REGde by one.
  $D28F,$02 Decrease counter by one and loop back to #R$D28B until counter is zero.
  $D291,$0F Write #R$D82A to: #LIST { *#R$D56F } { *#R$D571 } { *#R$D573 } { *#R$D575 } LIST#
  $D2A0,$03 #REGhl=#R$E09D.
  $D2A3,$03 #REGbc=#N($07D0,$04,$04).
  $D2A6,$03 Stash #REGbc, #REGhl and #REGhl on the stack.
  $D2A9,$03 Call #R$D682.
  $D2AC,$01 #REGhl+=#REGbc.
  $D2AD,$01 Exchange the #REGde and #REGhl registers.
  $D2AE,$01 Restore #REGhl from the stack.
  $D2AF,$03 Call #R$D682.
  $D2B2,$01 #REGhl+=#REGbc.
  $D2B3,$01 #REGb=*#REGhl.
  $D2B4,$01 #REGa=*#REGde.
  $D2B5,$01 Write #REGa to *#REGhl.
  $D2B6,$01 #REGa=#REGb.
  $D2B7,$01 Write #REGa to *#REGde.
  $D2B8,$02 Restore #REGhl and #REGbc from the stack.
  $D2BA,$01 Decrease #REGbc by one.
  $D2BB,$01 #REGa=#REGb.
  $D2BC,$01 Set the bits from #REGc.
  $D2BD,$02 Jump to #R$D2A6 if #REGbc is not equal to #REGc.
N $D2BF Populate the level, bonus and score numbering in the dashboard.
  $D2BF,$03 Call #R$E83A.
  $D2C2,$03 Call #R$E80B.
  $D2C5,$03 Call #R$E81F.
N $D2C8 Paint the preview grid pattern.
  $D2C8,$03 Call #R$E87B.
N $D2CB Small pause...
  $D2CB,$03 #REGbc=#N$9C40.
  $D2CE,$01 Decrease #REGbc by one.
  $D2CF,$04 Jump to #R$D2CE until #REGbc is equal to #N$00.
N $D2D3 Play the "static" animation in the preview area.
  $D2D3,$03 Call #R$E89C.
N $D2D6 Display the current preview image.
  $D2D6,$04 #REGix=*#R$D5AE.
  $D2DA,$03 Call #R$DE0F.
  $D2DD,$01 Return.

c $D2DE
  $D2DE,$07 Write #N($0780,$04,$04) to *#R$D5AA.
  $D2E5,$07 Write #N($0AF0,$04,$04) to *#R$D5AC.
  $D2EC,$03 Call #R$EFBB.
  $D2EF,$07 Jump to #R$D313 if *#R$D550 is equal to #N$09.
  $D2F6,$07 Jump to #R$D313 if *#R$D551 is not equal to #N$00.
  $D2FD,$01 Stash #REGbc on the stack.
  $D2FE,$06 Write *#R$D54C to *#R$D548.
  $D304,$06 Write *#R$D54D to *#R$D549.
  $D30A,$03 Call #R$E46C.
  $D30D,$03 #REGhl=#R$D555.
  $D310,$02 Reset bit 0 of *#REGhl.
  $D312,$01 Restore #REGbc from the stack.
  $D313,$02 Test bit 4 of #REGb.
  $D315,$03 Jump to #R$D431 if #REGa is equal to #N$00.
  $D318,$01 Stash #REGbc on the stack.
  $D319,$03 Call #R$D8CA.
  $D31C,$03 Call #R$E80B.
  $D31F,$03 #REGhl=#R$D556.
  $D322,$02 Test bit 6 of *#REGhl.
  $D324,$03 Call #R$EF66 if #REGa is not equal to 0.
  $D327,$03 #REGhl=#R$D556.
  $D32A,$02 Set bit 0 of *#REGhl.
  $D32C,$01 Restore #REGbc from the stack.
  $D32D,$02 Test bit 3 of #REGb.
  $D32F,$02 Jump to #R$D350 if #REGa is equal to #N$00.
  $D331,$03 Call #R$D609.
  $D334,$03 #REGa=*#R$E568.
  $D337,$01 Decrease #REGa by one.
  $D338,$01 #REGb=#REGa.
  $D339,$03 #REGa=*#R$E569.
  $D33C,$01 Decrease #REGa by one.
  $D33D,$01 #REGc=#REGa.
  $D33E,$03 #REGde=#R$D587.
  $D341,$02 #REGa=#N$04.
  $D343,$04 #REGix=#R$D556.
  $D347,$04 Reset bit 1 of *#REGix+#N$00.
  $D34B,$03 Call #R$D939.
  $D34E,$02 Jump to #R$D36B.
  $D350,$04 #REGix=#R$D556.
  $D354,$04 Test bit 2 of *#REGix+#N$00.
  $D358,$02 Jump to #R$D399 if #REGa is equal to #N$04.
  $D35A,$07 Write #N($0510,$04,$04) to *#R$D5AA.
  $D361,$07 Write #N($0AB0,$04,$04) to *#R$D5AC.
  $D368,$03 Call #R$D609.
  $D36B,$02 #REGa=#N$05.
  $D36D,$02 #REGc=#N$82.
  $D36F,$01 Stash #REGbc on the stack.
  $D370,$02 #REGd=#N$05.
  $D372,$02 Set border to the colour held by #REGa.
  $D374,$02,b$01 Flip bit 4.
  $D376,$01 #REGe=#REGc.
  $D377,$01 Decrease #REGe by one.
  $D378,$02 Jump to #R$D377 if #REGe is not equal to #N$05.
  $D37A,$01 Decrease #REGd by one.
  $D37B,$02 Jump to #R$D372 if #REGd is not equal to #N$05.
  $D37D,$01 Decrease #REGc by one.
  $D37E,$02 Jump to #R$D370 if #REGc is not equal to #N$05.
  $D380,$01 Restore #REGbc from the stack.
  $D381,$02 #REGd=#N$05.
  $D383,$02 #REGa=#N$05.
  $D385,$02 Set border to the colour held by #REGa.
  $D387,$02,b$01 Flip bit 4.
  $D389,$01 #REGe=#REGc.
  $D38A,$01 Decrease #REGe by one.
  $D38B,$02 Jump to #R$D38A if #REGe is not equal to #N$05.
  $D38D,$01 Decrease #REGd by one.
  $D38E,$02 Jump to #R$D385 if #REGd is not equal to #N$05.
  $D390,$01 Increment #REGc by one.
  $D391,$02 #REGa=#N$82.
  $D393,$01 Compare #REGa with #REGc.
  $D394,$02 Jump to #R$D381 if #REGa is not equal to #REGc.
  $D396,$03 Call #R$D8CA.
  $D399,$04 #REGix=#R$D556.
  $D39D,$04 Test bit 3 of *#REGix+#N$00.
  $D3A1,$03 Jump to #R$D431 if #REGa is equal to #REGc.
  $D3A4,$03 Call #R$E7E5.
  $D3A7,$03 Call #R$E580.
  $D3AA,$06 Write *#R$D54A to *#R$E568.
  $D3B0,$06 Write *#R$D54B to *#R$E569.
  $D3B6,$07 Jump to #R$D3E2 if *#R$D550 is not equal to #N$09.
  $D3BD,$03 #REGa=*#R$E568.
  $D3C0,$03 Write #REGa to *#R$E56D.
  $D3C3,$01 Increment #REGa by one.
  $D3C4,$03 Write #REGa to *#R$E56E.
  $D3C7,$03 #REGa=*#R$E569.
  $D3CA,$03 Write #REGa to *#R$E56F.
  $D3CD,$01 Increment #REGa by one.
  $D3CE,$03 Write #REGa to *#R$E570.
  $D3D1,$03 Call #R$E7E5.
  $D3D4,$02 #REGa=#N$2F.
  $D3D6,$03 Call #R$E48D.
  $D3D9,$03 Call #R$E7B0.
  $D3DC,$01 Halt operation (suspend CPU until the next interrupt).
  $D3DD,$03 Call #R$E5D7.
  $D3E0,$02 Jump to #R$D3EB.
  $D3E2,$03 Call #R$E463.
  $D3E5,$03 Call #R$E7E5.
  $D3E8,$03 Call #R$E580.
  $D3EB,$03 #REGhl=#R$D521.
  $D3EE,$02 #REGb=#N$08.
  $D3F0,$01 Disable interrupts.
  $D3F1,$03 Call #R$EB8C.
  $D3F4,$01 Enable interrupts.

c $D3F5 Start Game
@ $D3F5 label=StartGame
N $D3F5 The game always starts with the cursor inside the home box.
N $D3F5 This is position #N$02/ #N$02:
. #PUSHS #SIM(start=$D1E1,stop=$D1E7)#POKES$D54A,$02;$D54B,$02
. #UDGTABLE { #SIM(start=$E3EF,stop=$E449)#SCR$01(demo-cursor-02-02) }
. UDGTABLE# #POPS
  $D3F5,$0E Write #N$02 to: #LIST { *#R$D54C } { *#R$D54D } { *#R$D54A } { *#R$D54B } LIST#
  $D403,$05 Write #N$09 to *#R$D550.
  $D408,$03 #REGhl=#R$D543.
  $D40B,$01 Decrease *#REGhl by one.
  $D40C,$03 Jump to #R$D462 until *#REGhl is equal to #N$00.
  $D40F,$03 #REGhl=#R$D556.
  $D412,$02 Write #N$00 to *#REGhl.
  $D414,$03 Call #R$EF3B.
  $D417,$03 #REGhl=*#R$D58E.
  $D41A,$02 Write #COLOUR$2D to *#REGhl.
  $D41C,$01 Increment #REGhl by one.
  $D41D,$02 Write #COLOUR$2D to *#REGhl.
  $D41F,$01 Increment #REGhl by one.
  $D420,$03 Write #REGhl to *#R$D58E.
  $D423,$04 #REGhl+=#N($001E,$04,$04).
  $D427,$02 Write #COLOUR$2D to *#REGhl.
  $D429,$01 Increment #REGhl by one.
  $D42A,$02 Write #COLOUR$2D to *#REGhl.
  $D42C,$03 #REGhl=#R$D556.
  $D42F,$02 Set bit 0 of *#REGhl.
  $D431,$03 #REGa=*#R$D556.
  $D434,$02,b$01 Keep only bits 0, 4-7.
  $D436,$03 Write #REGa to *#R$D556.
  $D439,$06 Write *#R$D54C to *#R$D548.
  $D43F,$06 Write *#R$D54Dto *#R$D549.
  $D445,$06 Write *#R$D540to *#R$D54E.
  $D44B,$07 Jump to #R$D45C if *#R$D551 is not equal to #N$00.
  $D452,$07 Jump to #R$D45C if *#R$D550 is equal to #N$09.
  $D459,$03 Call #R$E46C.
  $D45C,$03 Call #R$D789.
  $D45F,$03 Jump to #R$D2DE.

  $D462,$03 #REGhl=#R$D555.
  $D465,$02 Set bit 7 of *#REGhl.
  $D467,$02 #REGb=#N$4B.
  $D469,$01 Halt operation (suspend CPU until the next interrupt).
  $D46A,$02 Decrease counter by one and loop back to #R$D469 until counter is zero.
  $D46C,$01 Disable interrupts.
  $D46D,$03 Call #R$E901.
  $D470,$03 #REGbc=#N($0000,$04,$04).
  $D473,$01 Decrease #REGbc by one.
  $D474,$04 Jump to #R$D473 until #REGbc is equal to #N$00.
  $D478,$02 Restore #REGiy from the stack.
  $D47A,$03 Jump to #R$D1C3.

b $D47D

b $D4AE Data: Level 01
@ $D4AE label=Data_Level_01
  $D4AE,$01 Length of data.
  $D4AF,$16 Data.
  $D4C5,$12 Timer states.
W $D4D7,$02 Graphics data pointer.

g $D521

g $D531
B $D531,$12,$01

g $D543 Lives
@ $D543 label=Lives
B $D543,$01

g $D544

g $D548
  $D548
  $D549
  $D54A
  $D54B
  $D54C
  $D54D
  $D54E
  $D54F

g $D550
  $D550
  $D551

g $D555
  $D555
  $D556
  $D55B

g $D56F
W $D56F,$02
W $D571,$02
W $D573,$02
W $D575,$02

g $D57B

g $D589

g $D587

g $D58A Level
@ $D58A label=Level
B $D58A,$01

g $D58B

g $D58E
W $D58E,$02

g $D590
  $D591
  $D595

g $D5AA
W $D5AA,$02

g $D5AC
W $D5AC,$02

g $D5AE Pointer Level Graphics Data
@ $D5AE label=LevelGraphicsData
D $D5AE Will point to one of:
. #TABLE(default,centre,centre)
. { =h Address | =h Level }
. { #R$9470 | Level 01 }
. TABLE#
W $D5AE,$02

g $D5B0
W $D5B0,$02

c $D5B2 Unpack Screen Data
@ $D5B2 label=UnpackScreenData
R $D5B2 HL Pointer to image data
N $D5B2 Start by clearing the screen and attribute buffers.
  $D5B2,$01 Stash the pointer to the image data on the stack temporarily.
  $D5B3,$03 #REGhl=#R$5800(#N$5800) (attribute buffer location).
  $D5B6,$03 #REGde=#N$5801.
  $D5B9,$02 Write #N$00 to *#REGhl.
  $D5BB,$05 Copy #N$00 to #N$02FF more bytes, filling the whole of the
. attribute buffer.
  $D5C0,$01 Restore the pointer to the image data from the stack.
  $D5C1,$03 Initialise the target screen buffer location (#R$4000(#N$4000)) in #REGde.
N $D5C4 The main loop
@ $D5C4 label=UnpackScreenData_Loop
  $D5C4,$05 Jump to #R$D5CE if *#REGhl is equal to #N$00.
  $D5C9,$01 Write #REGa to *#REGde.
  $D5CA,$01 Increment #REGhl by one.
  $D5CB,$01 Increment #REGde by one.
  $D5CC,$02 Jump to #R$D5C4.
N $D5CE Handle multiple zeroes.
@ $D5CE label=Handler_Zeroes
  $D5CE,$01 Move the pointer to the length byte.
  $D5CF,$01 Load the length into #REGa.
  $D5D0,$04 Jump to #R$D5DD if *#REGa is equal to #N$00.
  $D5D4,$01 Store the length in #REGb.
  $D5D5,$01 Set #REGa to #N$00 the value to write.
N $D5D6 Write the zeroes to the screen buffer.
@ $D5D6 label=Write_Zeroes
  $D5D6,$01 Write #N$00 to the screen buffer location held by *#REGde.
  $D5D7,$01 Increment the screen buffer pointer by one.
  $D5D8,$02 Decrease counter by one and loop back to #R$D5D6 until counter is zero.
  $D5DA,$01 Increment #REGhl by one.
  $D5DB,$02 Jump to #R$D5C4.
N $D5DD Process attributes.
@ $D5DD label=Handler_Attributes
  $D5DD,$01 Increment #REGhl by one.
  $D5DE,$03 #REGix=#REGhl (using the stack).
  $D5E1,$03 #REGhl=#R$5800(#N$5800) (attribute buffer location).
  $D5E4,$02 Initialise #REGb to #N$18 (number of character rows).
@ $D5E6 label=Handler_Attributes_Loop
  $D5E6,$02 Stash the row counter and attribute buffer pointer on the stack.
  $D5E8,$02 Initialise the column counter in #REGa to #N$00.
N $D5EA Process the attribute bytes in a row.
@ $D5EA label=UnpackScreenData_ProcessAttributesRow
  $D5EA,$05 #REGc=attribute value.
  $D5EF,$05 #REGb=run length.
  $D5F4,$01 #REGa=run length plus the column counter.
N $D5F5 Write the run of attributes.
@ $D5F5 label=UnpackScreenData_WriteAttributes_Loop
  $D5F5,$01 Write attribute byte to the attribute buffer.
  $D5F6,$01 Increment the attribute pointer by one.
  $D5F7,$02 Decrease the length counter by one and loop back to #R$D5F5 until
. counter is zero.
  $D5F9,$04 Jump to #R$D5EA if #REGa is not equal to #N$20.
  $D5FD,$01 Restore the start of the row into #REGhl from the stack.
  $D5FE,$04 Move #REGhl #N($0020,$04,$04) bytes to point to the next row.
  $D602,$01 Restore the row counter from the stack.
  $D603,$02 Decrease the row counter by one and loop back to #R$D5E6 until all
. the rows have been processed.
  $D605,$03 #REGbc=current position in attribute data (using the stack).
  $D608,$01 Return.

c $D609

c $D682

c $D789

c $D7A6

c $D7C9

c $D816

b $D820
  $D82A

c $D847

c $D890

c $D89A

c $D8BC

c $DACD Calculate Screen Block Address
@ $DACD label=Calculate_ScreenBlockAddress
R $DACD B X co-ordinate
R $DACD C Y co-ordinate
R $DACD O:HL Screen buffer address pointer
  $DACD,$01 Load the X position into #REGa.
  $DACE,$02,b$01 Divide X by #N$08 to extract only the column number.
  $DAD0,$03 Add #N$40 to get the high byte of screen address and store the result in #REGh.
  $DAD3,$01 Load the X position into #REGa again.
  $DAD4,$02,b$01 Extract only the pixel offset within the character block.
  $DAD6,$03 Multiply #REGa by #N$20.
  $DAD9,$02 Add the Y co-ordinate store the result in #REGl.
  $DADB,$01 Return.

c $DADC Calculate Attribute Address
@ $DADC label=Calculate_AttributeAddress
R $DADC HL Screen buffer address
R $DADC O:DE Attribute buffer address
  $DADC,$01 #REGa=high byte of the screen address.
N $DADD Isolate the screen third area.
  $DADD,$03 Move the relevant bits to positions 0-1.
  $DAE0,$02,b$01 Keep only those bits.
N $DAE2 This sets #N$58 on top of the result, which is the base address for the
. attribute buffer. Will result in either: #N$58#RAW(,) #N$59 or #N$5A.
  $DAE2,$02,b$01 Set bits 3-4 and 6.
  $DAE4,$01 Store the result in #REGd, this is the high byte of the attribute
. buffer address.
  $DAE5,$01 #REGe=low byte of the screen address.
  $DAE6,$01 Return.

c $DAE7

c $DB7E Print Helper Preview Image
@ $DB7E label=Print_HelperPreviewImage
N $DB7E Takes the generated image at #R$A0E3, and creates a preview image from
. it.
N $DB7E #PUSHS #UDGTABLE(default,centre)
. #SIM(start=$D1E1,stop=$D1E7,sp=$FFFA)
. { =h Level #N$01 }
. #SIM(start=$D2DA,stop=$D2DD,ix=$9470,sp=$FFFA)
. { #SIM(start=$D219,stop=$D21F)#SCR$02{$160,$20,$A0,$A0}(helper-image-1) }
. UDGTABLE#
  $DB7E,$02 Set the initial X co-ordinate in #REGb.
  $DB80,$02 Set the initial Y co-ordinate in #REGc.
  $DB82,$01 Stash the co-ordinates on the stack.
  $DB83,$03 Call #R$DACD.
  $DB86,$02 Set a counter in #REGb for #N$08.
  $DB88,$01 Stash the counter on the stack.
  $DB89,$02 Set a counter in #REGb for #N$0A.
  $DB8B,$01 Stash the screen buffer address pointer on the stack.
  $DB8C,$02 Write #N$00 to *#REGhl.
  $DB8E,$01 Increment the screen buffer address pointer by one.
  $DB8F,$02 Decrease the counter by one and loop back to #R$DB8C until the counter is zero.
  $DB91,$01 Restore the original screen buffer address from the stack.
  $DB92,$01 Move down one line.
  $DB93,$01 Restore the counter from the stack.
  $DB94,$02 Decrease the counter by one and loop back to #R$DB88 until the counter is zero.
  $DB96,$01 Restore the original co-ordinates from the stack.
  $DB97,$01 Increment #REGb by one.
  $DB98,$05 Jump to #R$DB82 if #REGb is not equal to #N$0C.
  $DB9D,$05 Write #N$B0 to *#R$DB7A.
  $DBA2,$05 Write #N$20 to *#R$DB7B.
  $DBA7,$06 Write #R$A0E3 to *#R$DB7C.
  $DBAD,$02 #REGb=#N$40.
  $DBAF,$01 Stash #REGbc on the stack.
  $DBB0,$04 #REGh=*#R$DB7A.
  $DBB4,$04 #REGl=*#R$DB7B.
  $DBB8,$03 Call #R$DC5C.
  $DBBB,$03 Load the screen buffer address into #REGix (using the stack).
  $DBBE,$02 Set a counter in #REGb for #N$02.
  $DBC0,$03 Stash the counter and the screen buffer address on the stack.
  $DBC3,$03 #REGhl=*#R$DB7C.
  $DBC6,$02 #REGb=#N$0A.
  $DBC8,$01 #REGa=#N$00.
  $DBC9,$01 #REGd=*#REGhl.
  $DBCA,$01 Increment #REGhl by one.
  $DBCB,$01 #REGe=*#REGhl.
  $DBCC,$01 Increment #REGhl by one.
  $DBCD,$03 Call #R$DBEB.
  $DBD0,$03 #REGd=*#REGix+#N$00.
  $DBD3,$01 Set the bits from #REGd.
  $DBD4,$03 Write #REGa to *#REGix+#N$00.
  $DBD7,$02 Increment #REGix by one.
  $DBD9,$02 Decrease counter by one and loop back to #R$DBC8 until counter is zero.
  $DBDB,$02 Restore #REGix from the stack.
  $DBDD,$03 Write #REGhl to *#R$DB7C.
  $DBE0,$01 Restore #REGbc from the stack.
  $DBE1,$02 Decrease counter by one and loop back to #R$DBC0 until counter is zero.
  $DBE3,$03 #REGhl=#R$DB7B.
  $DBE6,$01 Increment *#REGhl by one.
  $DBE7,$01 Restore #REGbc from the stack.
  $DBE8,$02 Decrease counter by one and loop back to #R$DBAF until counter is zero.
  $DBEA,$01 Return.
N $DBEB Magic.
  $DBEB,$02 Rotate #REGd left (through the carry flag).
  $DBED,$03 Jump to #R$DBF2 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DBF0,$02,b$01 Set bit 7.
  $DBF2,$02 Rotate #REGd left (through the carry flag).
  $DBF4,$03 Jump to #R$DBF9 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DBF7,$02,b$01 Set bit 7.
  $DBF9,$02 Rotate #REGd left (through the carry flag).
  $DBFB,$03 Jump to #R$DC00 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DBFE,$02,b$01 Set bit 6.
  $DC00,$02 Rotate #REGd left (through the carry flag).
  $DC02,$03 Jump to #R$DC07 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC05,$02,b$01 Set bit 6.
  $DC07,$02 Rotate #REGd left (through the carry flag).
  $DC09,$03 Jump to #R$DC0E if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC0C,$02,b$01 Set bit 5.
  $DC0E,$02 Rotate #REGd left (through the carry flag).
  $DC10,$03 Jump to #R$DC15 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC13,$02,b$01 Set bit 5.
  $DC15,$02 Rotate #REGd left (through the carry flag).
  $DC17,$03 Jump to #R$DC1C if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC1A,$02,b$01 Set bit 4.
  $DC1C,$02 Rotate #REGd left (through the carry flag).
  $DC1E,$03 Jump to #R$DC23 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC21,$02,b$01 Set bit 4.
  $DC23,$02 Rotate #REGe left (through the carry flag).
  $DC25,$03 Jump to #R$DC2A if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC28,$02,b$01 Set bit 3.
  $DC2A,$02 Rotate #REGe left (through the carry flag).
  $DC2C,$03 Jump to #R$DC31 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC2F,$02,b$01 Set bit 3.
  $DC31,$02 Rotate #REGe left (through the carry flag).
  $DC33,$03 Jump to #R$DC38 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC36,$02,b$01 Set bit 2.
  $DC38,$02 Rotate #REGe left (through the carry flag).
  $DC3A,$03 Jump to #R$DC3F if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC3D,$02,b$01 Set bit 2.
  $DC3F,$02 Rotate #REGe left (through the carry flag).
  $DC41,$03 Jump to #R$DC46 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC44,$02,b$01 Set bit 1.
  $DC46,$02 Rotate #REGe left (through the carry flag).
  $DC48,$03 Jump to #R$DC4D if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC4B,$02,b$01 Set bit 1.
  $DC4D,$02 Rotate #REGe left (through the carry flag).
  $DC4F,$03 Jump to #R$DC54 if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC52,$02,b$01 Set bit 0.
  $DC54,$02 Rotate #REGe left (through the carry flag).
  $DC56,$03 Jump to #R$DC5B if the carry flag isn't set (if the leftmost bit
. was 0).
  $DC59,$02,b$01 Set bit 0.
  $DC5B,$01 Return.

c $DC5C

c $DC74

b $DD63

c $DDB3

b $DDFA

c $DE0F Generate Picture
@ $DE0F label=GeneratePicture
R $DE0F IX Pointer to level graphics data
N $DE0F #REGix will point to one of:
. #TABLE(default,centre,centre)
. { =h Address | =h Level }
. { #R$9470 | Level 01 }
. TABLE#
  $DE0F,$03 #REGhl=#R$A0E3.
N $DE12 Clear down the buffer ready for the new image to be generated.
  $DE12,$03 #REGbc=#N($0B40,$04,$04).
  $DE15,$02 Write #N$00 to *#REGhl.
  $DE17,$03 #REGde=#R$A0E3+#N$01 (using the stack).
  $DE1A,$02 Clear #N($0B40,$04,$04) bytes of data in #R$A0E3.
  $DE1C,$05 Write #N$80 to *#R$DEE9.


N $DEBB Has all the image been decompressed now? If not, loop back again.
@ $DEBB label=GeneratePicture_Next
  $DEBB,$03 #REGhl=#R$DEE9.
  $DEBE,$01 Decrease *#REGhl by one.
  $DEBF,$03 Jump to #R$DE21 until *#REGhl is zero.
  $DEC2,$02 Move #REGix to the start of the attribute data.
  $DEC4,$02 Set a counter in #REGb to process #N$10 rows of attribute data.
  $DEC6,$03 Store the start of #R$AAE3 in #REGhl.
@ $DEC9 label=GeneratePicture_Attributes_Loop
  $DEC9,$02 Stash the attribute row counter and the image attributes buffer
. pointer on the stack.
  $DECB,$02 Initialise the column counter in #REGa.
@ $DECD label=GeneratePicture_Attribute_Row
  $DECD,$03 Load the attribute value into #REGc.
  $DED0,$05 Load the repeat length into #REGb.
  $DED5,$02 Move #REGix to the next attribute/ repeat length pair.
  $DED7,$01 Add the repeat length to the column counter.
@ $DED8 label=GeneratePicture_Attribute_Run
  $DED8,$01 Write the attribute to the image attributes buffer.
  $DED9,$01 Increment the image attributes buffer pointer by one.
  $DEDA,$02 Decrease the repeat counter by one and loop back to #R$DED8 until counter is zero.
  $DEDC,$04 Jump to #R$DECD if #N$14 columns have been processed.
  $DEE0,$01 Restore the start of the current attribute row from the stack.
  $DEE1,$04 Move #REGhl to the next row in the attribute buffer.
  $DEE5,$01 Restore the attribute row counter from the stack.
  $DEE6,$02 Decrease the attribute row counter by one and loop back to #R$E0BE
. until counter is zero.
  $DEE8,$01 Return.
N $DEE9 Variables specifically for this routine.
@ $DEE9 label=Line_Counter
B $DEE9,$01
@ $DEEA label=Operation_Code
B $DEEA,$01
@ $DEEB label=Buffer_Position
W $DEEB,$02

c $DEED

g $E3DB Saved Attributes Block For Cursor
@ $E3DB label=SavedAttributesBlock
D $E3DB Saves the attributes before painting the players cursor, this allows it
. to more easily be "undrawn".
.
. Used by the routines at #R$E3EF and #R$E44A.
B $E3DB,$10,$04

g $E3EB Cursor Attribute Position
@ $E3EB label=Cursor_AttributePosition_Y
@ $E3EC label=Cursor_AttributePosition_X
B $E3EB,$02,$01

g $E3ED Cursor Attribute Buffer Pointer
@ $E3ED label=Cursor_AttributePointer
W $E3ED,$02

c $E3EF Draw Cursor
@ $E3EF label=Draw_Cursor
N $E3EF #PUSHS #SIM(start=$D1E1,stop=$D1E7)#POKES$D54A,$06;$D54B,$06
. #UDGTABLE { #SIM(start=$E3EF,stop=$E449)#SCR$02{$50,$50,$40,$40}(demo-game-cursor) }
. UDGTABLE# #POPS
  $E3EF,$05 #REGb=*#R$D54A-#N$01.
  $E3F4,$03 Write #REGb to *#R$E3EB.
  $E3F7,$05 #REGc=*#R$D54B-#N$01.
  $E3FC,$03 Write #REGc to *#R$E3EC.
  $E3FF,$03 Call #R$DACD.
  $E402,$03 Call #R$DADC.
  $E405,$04 Write the calculated attribute buffer address to *#R$E3ED.
  $E409,$02 #REGb=#N$04.
  $E40B,$03 #REGhl=#R$E3DB.
  $E40E,$01 Exchange the #REGde and #REGhl registers.
  $E40F,$01 Stash #REGbc on the stack.
  $E410,$05 Copy #N($0004,$04,$04) bytes from *#REGhl to *#REGde.
  $E415,$04 #REGhl+=#N($001C,$04,$04).
  $E419,$01 Restore #REGbc from the stack.
  $E41A,$02 Decrease counter by one and loop back to #R$E40F until counter is zero.
N $E41C Paint the top section of the cursor.
  $E41C,$0C Copy #N($0004,$04,$04) bytes from #R$E4BA to *#R$E3ED.
N $E428 Paint the middle section of the cursor.
  $E428,$02 #REGb=#N$02.
@ $E42A label=Draw_Cursor_Loop
  $E42A,$01 Stash #REGbc on the stack.
  $E42B,$01 Exchange the #REGde and #REGhl registers.
  $E42C,$04 #REGhl+=#N($001C,$04,$04).
  $E430,$01 Exchange the #REGde and #REGhl registers.
  $E431,$02 Write *#REGhl to *#REGde.
  $E433,$01 Increment #REGhl by one.
  $E434,$03 Increment #REGde by three.
  $E437,$02 Write *#REGhl to *#REGde.
  $E439,$01 Increment #REGhl by one.
  $E43A,$01 Increment #REGde by one.
  $E43B,$01 Restore #REGbc from the stack.
  $E43C,$02 Decrease counter by one and loop back to #R$E42A until counter is zero.
  $E43E,$01 Exchange the #REGde and #REGhl registers.
  $E43F,$04 #REGhl+=#N($001C,$04,$04).
  $E443,$01 Exchange the #REGde and #REGhl registers.
N $E444 Paint the bottom section of the cursor.
  $E444,$05 Copy #N($0004,$04,$04) bytes from *#REGhl to *#REGde.
  $E449,$01 Return.

c $E44A Remove Player Cursor Attributes
@ $E44A label=Remove_PlayerCursorAttributes
N $E44A Less "remove" and more "replace"; this routine erases the players
. cursor attributes, but it doesn't leave a hole - it replaces the attributes
. with the values they were prior to it being originally drawn.
N $E44A This is the 4x4 block of attributes which were behind the cursor before
. it was initially painted.
  $E44A,$03 Load #REGhl with #R$E3DB.
N $E44D This is a pointer to the starting attribute buffer location of the
. players cursor.
  $E44D,$04 Load #REGde with *#R$E3ED.
N $E451 The cursor block is #N$04x#N$04 (#N$04 rows of #N$04 bytes).
  $E451,$02 Set a counter in #REGb for #N$04 rows.
@ $E453 label=Remove_PlayerCursorAttributes_Loop
  $E453,$01 Stash the row counter on the stack.
  $E454,$05 Copy #N($0004,$04,$04) bytes from the stored attributes to the
. attribute buffer.
N $E459 One full row is #N$20 bytes, so this is #N$04 bytes less than one row.
. Hence this moves down one row, but back to the start of the line.
  $E459,$06 Add #N($001C,$04,$04) to the attribute buffer position.
  $E45F,$01 Restore the row counter from the stack.
  $E460,$02 Decrease the row counter by one and loop back to #R$E453 until
. all the rows have been updated.
  $E462,$01 Return.

c $E463 Remove Player Cursor
@ $E463 label=Remove_PlayerCursor
  $E463,$05 Set *#R$D551 to OFF (#N$00).
  $E468,$03 Call #R$E44A.
  $E46B,$01 Return.

c $E46C Display Player Cursor
@ $E46C label=Display_PlayerCursor
  $E46C,$03 Call #R$E3EF.
  $E46F,$05 Set *#R$D551 to ON (#N$01).
  $E474,$01 Return.

c $E475 Set Home To Default Attributes
@ $E475 label=Home_DefaultAttributes
  $E475,$03 #REGde=#N$5822 (attribute buffer location).
  $E478,$03 #REGhl=#R$E4AE.
N $E47B The home block is #N$04x#N$04 (#N$04 rows of #N$04 bytes) but not all
. of it cycles attributes. Only #N$03x#N$04 is used here.
  $E47B,$02 Set a counter in #REGb for #N$04 rows.
@ $E47D label=Home_DefaultAttributes_Loop
  $E47D,$01 Stash the row counter on the stack.
  $E47E,$05 Copy #N($0003,$04,$04) bytes from the attribute buffer to #R$E4AE.
N $E483 One full row is #N$20 bytes, so this is #N$03 bytes less than one row.
. Hence this moves down one row, but back to the start of the line.
  $E483,$06 Add #N($001D,$04,$04) to the attribute buffer position.
  $E489,$01 Restore the row counter from the stack.
  $E48A,$02 Decrease the row counter by one and loop back to #R$E47D until all
. the rows have been updated.
  $E48C,$01 Return.

c $E48D Colourise Home
@ $E48D label=ColouriseHome

g $E4AE Home Attributes
@ $E4AE label=HomeAttributes
D $E4AE Used by the routine at #R$E475.
B $E4AE,$03 Top line.
B $E4B1,$03 Middle line (upper).
B $E4B4,$03 Middle line (lower).
B $E4B7,$03 Bottom line.

g $E4BA Cursor Attributes
@ $E4BA label=CursorAttributes
D $E4BA Used by the routine at #R$E5E4.
B $E4BA,$04 Top line.
B $E4BE,$04,$02 Left/ right middle.
B $E4C2,$04 Bottom line.

c $E4D3

g $E568
g $E569
g $E56E
g $E56D
g $E56F
g $E570

c $E580

c $E7B0
  $E7B0,$03 #REGl=the contents of the Memory Refresh Register.
  $E7B3,$02 #REGh=#N$01.
  $E7B5,$02 #REGb=#N$64.
  $E7B7,$01 #REGa=*#REGhl.
  $E7B8,$02,b$01 Keep only bits 3-4.
  $E7BA,$02,b$01 Set bits 0, 2.
  $E7BC,$02 Set border to the colour held by #REGa.
  $E7BE,$01 Increment #REGhl by one.
  $E7BF,$02 #REGa=the contents of the Memory Refresh Register.
  $E7C1,$01 Increment #REGa by one.
  $E7C2,$01 RLCA.
  $E7C3,$01 #REGe=#REGa.
  $E7C4,$01 Decrease #REGe by one.
  $E7C5,$02 Jump to #R$E7C4 until #REGe is equal to #N$00.
  $E7C7,$02 Decrease counter by one and loop back to #R$E7B7 until counter is zero.
  $E7C9,$01 Return.

c $E7CA
  $E7CA,$03 #REGhl=#R$D543.
  $E7CD,$01 Increment *#REGhl by one.
  $E7CE,$03 #REGhl=*#R$D58E.
  $E7D1,$02 Decrease #REGhl by two.
  $E7D3,$03 Write #REGhl to *#R$D58E.
  $E7D6,$02 Write #COLOUR$28 to *#REGhl.
  $E7D8,$01 Increment #REGhl by one.
  $E7D9,$02 Write #COLOUR$28 to *#REGhl.
  $E7DB,$04 #REGhl+=#N($001F,$04,$04).
  $E7DF,$02 Write #COLOUR$28 to *#REGhl.
  $E7E1,$01 Increment #REGhl by one.
  $E7E2,$02 Write #COLOUR$28 to *#REGhl.
  $E7E4,$01 Return.

c $E7E5
  $E7E5,$02 #REGa=the contents of the Memory Refresh Register.
  $E7E7,$01 Stash #REGaf on the stack.
  $E7E8,$01 Disable interrupts.
  $E7E9,$02 #REGb=#N$02.
  $E7EB,$01 Stash #REGbc on the stack.
  $E7EC,$03 #REGbc=#N($1388,$04,$04).
  $E7EF,$01 Decrease #REGbc by one.
  $E7F0,$04 Jump to #R$E7EF until #REGbc is equal to #N$00.
  $E7F4,$03 #REGhl=#N$5800 (screen buffer location).
  $E7F7,$03 #REGbc=#N($0300,$04,$04).
  $E7FA,$01 #REGa=*#REGhl.
  $E7FB,$02,b$01 Flip bits 0-6.
  $E7FD,$01 Write #REGa to *#REGhl.
  $E7FE,$01 Increment #REGhl by one.
  $E7FF,$01 Decrease #REGbc by one.
  $E800,$04 Jump to #R$E7FA until #REGbc is equal to #N$00.
  $E804,$01 Restore #REGbc from the stack.
  $E805,$02 Decrease counter by one and loop back to #R$E7EB until counter is zero.
  $E807,$01 Restore #REGaf from the stack.
  $E808,$01 Return if #REGbc has odd parity (P flag is reset).
  $E809,$01 Enable interrupts.
  $E80A,$01 Return.

c $E80B
  $E80B,$02 #REGb=#N$11.
  $E80D,$02 #REGc=#N$18.
  $E80F,$03 #REGde=#R$D55B.
  $E812,$02 #REGa=#N$06.
  $E814,$04 #REGix=#R$D556.
  $E818,$04 Reset bit 1 of *#REGix+#N$00.
  $E81C,$03 Jump to #R$D939.

c $E81F
  $E81F,$02 #REGb=#N$13.
  $E821,$02 #REGc=#N$18.
  $E823,$03 Call #R$DACD.
  $E826,$04 Increment #REGh by four.
  $E82A,$03 #REGde=#R$D590.
  $E82D,$04 #REGix=#R$D556.
  $E831,$04 Set bit 1 of *#REGix+#N$00.
  $E835,$02 #REGb=#N$03.
  $E837,$03 Jump to #R$D940.

c $E83A
  $E83A,$02 #REGb=#N$0E.
  $E83C,$02 #REGc=#N$1C.
  $E83E,$03 Call #R$DACD.
  $E841,$04 Increment #REGh by four.
  $E845,$03 #REGde=#R$D58A.
  $E848,$04 #REGix=#R$D556.
  $E84C,$04 Set bit 1 of *#REGix+#N$00.
  $E850,$02 #REGb=#N$01.
  $E852,$03 Jump to #R$D940.

g $E855
B $E855,$04,$01

c $E859
  $E859,$02 Stash #REGde and #REGhl on the stack.
  $E85B,$03 #REGhl=*#R$D5B0.
  $E85E,$05 #REGhl-=#R$9470(#N$9470).
  $E863,$02 Jump to #R$E873 if #REGhl is equal to #N$00.
  $E865,$03 #REGhl=*#R$D5B0.
  $E868,$01 #REGa=*#REGhl.
  $E869,$01 Increment #REGhl by one.
  $E86A,$03 Write #REGhl to *#R$D5B0.
  $E86D,$03 Write #REGa to *#R$E3BD.
  $E870,$02 Restore #REGhl and #REGde from the stack.
  $E872,$01 Return.

  $E873,$04 #REGsp=*#R$D22E.
  $E877,$02 Interrupt mode #N$01.
  $E879,$01 Enable interrupts.
  $E87A,$01 Return.

c $E87B Colourise Preview Grid
@ $E87B label=Colourise_PreviewGrid
N $E87B This routine is identical to #R$EC39@main(Colourise_PreviewGrid) in the
. main game code.
N $E87B Colours in the green checkerboard attribute pattern. Note, it doesn't
. alter the top row at all - only the rows which will have content in them.
  $E87B,$02 Set a counter in #REGb for #N$04 rows.
  $E87D,$03 #REGde=#N$5896 (attribute buffer location).
  $E880,$03 #REGhl=#R$E8F1.
@ $E883 label=PreviewGrid_RowCounter_Loop
  $E883,$01 Stash the row counter on the stack.
  $E884,$02 Set a counter in #REGb for #N$02 character blocks per square.
@ $E886 label=PreviewGrid_BlockCounter_Loop
  $E886,$02 Stash the block counter and the attribute reference pointer on the stack.
  $E888,$05 Copy #N($000A,$04,$04) bytes from #REGhl to #REGde.
  $E88D,$05 #REGde+=#N($0016,$04,$04).
  $E892,$02 Restore the attribute reference pointer and the block counter from the stack.
  $E894,$02 Decrease block counter by one and loop back to #R$E886 until the block counter is zero.
  $E896,$01 Restore the row counter from the stack.
N $E897 This is how it becomes checkered, we move the pointer forward by two
. (each block is two character blocks wide) and then it can alternate between
. the two attribute values. Although we copy #N$0A bytes - the data is actually
. #N$10 bytes long, to cope with this reference movement.
  $E897,$02 Increment the attribute reference pointer by two.
  $E899,$02 Decrease the row counter by one and loop back to #R$E883 until all
. the rows have been coloured in.
  $E89B,$01 Return.

c $E89C Static Animation
@ $E89C label=StaticAnimation
N $E89C #PUSHS #UDGTABLE { #SIM(start=$D1E1,stop=$D1E7)#SIM(start=$E89C,stop=$E8C5)#SCR$02(demo-static) } UDGTABLE# #POPS
  $E89C,$02 #REGb=#N$4B.
  $E89E,$01 Stash #REGbc on the stack.
  $E89F,$02 #REGb=#N$04.
  $E8A1,$02 #REGc=#N$16.
  $E8A3,$02 #REGa=the contents of the Memory Refresh Register.
  $E8A5,$02,b$01 Keep only bits 0-3.
  $E8A7,$01 #REGd=#REGa.
  $E8A8,$03 #REGe=the contents of the Memory Refresh Register.
  $E8AB,$01 Stash #REGbc on the stack.
  $E8AC,$03 Call #R$DACD.
  $E8AF,$01 Exchange the #REGde and #REGhl registers.
  $E8B0,$02 #REGb=#N$08.
  $E8B2,$02 Stash #REGbc and #REGde on the stack.
  $E8B4,$03 #REGbc=#N($000A,$04,$04).
  $E8B7,$02 LDIR.
  $E8B9,$01 Restore #REGde from the stack.
  $E8BA,$01 Increment #REGd by one.
  $E8BB,$01 Restore #REGbc from the stack.
  $E8BC,$02 Decrease counter by one and loop back to #R$E8B2 until counter is zero.
  $E8BE,$01 Restore #REGbc from the stack.
  $E8BF,$01 Increment #REGb by one.
  $E8C0,$05 Jump to #R$E8A3 if #REGb is not equal to #N$0C.
  $E8C5,$02 #REGh=#N$05.
  $E8C7,$03 #REGbc=#N($012C,$04,$04).
  $E8CA,$01 #REGa=*#REGhl.
  $E8CB,$02,b$01 Keep only bits 3-4.
  $E8CD,$02,b$01 Set bits 0, 2.
  $E8CF,$02 Set border to the colour held by #REGa.
  $E8D1,$01 Increment #REGhl by one.
  $E8D2,$01 Decrease #REGbc by one.
  $E8D3,$04 Jump to #R$E8CA until #REGbc is equal to #N$00.
  $E8D7,$01 Restore #REGbc from the stack.
  $E8D8,$02 Decrease counter by one and loop back to #R$E89E until counter is zero.
  $E8DA,$03 #REGhl=#N$5896 (attribute buffer location).
  $E8DD,$03 #REGde=#N($0020,$04,$04).
  $E8E0,$02 #REGb=#N$08.
  $E8E2,$02 Stash #REGhl and #REGbc on the stack.
  $E8E4,$02 #REGb=#N$0A.
  $E8E6,$02 Write #N$00 to *#REGhl.
  $E8E8,$01 Increment #REGhl by one.
  $E8E9,$02 Decrease counter by one and loop back to #R$E8E6 until counter is zero.
  $E8EB,$02 Restore #REGbc and #REGhl from the stack.
  $E8ED,$01 #REGhl+=#REGde.
  $E8EE,$02 Decrease counter by one and loop back to #R$E8E2 until counter is zero.
  $E8F0,$01 Return.

b $E8F1 Attribute Data: Preview Grid
@ $E8F1 label=AttributeData_PreviewGrid
D $E8F1 Used by the routine at #R$EC39.
  $E8F1,$01 #COLOUR(#PEEK(#PC)).
L $E8F1,$01,$10

c $E901

c $F47A

c $FDFD Alias: Interrupt Jump Dispatcher
@ $FDFD label=AliasInterruptRedirect
D $FDFD All generated interrupts jump here and then are redirected to #R$F47A.
  $FDFD,$03 Jump to #R$F47A.

b $FE00 Interrupt Low-Order Byte Jump Table
@ $FE00 label=InterruptLowOrderByteJumpTable
D $FE00 Used as the low-order byte when an interrupt is generated.
. The high-order byte is also #N$FD, meaning all interrupts jump to #R$FDFD.
.
. See #R$D1AA and #R$FDFD.
  $FE00,$0100
