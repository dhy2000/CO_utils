# Test R-Instructions
# lui, ori, sw + addu, subu, and, or, xor, nor
# addu
ori $8, $0, 0
ori $9, $0, 0
addu $10, $8, $9
sw $10, 0($0)
ori $8, $0, 0
ori $9, $0, 0x1
addu $10, $8, $9
sw $10, 4($0)
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xffff
addu $10, $8, $9
sw $10, 8($0)
ori $8, $0, 0
lui $9, 0x7fff
ori $9, $9, 0xffff
addu $10, $8, $9
sw $10, 12($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0
addu $10, $8, $9
sw $10, 16($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0x1
addu $10, $8, $9
sw $10, 20($0)
ori $8, $0, 0x1
ori $9, $0, 0x1
addu $10, $8, $9
sw $10, 24($0)
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xffff
addu $10, $8, $9
sw $10, 28($0)
ori $8, $0, 0x1
lui $9, 0x7fff
ori $9, $9, 0xffff
addu $10, $8, $9
sw $10, 32($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0
addu $10, $8, $9
sw $10, 36($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
addu $10, $8, $9
sw $10, 40($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xffff
addu $10, $8, $9
sw $10, 44($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
addu $10, $8, $9
sw $10, 48($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
addu $10, $8, $9
sw $10, 52($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
addu $10, $8, $9
sw $10, 56($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
addu $10, $8, $9
sw $10, 60($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
addu $10, $8, $9
sw $10, 64($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
addu $10, $8, $9
sw $10, 68($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0
addu $10, $8, $9
sw $10, 72($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0x1
addu $10, $8, $9
sw $10, 76($0)
lui $8, 0x8000
ori $8, $8, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
addu $10, $8, $9
sw $10, 80($0)
ori $8, $0, 0x4823
ori $9, $0, 0x29
addu $10, $8, $9
sw $10, 84($0)
ori $8, $0, 0x6784
lui $9, 0xffff
ori $9, $9, 0xe742
addu $10, $8, $9
sw $10, 88($0)
lui $8, 0xffff
ori $8, $8, 0xc294
lui $9, 0xffff
ori $9, $9, 0xb51f
addu $10, $8, $9
sw $10, 92($0)
# subu
ori $8, $0, 0
ori $9, $0, 0
subu $10, $8, $9
sw $10, 96($0)
ori $8, $0, 0
ori $9, $0, 0x1
subu $10, $8, $9
sw $10, 100($0)
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xffff
subu $10, $8, $9
sw $10, 104($0)
ori $8, $0, 0
lui $9, 0x7fff
ori $9, $9, 0xffff
subu $10, $8, $9
sw $10, 108($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0
subu $10, $8, $9
sw $10, 112($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0x1
subu $10, $8, $9
sw $10, 116($0)
ori $8, $0, 0x1
ori $9, $0, 0x1
subu $10, $8, $9
sw $10, 120($0)
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xffff
subu $10, $8, $9
sw $10, 124($0)
ori $8, $0, 0x1
lui $9, 0x7fff
ori $9, $9, 0xffff
subu $10, $8, $9
sw $10, 128($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0
subu $10, $8, $9
sw $10, 132($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
subu $10, $8, $9
sw $10, 136($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xffff
subu $10, $8, $9
sw $10, 140($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
subu $10, $8, $9
sw $10, 144($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
subu $10, $8, $9
sw $10, 148($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
subu $10, $8, $9
sw $10, 152($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
subu $10, $8, $9
sw $10, 156($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
subu $10, $8, $9
sw $10, 160($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
subu $10, $8, $9
sw $10, 164($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0
subu $10, $8, $9
sw $10, 168($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0x1
subu $10, $8, $9
sw $10, 172($0)
lui $8, 0x8000
ori $8, $8, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
subu $10, $8, $9
sw $10, 176($0)
ori $8, $0, 0x72ae
ori $9, $0, 0x2cd6
subu $10, $8, $9
sw $10, 180($0)
ori $8, $0, 0x5f90
lui $9, 0xffff
ori $9, $9, 0x96ae
subu $10, $8, $9
sw $10, 184($0)
lui $8, 0xffff
ori $8, $8, 0x920f
lui $9, 0xffff
ori $9, $9, 0xe9b7
subu $10, $8, $9
sw $10, 188($0)
# slt
ori $8, $0, 0
ori $9, $0, 0
slt $10, $8, $9
sw $10, 192($0)
ori $8, $0, 0
ori $9, $0, 0x1
slt $10, $8, $9
sw $10, 196($0)
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xffff
slt $10, $8, $9
sw $10, 200($0)
ori $8, $0, 0
lui $9, 0x7fff
ori $9, $9, 0xffff
slt $10, $8, $9
sw $10, 204($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0
slt $10, $8, $9
sw $10, 208($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0x1
slt $10, $8, $9
sw $10, 212($0)
ori $8, $0, 0x1
ori $9, $0, 0x1
slt $10, $8, $9
sw $10, 216($0)
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xffff
slt $10, $8, $9
sw $10, 220($0)
ori $8, $0, 0x1
lui $9, 0x7fff
ori $9, $9, 0xffff
slt $10, $8, $9
sw $10, 224($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0
slt $10, $8, $9
sw $10, 228($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
slt $10, $8, $9
sw $10, 232($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xffff
slt $10, $8, $9
sw $10, 236($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
slt $10, $8, $9
sw $10, 240($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
slt $10, $8, $9
sw $10, 244($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
slt $10, $8, $9
sw $10, 248($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
slt $10, $8, $9
sw $10, 252($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
slt $10, $8, $9
sw $10, 256($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
slt $10, $8, $9
sw $10, 260($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0
slt $10, $8, $9
sw $10, 264($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0x1
slt $10, $8, $9
sw $10, 268($0)
lui $8, 0x8000
ori $8, $8, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
slt $10, $8, $9
sw $10, 272($0)
ori $8, $0, 0x41bb
ori $9, $0, 0x5af1
slt $10, $8, $9
sw $10, 276($0)
ori $8, $0, 0x1eb
lui $9, 0xffff
ori $9, $9, 0xd917
slt $10, $8, $9
sw $10, 280($0)
lui $8, 0xffff
ori $8, $8, 0xd15a
lui $9, 0xffff
ori $9, $9, 0xf44d
slt $10, $8, $9
sw $10, 284($0)
# sltu
ori $8, $0, 0
ori $9, $0, 0
sltu $10, $8, $9
sw $10, 288($0)
ori $8, $0, 0
ori $9, $0, 0x1
sltu $10, $8, $9
sw $10, 292($0)
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xffff
sltu $10, $8, $9
sw $10, 296($0)
ori $8, $0, 0
lui $9, 0x7fff
ori $9, $9, 0xffff
sltu $10, $8, $9
sw $10, 300($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0
sltu $10, $8, $9
sw $10, 304($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0x1
sltu $10, $8, $9
sw $10, 308($0)
ori $8, $0, 0x1
ori $9, $0, 0x1
sltu $10, $8, $9
sw $10, 312($0)
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xffff
sltu $10, $8, $9
sw $10, 316($0)
ori $8, $0, 0x1
lui $9, 0x7fff
ori $9, $9, 0xffff
sltu $10, $8, $9
sw $10, 320($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0
sltu $10, $8, $9
sw $10, 324($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
sltu $10, $8, $9
sw $10, 328($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xffff
sltu $10, $8, $9
sw $10, 332($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
sltu $10, $8, $9
sw $10, 336($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
sltu $10, $8, $9
sw $10, 340($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
sltu $10, $8, $9
sw $10, 344($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
sltu $10, $8, $9
sw $10, 348($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
sltu $10, $8, $9
sw $10, 352($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
sltu $10, $8, $9
sw $10, 356($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0
sltu $10, $8, $9
sw $10, 360($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0x1
sltu $10, $8, $9
sw $10, 364($0)
lui $8, 0x8000
ori $8, $8, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
sltu $10, $8, $9
sw $10, 368($0)
ori $8, $0, 0x153c
ori $9, $0, 0x12db
sltu $10, $8, $9
sw $10, 372($0)
ori $8, $0, 0x390c
lui $9, 0xffff
ori $9, $9, 0x8179
sltu $10, $8, $9
sw $10, 376($0)
lui $8, 0xffff
ori $8, $8, 0xff67
lui $9, 0xffff
ori $9, $9, 0xf0c2
sltu $10, $8, $9
sw $10, 380($0)
# and
ori $8, $0, 0
ori $9, $0, 0
and $10, $8, $9
sw $10, 384($0)
ori $8, $0, 0
ori $9, $0, 0x1
and $10, $8, $9
sw $10, 388($0)
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xffff
and $10, $8, $9
sw $10, 392($0)
ori $8, $0, 0
lui $9, 0x7fff
ori $9, $9, 0xffff
and $10, $8, $9
sw $10, 396($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0
and $10, $8, $9
sw $10, 400($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0x1
and $10, $8, $9
sw $10, 404($0)
ori $8, $0, 0x1
ori $9, $0, 0x1
and $10, $8, $9
sw $10, 408($0)
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xffff
and $10, $8, $9
sw $10, 412($0)
ori $8, $0, 0x1
lui $9, 0x7fff
ori $9, $9, 0xffff
and $10, $8, $9
sw $10, 416($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0
and $10, $8, $9
sw $10, 420($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
and $10, $8, $9
sw $10, 424($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xffff
and $10, $8, $9
sw $10, 428($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
and $10, $8, $9
sw $10, 432($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
and $10, $8, $9
sw $10, 436($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
and $10, $8, $9
sw $10, 440($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
and $10, $8, $9
sw $10, 444($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
and $10, $8, $9
sw $10, 448($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
and $10, $8, $9
sw $10, 452($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0
and $10, $8, $9
sw $10, 456($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0x1
and $10, $8, $9
sw $10, 460($0)
lui $8, 0x8000
ori $8, $8, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
and $10, $8, $9
sw $10, 464($0)
ori $8, $0, 0x305e
ori $9, $0, 0x124
and $10, $8, $9
sw $10, 468($0)
ori $8, $0, 0x491c
lui $9, 0xffff
ori $9, $9, 0xbbf3
and $10, $8, $9
sw $10, 472($0)
lui $8, 0xffff
ori $8, $8, 0xb249
lui $9, 0xffff
ori $9, $9, 0xb2fa
and $10, $8, $9
sw $10, 476($0)
# or
ori $8, $0, 0
ori $9, $0, 0
or $10, $8, $9
sw $10, 480($0)
ori $8, $0, 0
ori $9, $0, 0x1
or $10, $8, $9
sw $10, 484($0)
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xffff
or $10, $8, $9
sw $10, 488($0)
ori $8, $0, 0
lui $9, 0x7fff
ori $9, $9, 0xffff
or $10, $8, $9
sw $10, 492($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0
or $10, $8, $9
sw $10, 496($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0x1
or $10, $8, $9
sw $10, 500($0)
ori $8, $0, 0x1
ori $9, $0, 0x1
or $10, $8, $9
sw $10, 504($0)
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xffff
or $10, $8, $9
sw $10, 508($0)
ori $8, $0, 0x1
lui $9, 0x7fff
ori $9, $9, 0xffff
or $10, $8, $9
sw $10, 512($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0
or $10, $8, $9
sw $10, 516($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
or $10, $8, $9
sw $10, 520($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xffff
or $10, $8, $9
sw $10, 524($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
or $10, $8, $9
sw $10, 528($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
or $10, $8, $9
sw $10, 532($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
or $10, $8, $9
sw $10, 536($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
or $10, $8, $9
sw $10, 540($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
or $10, $8, $9
sw $10, 544($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
or $10, $8, $9
sw $10, 548($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0
or $10, $8, $9
sw $10, 552($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0x1
or $10, $8, $9
sw $10, 556($0)
lui $8, 0x8000
ori $8, $8, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
or $10, $8, $9
sw $10, 560($0)
ori $8, $0, 0x54de
ori $9, $0, 0x1547
or $10, $8, $9
sw $10, 564($0)
ori $8, $0, 0x2d12
lui $9, 0xffff
ori $9, $9, 0xc64d
or $10, $8, $9
sw $10, 568($0)
lui $8, 0xffff
ori $8, $8, 0xb238
lui $9, 0xffff
ori $9, $9, 0xf8b3
or $10, $8, $9
sw $10, 572($0)
# xor
ori $8, $0, 0
ori $9, $0, 0
xor $10, $8, $9
sw $10, 576($0)
ori $8, $0, 0
ori $9, $0, 0x1
xor $10, $8, $9
sw $10, 580($0)
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xffff
xor $10, $8, $9
sw $10, 584($0)
ori $8, $0, 0
lui $9, 0x7fff
ori $9, $9, 0xffff
xor $10, $8, $9
sw $10, 588($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0
xor $10, $8, $9
sw $10, 592($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0x1
xor $10, $8, $9
sw $10, 596($0)
ori $8, $0, 0x1
ori $9, $0, 0x1
xor $10, $8, $9
sw $10, 600($0)
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xffff
xor $10, $8, $9
sw $10, 604($0)
ori $8, $0, 0x1
lui $9, 0x7fff
ori $9, $9, 0xffff
xor $10, $8, $9
sw $10, 608($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0
xor $10, $8, $9
sw $10, 612($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
xor $10, $8, $9
sw $10, 616($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xffff
xor $10, $8, $9
sw $10, 620($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
xor $10, $8, $9
sw $10, 624($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
xor $10, $8, $9
sw $10, 628($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
xor $10, $8, $9
sw $10, 632($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
xor $10, $8, $9
sw $10, 636($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
xor $10, $8, $9
sw $10, 640($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
xor $10, $8, $9
sw $10, 644($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0
xor $10, $8, $9
sw $10, 648($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0x1
xor $10, $8, $9
sw $10, 652($0)
lui $8, 0x8000
ori $8, $8, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
xor $10, $8, $9
sw $10, 656($0)
ori $8, $0, 0x66bb
ori $9, $0, 0x6443
xor $10, $8, $9
sw $10, 660($0)
ori $8, $0, 0x26a6
lui $9, 0xffff
ori $9, $9, 0xbd75
xor $10, $8, $9
sw $10, 664($0)
lui $8, 0xffff
ori $8, $8, 0xa2fd
lui $9, 0xffff
ori $9, $9, 0x8fe1
xor $10, $8, $9
sw $10, 668($0)
# nor
ori $8, $0, 0
ori $9, $0, 0
nor $10, $8, $9
sw $10, 672($0)
ori $8, $0, 0
ori $9, $0, 0x1
nor $10, $8, $9
sw $10, 676($0)
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xffff
nor $10, $8, $9
sw $10, 680($0)
ori $8, $0, 0
lui $9, 0x7fff
ori $9, $9, 0xffff
nor $10, $8, $9
sw $10, 684($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0
nor $10, $8, $9
sw $10, 688($0)
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0x1
nor $10, $8, $9
sw $10, 692($0)
ori $8, $0, 0x1
ori $9, $0, 0x1
nor $10, $8, $9
sw $10, 696($0)
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xffff
nor $10, $8, $9
sw $10, 700($0)
ori $8, $0, 0x1
lui $9, 0x7fff
ori $9, $9, 0xffff
nor $10, $8, $9
sw $10, 704($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0
nor $10, $8, $9
sw $10, 708($0)
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
nor $10, $8, $9
sw $10, 712($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xffff
nor $10, $8, $9
sw $10, 716($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
nor $10, $8, $9
sw $10, 720($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
nor $10, $8, $9
sw $10, 724($0)
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
nor $10, $8, $9
sw $10, 728($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
nor $10, $8, $9
sw $10, 732($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
nor $10, $8, $9
sw $10, 736($0)
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0x1
nor $10, $8, $9
sw $10, 740($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0
nor $10, $8, $9
sw $10, 744($0)
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0x1
nor $10, $8, $9
sw $10, 748($0)
lui $8, 0x8000
ori $8, $8, 0x1
lui $9, 0x8000
ori $9, $9, 0x1
nor $10, $8, $9
sw $10, 752($0)
ori $8, $0, 0x767d
ori $9, $0, 0x7a5a
nor $10, $8, $9
sw $10, 756($0)
ori $8, $0, 0x1238
lui $9, 0xffff
ori $9, $9, 0xbaf7
nor $10, $8, $9
sw $10, 760($0)
lui $8, 0xffff
ori $8, $8, 0xe1e1
lui $9, 0xffff
ori $9, $9, 0xc4db
nor $10, $8, $9
sw $10, 764($0)
