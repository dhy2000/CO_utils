# Test I-Type Instructions (Arithmetics)
# lui, ori, sw + addi, andi, ori, xori, lui, slti, sltiu
ori $16, $0, 0x1000
# addiu
ori $8, $0, 0
addiu $9, $8, 0
sw $9, 0($0)
sw $9, 0($16)
ori $8, $0, 0
addiu $9, $8, 1
sw $9, 4($0)
sw $9, 4($16)
ori $8, $0, 0
addiu $9, $8, -1
sw $9, 8($0)
sw $9, 8($16)
ori $8, $0, 0
addiu $9, $8, 32767
sw $9, 12($0)
sw $9, 12($16)
ori $8, $0, 0
addiu $9, $8, -2073
sw $9, 16($0)
sw $9, 16($16)
ori $8, $0, 0
addiu $9, $8, 3015
sw $9, 20($0)
sw $9, 20($16)
ori $8, $0, 0x1
addiu $9, $8, 0
sw $9, 24($0)
sw $9, 24($16)
ori $8, $0, 0x1
addiu $9, $8, 1
sw $9, 28($0)
sw $9, 28($16)
ori $8, $0, 0x1
addiu $9, $8, -1
sw $9, 32($0)
sw $9, 32($16)
ori $8, $0, 0x1
addiu $9, $8, 32767
sw $9, 36($0)
sw $9, 36($16)
ori $8, $0, 0x1
addiu $9, $8, -2073
sw $9, 40($0)
sw $9, 40($16)
ori $8, $0, 0x1
addiu $9, $8, 3015
sw $9, 44($0)
sw $9, 44($16)
lui $8, 0xffff
ori $8, $8, 0xffff
addiu $9, $8, 0
sw $9, 48($0)
sw $9, 48($16)
lui $8, 0xffff
ori $8, $8, 0xffff
addiu $9, $8, 1
sw $9, 52($0)
sw $9, 52($16)
lui $8, 0xffff
ori $8, $8, 0xffff
addiu $9, $8, -1
sw $9, 56($0)
sw $9, 56($16)
lui $8, 0xffff
ori $8, $8, 0xffff
addiu $9, $8, 32767
sw $9, 60($0)
sw $9, 60($16)
lui $8, 0xffff
ori $8, $8, 0xffff
addiu $9, $8, -2073
sw $9, 64($0)
sw $9, 64($16)
lui $8, 0xffff
ori $8, $8, 0xffff
addiu $9, $8, 3015
sw $9, 68($0)
sw $9, 68($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
addiu $9, $8, 0
sw $9, 72($0)
sw $9, 72($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
addiu $9, $8, 1
sw $9, 76($0)
sw $9, 76($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
addiu $9, $8, -1
sw $9, 80($0)
sw $9, 80($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
addiu $9, $8, 32767
sw $9, 84($0)
sw $9, 84($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
addiu $9, $8, -2073
sw $9, 88($0)
sw $9, 88($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
addiu $9, $8, 3015
sw $9, 92($0)
sw $9, 92($16)
lui $8, 0x8000
ori $8, $8, 0
addiu $9, $8, 0
sw $9, 96($0)
sw $9, 96($16)
lui $8, 0x8000
ori $8, $8, 0
addiu $9, $8, 1
sw $9, 100($0)
sw $9, 100($16)
lui $8, 0x8000
ori $8, $8, 0
addiu $9, $8, -1
sw $9, 104($0)
sw $9, 104($16)
lui $8, 0x8000
ori $8, $8, 0
addiu $9, $8, 32767
sw $9, 108($0)
sw $9, 108($16)
lui $8, 0x8000
ori $8, $8, 0
addiu $9, $8, -2073
sw $9, 112($0)
sw $9, 112($16)
lui $8, 0x8000
ori $8, $8, 0
addiu $9, $8, 3015
sw $9, 116($0)
sw $9, 116($16)
ori $8, $0, 0x22e4
addiu $9, $8, 948
sw $9, 120($0)
sw $9, 120($16)
ori $8, $0, 0x4de8
addiu $9, $8, -29309
sw $9, 124($0)
sw $9, 124($16)
lui $8, 0xffff
ori $8, $8, 0xcbe7
addiu $9, $8, 10227
sw $9, 128($0)
sw $9, 128($16)
lui $8, 0xffff
ori $8, $8, 0xcc6e
addiu $9, $8, -25414
sw $9, 132($0)
sw $9, 132($16)
# andi
ori $8, $0, 0
andi $9, $8, 0
sw $9, 136($0)
sw $9, 136($16)
ori $8, $0, 0
andi $9, $8, 1
sw $9, 140($0)
sw $9, 140($16)
ori $8, $0, 0
andi $9, $8, 65535
sw $9, 144($0)
sw $9, 144($16)
ori $8, $0, 0
andi $9, $8, 32767
sw $9, 148($0)
sw $9, 148($16)
ori $8, $0, 0
andi $9, $8, 63463
sw $9, 152($0)
sw $9, 152($16)
ori $8, $0, 0
andi $9, $8, 3015
sw $9, 156($0)
sw $9, 156($16)
ori $8, $0, 0x1
andi $9, $8, 0
sw $9, 160($0)
sw $9, 160($16)
ori $8, $0, 0x1
andi $9, $8, 1
sw $9, 164($0)
sw $9, 164($16)
ori $8, $0, 0x1
andi $9, $8, 65535
sw $9, 168($0)
sw $9, 168($16)
ori $8, $0, 0x1
andi $9, $8, 32767
sw $9, 172($0)
sw $9, 172($16)
ori $8, $0, 0x1
andi $9, $8, 63463
sw $9, 176($0)
sw $9, 176($16)
ori $8, $0, 0x1
andi $9, $8, 3015
sw $9, 180($0)
sw $9, 180($16)
lui $8, 0xffff
ori $8, $8, 0xffff
andi $9, $8, 0
sw $9, 184($0)
sw $9, 184($16)
lui $8, 0xffff
ori $8, $8, 0xffff
andi $9, $8, 1
sw $9, 188($0)
sw $9, 188($16)
lui $8, 0xffff
ori $8, $8, 0xffff
andi $9, $8, 65535
sw $9, 192($0)
sw $9, 192($16)
lui $8, 0xffff
ori $8, $8, 0xffff
andi $9, $8, 32767
sw $9, 196($0)
sw $9, 196($16)
lui $8, 0xffff
ori $8, $8, 0xffff
andi $9, $8, 63463
sw $9, 200($0)
sw $9, 200($16)
lui $8, 0xffff
ori $8, $8, 0xffff
andi $9, $8, 3015
sw $9, 204($0)
sw $9, 204($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
andi $9, $8, 0
sw $9, 208($0)
sw $9, 208($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
andi $9, $8, 1
sw $9, 212($0)
sw $9, 212($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
andi $9, $8, 65535
sw $9, 216($0)
sw $9, 216($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
andi $9, $8, 32767
sw $9, 220($0)
sw $9, 220($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
andi $9, $8, 63463
sw $9, 224($0)
sw $9, 224($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
andi $9, $8, 3015
sw $9, 228($0)
sw $9, 228($16)
lui $8, 0x8000
ori $8, $8, 0
andi $9, $8, 0
sw $9, 232($0)
sw $9, 232($16)
lui $8, 0x8000
ori $8, $8, 0
andi $9, $8, 1
sw $9, 236($0)
sw $9, 236($16)
lui $8, 0x8000
ori $8, $8, 0
andi $9, $8, 65535
sw $9, 240($0)
sw $9, 240($16)
lui $8, 0x8000
ori $8, $8, 0
andi $9, $8, 32767
sw $9, 244($0)
sw $9, 244($16)
lui $8, 0x8000
ori $8, $8, 0
andi $9, $8, 63463
sw $9, 248($0)
sw $9, 248($16)
lui $8, 0x8000
ori $8, $8, 0
andi $9, $8, 3015
sw $9, 252($0)
sw $9, 252($16)
ori $8, $0, 0x2551
andi $9, $8, 24352
sw $9, 256($0)
sw $9, 256($16)
ori $8, $0, 0x23c6
andi $9, $8, 41570
sw $9, 260($0)
sw $9, 260($16)
lui $8, 0xffff
ori $8, $8, 0xfce1
andi $9, $8, 5392
sw $9, 264($0)
sw $9, 264($16)
lui $8, 0xffff
ori $8, $8, 0x8f3c
andi $9, $8, 62560
sw $9, 268($0)
sw $9, 268($16)
# ori
ori $8, $0, 0
ori $9, $8, 0
sw $9, 272($0)
sw $9, 272($16)
ori $8, $0, 0
ori $9, $8, 1
sw $9, 276($0)
sw $9, 276($16)
ori $8, $0, 0
ori $9, $8, 65535
sw $9, 280($0)
sw $9, 280($16)
ori $8, $0, 0
ori $9, $8, 32767
sw $9, 284($0)
sw $9, 284($16)
ori $8, $0, 0
ori $9, $8, 63463
sw $9, 288($0)
sw $9, 288($16)
ori $8, $0, 0
ori $9, $8, 3015
sw $9, 292($0)
sw $9, 292($16)
ori $8, $0, 0x1
ori $9, $8, 0
sw $9, 296($0)
sw $9, 296($16)
ori $8, $0, 0x1
ori $9, $8, 1
sw $9, 300($0)
sw $9, 300($16)
ori $8, $0, 0x1
ori $9, $8, 65535
sw $9, 304($0)
sw $9, 304($16)
ori $8, $0, 0x1
ori $9, $8, 32767
sw $9, 308($0)
sw $9, 308($16)
ori $8, $0, 0x1
ori $9, $8, 63463
sw $9, 312($0)
sw $9, 312($16)
ori $8, $0, 0x1
ori $9, $8, 3015
sw $9, 316($0)
sw $9, 316($16)
lui $8, 0xffff
ori $8, $8, 0xffff
ori $9, $8, 0
sw $9, 320($0)
sw $9, 320($16)
lui $8, 0xffff
ori $8, $8, 0xffff
ori $9, $8, 1
sw $9, 324($0)
sw $9, 324($16)
lui $8, 0xffff
ori $8, $8, 0xffff
ori $9, $8, 65535
sw $9, 328($0)
sw $9, 328($16)
lui $8, 0xffff
ori $8, $8, 0xffff
ori $9, $8, 32767
sw $9, 332($0)
sw $9, 332($16)
lui $8, 0xffff
ori $8, $8, 0xffff
ori $9, $8, 63463
sw $9, 336($0)
sw $9, 336($16)
lui $8, 0xffff
ori $8, $8, 0xffff
ori $9, $8, 3015
sw $9, 340($0)
sw $9, 340($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
ori $9, $8, 0
sw $9, 344($0)
sw $9, 344($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
ori $9, $8, 1
sw $9, 348($0)
sw $9, 348($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
ori $9, $8, 65535
sw $9, 352($0)
sw $9, 352($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
ori $9, $8, 32767
sw $9, 356($0)
sw $9, 356($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
ori $9, $8, 63463
sw $9, 360($0)
sw $9, 360($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
ori $9, $8, 3015
sw $9, 364($0)
sw $9, 364($16)
lui $8, 0x8000
ori $8, $8, 0
ori $9, $8, 0
sw $9, 368($0)
sw $9, 368($16)
lui $8, 0x8000
ori $8, $8, 0
ori $9, $8, 1
sw $9, 372($0)
sw $9, 372($16)
lui $8, 0x8000
ori $8, $8, 0
ori $9, $8, 65535
sw $9, 376($0)
sw $9, 376($16)
lui $8, 0x8000
ori $8, $8, 0
ori $9, $8, 32767
sw $9, 380($0)
sw $9, 380($16)
lui $8, 0x8000
ori $8, $8, 0
ori $9, $8, 63463
sw $9, 384($0)
sw $9, 384($16)
lui $8, 0x8000
ori $8, $8, 0
ori $9, $8, 3015
sw $9, 388($0)
sw $9, 388($16)
ori $8, $0, 0x1bdc
ori $9, $8, 8532
sw $9, 392($0)
sw $9, 392($16)
ori $8, $0, 0x16d5
ori $9, $8, 48372
sw $9, 396($0)
sw $9, 396($16)
lui $8, 0xffff
ori $8, $8, 0x9dc2
ori $9, $8, 22112
sw $9, 400($0)
sw $9, 400($16)
lui $8, 0xffff
ori $8, $8, 0xac80
ori $9, $8, 53871
sw $9, 404($0)
sw $9, 404($16)
# xori
ori $8, $0, 0
xori $9, $8, 0
sw $9, 408($0)
sw $9, 408($16)
ori $8, $0, 0
xori $9, $8, 1
sw $9, 412($0)
sw $9, 412($16)
ori $8, $0, 0
xori $9, $8, 65535
sw $9, 416($0)
sw $9, 416($16)
ori $8, $0, 0
xori $9, $8, 32767
sw $9, 420($0)
sw $9, 420($16)
ori $8, $0, 0
xori $9, $8, 63463
sw $9, 424($0)
sw $9, 424($16)
ori $8, $0, 0
xori $9, $8, 3015
sw $9, 428($0)
sw $9, 428($16)
ori $8, $0, 0x1
xori $9, $8, 0
sw $9, 432($0)
sw $9, 432($16)
ori $8, $0, 0x1
xori $9, $8, 1
sw $9, 436($0)
sw $9, 436($16)
ori $8, $0, 0x1
xori $9, $8, 65535
sw $9, 440($0)
sw $9, 440($16)
ori $8, $0, 0x1
xori $9, $8, 32767
sw $9, 444($0)
sw $9, 444($16)
ori $8, $0, 0x1
xori $9, $8, 63463
sw $9, 448($0)
sw $9, 448($16)
ori $8, $0, 0x1
xori $9, $8, 3015
sw $9, 452($0)
sw $9, 452($16)
lui $8, 0xffff
ori $8, $8, 0xffff
xori $9, $8, 0
sw $9, 456($0)
sw $9, 456($16)
lui $8, 0xffff
ori $8, $8, 0xffff
xori $9, $8, 1
sw $9, 460($0)
sw $9, 460($16)
lui $8, 0xffff
ori $8, $8, 0xffff
xori $9, $8, 65535
sw $9, 464($0)
sw $9, 464($16)
lui $8, 0xffff
ori $8, $8, 0xffff
xori $9, $8, 32767
sw $9, 468($0)
sw $9, 468($16)
lui $8, 0xffff
ori $8, $8, 0xffff
xori $9, $8, 63463
sw $9, 472($0)
sw $9, 472($16)
lui $8, 0xffff
ori $8, $8, 0xffff
xori $9, $8, 3015
sw $9, 476($0)
sw $9, 476($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
xori $9, $8, 0
sw $9, 480($0)
sw $9, 480($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
xori $9, $8, 1
sw $9, 484($0)
sw $9, 484($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
xori $9, $8, 65535
sw $9, 488($0)
sw $9, 488($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
xori $9, $8, 32767
sw $9, 492($0)
sw $9, 492($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
xori $9, $8, 63463
sw $9, 496($0)
sw $9, 496($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
xori $9, $8, 3015
sw $9, 500($0)
sw $9, 500($16)
lui $8, 0x8000
ori $8, $8, 0
xori $9, $8, 0
sw $9, 504($0)
sw $9, 504($16)
lui $8, 0x8000
ori $8, $8, 0
xori $9, $8, 1
sw $9, 508($0)
sw $9, 508($16)
lui $8, 0x8000
ori $8, $8, 0
xori $9, $8, 65535
sw $9, 512($0)
sw $9, 512($16)
lui $8, 0x8000
ori $8, $8, 0
xori $9, $8, 32767
sw $9, 516($0)
sw $9, 516($16)
lui $8, 0x8000
ori $8, $8, 0
xori $9, $8, 63463
sw $9, 520($0)
sw $9, 520($16)
lui $8, 0x8000
ori $8, $8, 0
xori $9, $8, 3015
sw $9, 524($0)
sw $9, 524($16)
ori $8, $0, 0x5e2c
xori $9, $8, 3053
sw $9, 528($0)
sw $9, 528($16)
ori $8, $0, 0x3d00
xori $9, $8, 47540
sw $9, 532($0)
sw $9, 532($16)
lui $8, 0xffff
ori $8, $8, 0xe02f
xori $9, $8, 10395
sw $9, 536($0)
sw $9, 536($16)
lui $8, 0xffff
ori $8, $8, 0x920a
xori $9, $8, 44916
sw $9, 540($0)
sw $9, 540($16)
# slti
ori $8, $0, 0
slti $9, $8, 0
sw $9, 544($0)
sw $9, 544($16)
ori $8, $0, 0
slti $9, $8, 1
sw $9, 548($0)
sw $9, 548($16)
ori $8, $0, 0
slti $9, $8, -1
sw $9, 552($0)
sw $9, 552($16)
ori $8, $0, 0
slti $9, $8, 32767
sw $9, 556($0)
sw $9, 556($16)
ori $8, $0, 0
slti $9, $8, -2073
sw $9, 560($0)
sw $9, 560($16)
ori $8, $0, 0
slti $9, $8, 3015
sw $9, 564($0)
sw $9, 564($16)
ori $8, $0, 0x1
slti $9, $8, 0
sw $9, 568($0)
sw $9, 568($16)
ori $8, $0, 0x1
slti $9, $8, 1
sw $9, 572($0)
sw $9, 572($16)
ori $8, $0, 0x1
slti $9, $8, -1
sw $9, 576($0)
sw $9, 576($16)
ori $8, $0, 0x1
slti $9, $8, 32767
sw $9, 580($0)
sw $9, 580($16)
ori $8, $0, 0x1
slti $9, $8, -2073
sw $9, 584($0)
sw $9, 584($16)
ori $8, $0, 0x1
slti $9, $8, 3015
sw $9, 588($0)
sw $9, 588($16)
lui $8, 0xffff
ori $8, $8, 0xffff
slti $9, $8, 0
sw $9, 592($0)
sw $9, 592($16)
lui $8, 0xffff
ori $8, $8, 0xffff
slti $9, $8, 1
sw $9, 596($0)
sw $9, 596($16)
lui $8, 0xffff
ori $8, $8, 0xffff
slti $9, $8, -1
sw $9, 600($0)
sw $9, 600($16)
lui $8, 0xffff
ori $8, $8, 0xffff
slti $9, $8, 32767
sw $9, 604($0)
sw $9, 604($16)
lui $8, 0xffff
ori $8, $8, 0xffff
slti $9, $8, -2073
sw $9, 608($0)
sw $9, 608($16)
lui $8, 0xffff
ori $8, $8, 0xffff
slti $9, $8, 3015
sw $9, 612($0)
sw $9, 612($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
slti $9, $8, 0
sw $9, 616($0)
sw $9, 616($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
slti $9, $8, 1
sw $9, 620($0)
sw $9, 620($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
slti $9, $8, -1
sw $9, 624($0)
sw $9, 624($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
slti $9, $8, 32767
sw $9, 628($0)
sw $9, 628($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
slti $9, $8, -2073
sw $9, 632($0)
sw $9, 632($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
slti $9, $8, 3015
sw $9, 636($0)
sw $9, 636($16)
lui $8, 0x8000
ori $8, $8, 0
slti $9, $8, 0
sw $9, 640($0)
sw $9, 640($16)
lui $8, 0x8000
ori $8, $8, 0
slti $9, $8, 1
sw $9, 644($0)
sw $9, 644($16)
lui $8, 0x8000
ori $8, $8, 0
slti $9, $8, -1
sw $9, 648($0)
sw $9, 648($16)
lui $8, 0x8000
ori $8, $8, 0
slti $9, $8, 32767
sw $9, 652($0)
sw $9, 652($16)
lui $8, 0x8000
ori $8, $8, 0
slti $9, $8, -2073
sw $9, 656($0)
sw $9, 656($16)
lui $8, 0x8000
ori $8, $8, 0
slti $9, $8, 3015
sw $9, 660($0)
sw $9, 660($16)
ori $8, $0, 0x68f0
slti $9, $8, 28379
sw $9, 664($0)
sw $9, 664($16)
ori $8, $0, 0x195c
slti $9, $8, -11224
sw $9, 668($0)
sw $9, 668($16)
lui $8, 0xffff
ori $8, $8, 0xff89
slti $9, $8, 4364
sw $9, 672($0)
sw $9, 672($16)
lui $8, 0xffff
ori $8, $8, 0xe546
slti $9, $8, -10547
sw $9, 676($0)
sw $9, 676($16)
# sltiu
ori $8, $0, 0
sltiu $9, $8, 0
sw $9, 680($0)
sw $9, 680($16)
ori $8, $0, 0
sltiu $9, $8, 1
sw $9, 684($0)
sw $9, 684($16)
ori $8, $0, 0
sltiu $9, $8, -1
sw $9, 688($0)
sw $9, 688($16)
ori $8, $0, 0
sltiu $9, $8, 32767
sw $9, 692($0)
sw $9, 692($16)
ori $8, $0, 0
sltiu $9, $8, -2073
sw $9, 696($0)
sw $9, 696($16)
ori $8, $0, 0
sltiu $9, $8, 3015
sw $9, 700($0)
sw $9, 700($16)
ori $8, $0, 0x1
sltiu $9, $8, 0
sw $9, 704($0)
sw $9, 704($16)
ori $8, $0, 0x1
sltiu $9, $8, 1
sw $9, 708($0)
sw $9, 708($16)
ori $8, $0, 0x1
sltiu $9, $8, -1
sw $9, 712($0)
sw $9, 712($16)
ori $8, $0, 0x1
sltiu $9, $8, 32767
sw $9, 716($0)
sw $9, 716($16)
ori $8, $0, 0x1
sltiu $9, $8, -2073
sw $9, 720($0)
sw $9, 720($16)
ori $8, $0, 0x1
sltiu $9, $8, 3015
sw $9, 724($0)
sw $9, 724($16)
lui $8, 0xffff
ori $8, $8, 0xffff
sltiu $9, $8, 0
sw $9, 728($0)
sw $9, 728($16)
lui $8, 0xffff
ori $8, $8, 0xffff
sltiu $9, $8, 1
sw $9, 732($0)
sw $9, 732($16)
lui $8, 0xffff
ori $8, $8, 0xffff
sltiu $9, $8, -1
sw $9, 736($0)
sw $9, 736($16)
lui $8, 0xffff
ori $8, $8, 0xffff
sltiu $9, $8, 32767
sw $9, 740($0)
sw $9, 740($16)
lui $8, 0xffff
ori $8, $8, 0xffff
sltiu $9, $8, -2073
sw $9, 744($0)
sw $9, 744($16)
lui $8, 0xffff
ori $8, $8, 0xffff
sltiu $9, $8, 3015
sw $9, 748($0)
sw $9, 748($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
sltiu $9, $8, 0
sw $9, 752($0)
sw $9, 752($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
sltiu $9, $8, 1
sw $9, 756($0)
sw $9, 756($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
sltiu $9, $8, -1
sw $9, 760($0)
sw $9, 760($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
sltiu $9, $8, 32767
sw $9, 764($0)
sw $9, 764($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
sltiu $9, $8, -2073
sw $9, 768($0)
sw $9, 768($16)
lui $8, 0x7fff
ori $8, $8, 0xffff
sltiu $9, $8, 3015
sw $9, 772($0)
sw $9, 772($16)
lui $8, 0x8000
ori $8, $8, 0
sltiu $9, $8, 0
sw $9, 776($0)
sw $9, 776($16)
lui $8, 0x8000
ori $8, $8, 0
sltiu $9, $8, 1
sw $9, 780($0)
sw $9, 780($16)
lui $8, 0x8000
ori $8, $8, 0
sltiu $9, $8, -1
sw $9, 784($0)
sw $9, 784($16)
lui $8, 0x8000
ori $8, $8, 0
sltiu $9, $8, 32767
sw $9, 788($0)
sw $9, 788($16)
lui $8, 0x8000
ori $8, $8, 0
sltiu $9, $8, -2073
sw $9, 792($0)
sw $9, 792($16)
lui $8, 0x8000
ori $8, $8, 0
sltiu $9, $8, 3015
sw $9, 796($0)
sw $9, 796($16)
ori $8, $0, 0x6456
sltiu $9, $8, 20708
sw $9, 800($0)
sw $9, 800($16)
ori $8, $0, 0x569c
sltiu $9, $8, -17822
sw $9, 804($0)
sw $9, 804($16)
lui $8, 0xffff
ori $8, $8, 0xb26f
sltiu $9, $8, 11794
sw $9, 808($0)
sw $9, 808($16)
lui $8, 0xffff
ori $8, $8, 0x80bd
sltiu $9, $8, -28127
sw $9, 812($0)
sw $9, 812($16)
