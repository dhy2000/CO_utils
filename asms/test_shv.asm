# Test Shift Instructions
# sllv, srlv, srav
# test(sllv)
ori $9, $0, 0
ori $8, $0, 0
sllv $10, $9, $8
sw $10, 0($0)
ori $9, $0, 0
ori $8, $0, 0x520
sllv $10, $9, $8
sw $10, 4($0)
ori $9, $0, 0
ori $8, $0, 0x1
sllv $10, $9, $8
sw $10, 8($0)
ori $9, $0, 0
lui $8, 0x9
ori $8, $8, 0x461
sllv $10, $9, $8
sw $10, 12($0)
ori $9, $0, 0
ori $8, $0, 0x2
sllv $10, $9, $8
sw $10, 16($0)
ori $9, $0, 0
lui $8, 0x3
ori $8, $8, 0x17c2
sllv $10, $9, $8
sw $10, 20($0)
ori $9, $0, 0
ori $8, $0, 0x5
sllv $10, $9, $8
sw $10, 24($0)
ori $9, $0, 0
lui $8, 0xc
ori $8, $8, 0xf085
sllv $10, $9, $8
sw $10, 28($0)
ori $9, $0, 0
ori $8, $0, 0x10
sllv $10, $9, $8
sw $10, 32($0)
ori $9, $0, 0
lui $8, 0x9
ori $8, $8, 0x5c30
sllv $10, $9, $8
sw $10, 36($0)
ori $9, $0, 0
ori $8, $0, 0x1f
sllv $10, $9, $8
sw $10, 40($0)
ori $9, $0, 0
lui $8, 0x7
ori $8, $8, 0xad9f
sllv $10, $9, $8
sw $10, 44($0)
ori $9, $0, 0x1
ori $8, $0, 0
sllv $10, $9, $8
sw $10, 48($0)
ori $9, $0, 0x1
lui $8, 0x5
ori $8, $8, 0x9ac0
sllv $10, $9, $8
sw $10, 52($0)
ori $9, $0, 0x1
ori $8, $0, 0x1
sllv $10, $9, $8
sw $10, 56($0)
ori $9, $0, 0x1
lui $8, 0xe
ori $8, $8, 0x55c1
sllv $10, $9, $8
sw $10, 60($0)
ori $9, $0, 0x1
ori $8, $0, 0x2
sllv $10, $9, $8
sw $10, 64($0)
ori $9, $0, 0x1
lui $8, 0xd
ori $8, $8, 0x2a42
sllv $10, $9, $8
sw $10, 68($0)
ori $9, $0, 0x1
ori $8, $0, 0x5
sllv $10, $9, $8
sw $10, 72($0)
ori $9, $0, 0x1
lui $8, 0xb
ori $8, $8, 0xf205
sllv $10, $9, $8
sw $10, 76($0)
ori $9, $0, 0x1
ori $8, $0, 0x10
sllv $10, $9, $8
sw $10, 80($0)
ori $9, $0, 0x1
lui $8, 0x2
ori $8, $8, 0xc930
sllv $10, $9, $8
sw $10, 84($0)
ori $9, $0, 0x1
ori $8, $0, 0x1f
sllv $10, $9, $8
sw $10, 88($0)
ori $9, $0, 0x1
lui $8, 0xd
ori $8, $8, 0xbe3f
sllv $10, $9, $8
sw $10, 92($0)
lui $9, 0xffff
ori $9, $9, 0xffff
ori $8, $0, 0
sllv $10, $9, $8
sw $10, 96($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0xb
ori $8, $8, 0x5e20
sllv $10, $9, $8
sw $10, 100($0)
lui $9, 0xffff
ori $9, $9, 0xffff
ori $8, $0, 0x1
sllv $10, $9, $8
sw $10, 104($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x8
ori $8, $8, 0x3761
sllv $10, $9, $8
sw $10, 108($0)
lui $9, 0xffff
ori $9, $9, 0xffff
ori $8, $0, 0x2
sllv $10, $9, $8
sw $10, 112($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x4
ori $8, $8, 0xdd22
sllv $10, $9, $8
sw $10, 116($0)
lui $9, 0xffff
ori $9, $9, 0xffff
ori $8, $0, 0x5
sllv $10, $9, $8
sw $10, 120($0)
lui $9, 0xffff
ori $9, $9, 0xffff
ori $8, $0, 0x3d65
sllv $10, $9, $8
sw $10, 124($0)
lui $9, 0xffff
ori $9, $9, 0xffff
ori $8, $0, 0x10
sllv $10, $9, $8
sw $10, 128($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x1
ori $8, $8, 0x7670
sllv $10, $9, $8
sw $10, 132($0)
lui $9, 0xffff
ori $9, $9, 0xffff
ori $8, $0, 0x1f
sllv $10, $9, $8
sw $10, 136($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x5
ori $8, $8, 0xd4df
sllv $10, $9, $8
sw $10, 140($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
ori $8, $0, 0
sllv $10, $9, $8
sw $10, 144($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0x2
ori $8, $8, 0x5b60
sllv $10, $9, $8
sw $10, 148($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
ori $8, $0, 0x1
sllv $10, $9, $8
sw $10, 152($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0x2
ori $8, $8, 0xa781
sllv $10, $9, $8
sw $10, 156($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
ori $8, $0, 0x2
sllv $10, $9, $8
sw $10, 160($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0xf
ori $8, $8, 0xd0e2
sllv $10, $9, $8
sw $10, 164($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
ori $8, $0, 0x5
sllv $10, $9, $8
sw $10, 168($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0x7
ori $8, $8, 0x2185
sllv $10, $9, $8
sw $10, 172($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
ori $8, $0, 0x10
sllv $10, $9, $8
sw $10, 176($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0x1
ori $8, $8, 0xe7d0
sllv $10, $9, $8
sw $10, 180($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
ori $8, $0, 0x1f
sllv $10, $9, $8
sw $10, 184($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
ori $8, $0, 0x133f
sllv $10, $9, $8
sw $10, 188($0)
lui $9, 0x8000
ori $9, $9, 0
ori $8, $0, 0
sllv $10, $9, $8
sw $10, 192($0)
lui $9, 0x8000
ori $9, $9, 0
ori $8, $0, 0x2480
sllv $10, $9, $8
sw $10, 196($0)
lui $9, 0x8000
ori $9, $9, 0
ori $8, $0, 0x1
sllv $10, $9, $8
sw $10, 200($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0x6
ori $8, $8, 0xbc1
sllv $10, $9, $8
sw $10, 204($0)
lui $9, 0x8000
ori $9, $9, 0
ori $8, $0, 0x2
sllv $10, $9, $8
sw $10, 208($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0x8
ori $8, $8, 0x81a2
sllv $10, $9, $8
sw $10, 212($0)
lui $9, 0x8000
ori $9, $9, 0
ori $8, $0, 0x5
sllv $10, $9, $8
sw $10, 216($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0x9
ori $8, $8, 0x2385
sllv $10, $9, $8
sw $10, 220($0)
lui $9, 0x8000
ori $9, $9, 0
ori $8, $0, 0x10
sllv $10, $9, $8
sw $10, 224($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0x9
ori $8, $8, 0xa0d0
sllv $10, $9, $8
sw $10, 228($0)
lui $9, 0x8000
ori $9, $9, 0
ori $8, $0, 0x1f
sllv $10, $9, $8
sw $10, 232($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0x9
ori $8, $8, 0xb6ff
sllv $10, $9, $8
sw $10, 236($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
ori $8, $0, 0
sllv $10, $9, $8
sw $10, 240($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x2
ori $8, $8, 0xa8e0
sllv $10, $9, $8
sw $10, 244($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
ori $8, $0, 0x1
sllv $10, $9, $8
sw $10, 248($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0xa
ori $8, $8, 0x9bc1
sllv $10, $9, $8
sw $10, 252($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
ori $8, $0, 0x2
sllv $10, $9, $8
sw $10, 256($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x7
ori $8, $8, 0x3662
sllv $10, $9, $8
sw $10, 260($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
ori $8, $0, 0x5
sllv $10, $9, $8
sw $10, 264($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x5
ori $8, $8, 0xa245
sllv $10, $9, $8
sw $10, 268($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
ori $8, $0, 0x10
sllv $10, $9, $8
sw $10, 272($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
ori $8, $0, 0xe9b0
sllv $10, $9, $8
sw $10, 276($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
ori $8, $0, 0x1f
sllv $10, $9, $8
sw $10, 280($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x9
ori $8, $8, 0xb91f
sllv $10, $9, $8
sw $10, 284($0)
lui $9, 0x125
ori $9, $9, 0xe591
ori $8, $0, 0
sllv $10, $9, $8
sw $10, 288($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0xc
ori $8, $8, 0x8860
sllv $10, $9, $8
sw $10, 292($0)
lui $9, 0x125
ori $9, $9, 0xe591
ori $8, $0, 0x1
sllv $10, $9, $8
sw $10, 296($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0xc
ori $8, $8, 0xd761
sllv $10, $9, $8
sw $10, 300($0)
lui $9, 0x125
ori $9, $9, 0xe591
ori $8, $0, 0x2
sllv $10, $9, $8
sw $10, 304($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0x8
ori $8, $8, 0x5162
sllv $10, $9, $8
sw $10, 308($0)
lui $9, 0x125
ori $9, $9, 0xe591
ori $8, $0, 0x5
sllv $10, $9, $8
sw $10, 312($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0x4
ori $8, $8, 0xd4c5
sllv $10, $9, $8
sw $10, 316($0)
lui $9, 0x125
ori $9, $9, 0xe591
ori $8, $0, 0x10
sllv $10, $9, $8
sw $10, 320($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0xe
ori $8, $8, 0x3f0
sllv $10, $9, $8
sw $10, 324($0)
lui $9, 0x125
ori $9, $9, 0xe591
ori $8, $0, 0x1f
sllv $10, $9, $8
sw $10, 328($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0xb
ori $8, $8, 0xa07f
sllv $10, $9, $8
sw $10, 332($0)
# test(srlv)
ori $9, $0, 0
lui $8, 0xf
ori $8, $8, 0x4b40
srlv $10, $9, $8
sw $10, 336($0)
ori $9, $0, 0
lui $8, 0xe
ori $8, $8, 0xcfa1
srlv $10, $9, $8
sw $10, 340($0)
ori $9, $0, 0
lui $8, 0x8
ori $8, $8, 0xa122
srlv $10, $9, $8
sw $10, 344($0)
ori $9, $0, 0
lui $8, 0x2
ori $8, $8, 0x4705
srlv $10, $9, $8
sw $10, 348($0)
ori $9, $0, 0
lui $8, 0x7
ori $8, $8, 0x64b0
srlv $10, $9, $8
sw $10, 352($0)
ori $9, $0, 0
lui $8, 0x3
ori $8, $8, 0xc3ff
srlv $10, $9, $8
sw $10, 356($0)
ori $9, $0, 0x1
lui $8, 0xd
ori $8, $8, 0xcba0
srlv $10, $9, $8
sw $10, 360($0)
ori $9, $0, 0x1
lui $8, 0x3
ori $8, $8, 0x5a81
srlv $10, $9, $8
sw $10, 364($0)
ori $9, $0, 0x1
lui $8, 0xc
ori $8, $8, 0x7962
srlv $10, $9, $8
sw $10, 368($0)
ori $9, $0, 0x1
lui $8, 0xd
ori $8, $8, 0x7f85
srlv $10, $9, $8
sw $10, 372($0)
ori $9, $0, 0x1
lui $8, 0xf
ori $8, $8, 0xf2d0
srlv $10, $9, $8
sw $10, 376($0)
ori $9, $0, 0x1
lui $8, 0xf
ori $8, $8, 0xfebf
srlv $10, $9, $8
sw $10, 380($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x9
ori $8, $8, 0xc8a0
srlv $10, $9, $8
sw $10, 384($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x6
ori $8, $8, 0x4761
srlv $10, $9, $8
sw $10, 388($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x4
ori $8, $8, 0x4262
srlv $10, $9, $8
sw $10, 392($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x4
ori $8, $8, 0xc1a5
srlv $10, $9, $8
sw $10, 396($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0xd
ori $8, $8, 0x7130
srlv $10, $9, $8
sw $10, 400($0)
lui $9, 0xffff
ori $9, $9, 0xffff
ori $8, $0, 0x615f
srlv $10, $9, $8
sw $10, 404($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0x6
ori $8, $8, 0x380
srlv $10, $9, $8
sw $10, 408($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0x1
ori $8, $8, 0x7b61
srlv $10, $9, $8
sw $10, 412($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0xa
ori $8, $8, 0xd5c2
srlv $10, $9, $8
sw $10, 416($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
ori $8, $0, 0xe645
srlv $10, $9, $8
sw $10, 420($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
ori $8, $0, 0x2410
srlv $10, $9, $8
sw $10, 424($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0xe
ori $8, $8, 0xb35f
srlv $10, $9, $8
sw $10, 428($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0x4
ori $8, $8, 0x6a00
srlv $10, $9, $8
sw $10, 432($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0x4
ori $8, $8, 0x5dc1
srlv $10, $9, $8
sw $10, 436($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0x9
ori $8, $8, 0x6802
srlv $10, $9, $8
sw $10, 440($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0xb
ori $8, $8, 0xf05
srlv $10, $9, $8
sw $10, 444($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0xd
ori $8, $8, 0x66d0
srlv $10, $9, $8
sw $10, 448($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0xb
ori $8, $8, 0x9fbf
srlv $10, $9, $8
sw $10, 452($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x7
ori $8, $8, 0xc240
srlv $10, $9, $8
sw $10, 456($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x3
ori $8, $8, 0x4921
srlv $10, $9, $8
sw $10, 460($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0xb
ori $8, $8, 0xe642
srlv $10, $9, $8
sw $10, 464($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x7
ori $8, $8, 0x7ec5
srlv $10, $9, $8
sw $10, 468($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x7
ori $8, $8, 0x53d0
srlv $10, $9, $8
sw $10, 472($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0xf
ori $8, $8, 0x2fbf
srlv $10, $9, $8
sw $10, 476($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0xb
ori $8, $8, 0xe920
srlv $10, $9, $8
sw $10, 480($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0x1
ori $8, $8, 0xbb81
srlv $10, $9, $8
sw $10, 484($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0x9
ori $8, $8, 0x95a2
srlv $10, $9, $8
sw $10, 488($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0x6
ori $8, $8, 0x29e5
srlv $10, $9, $8
sw $10, 492($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0xb
ori $8, $8, 0xc290
srlv $10, $9, $8
sw $10, 496($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0x9
ori $8, $8, 0xbe5f
srlv $10, $9, $8
sw $10, 500($0)
# test(srav)
ori $9, $0, 0
lui $8, 0x9
ori $8, $8, 0x2880
srav $10, $9, $8
sw $10, 504($0)
ori $9, $0, 0
lui $8, 0x5
ori $8, $8, 0xc801
srav $10, $9, $8
sw $10, 508($0)
ori $9, $0, 0
lui $8, 0x2
ori $8, $8, 0x6cc2
srav $10, $9, $8
sw $10, 512($0)
ori $9, $0, 0
lui $8, 0x3
ori $8, $8, 0x9a05
srav $10, $9, $8
sw $10, 516($0)
ori $9, $0, 0
lui $8, 0x6
ori $8, $8, 0xcd70
srav $10, $9, $8
sw $10, 520($0)
ori $9, $0, 0
lui $8, 0xc
ori $8, $8, 0xd89f
srav $10, $9, $8
sw $10, 524($0)
ori $9, $0, 0x1
lui $8, 0x8
ori $8, $8, 0x4600
srav $10, $9, $8
sw $10, 528($0)
ori $9, $0, 0x1
lui $8, 0xf
ori $8, $8, 0xd6e1
srav $10, $9, $8
sw $10, 532($0)
ori $9, $0, 0x1
lui $8, 0xc
ori $8, $8, 0x642
srav $10, $9, $8
sw $10, 536($0)
ori $9, $0, 0x1
lui $8, 0x5
ori $8, $8, 0x8765
srav $10, $9, $8
sw $10, 540($0)
ori $9, $0, 0x1
lui $8, 0x2
ori $8, $8, 0xb430
srav $10, $9, $8
sw $10, 544($0)
ori $9, $0, 0x1
lui $8, 0xa
ori $8, $8, 0x845f
srav $10, $9, $8
sw $10, 548($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x7
ori $8, $8, 0xdec0
srav $10, $9, $8
sw $10, 552($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x1
ori $8, $8, 0x441
srav $10, $9, $8
sw $10, 556($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0xb
ori $8, $8, 0x3222
srav $10, $9, $8
sw $10, 560($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x8
ori $8, $8, 0x13a5
srav $10, $9, $8
sw $10, 564($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0x2
ori $8, $8, 0x5c30
srav $10, $9, $8
sw $10, 568($0)
lui $9, 0xffff
ori $9, $9, 0xffff
lui $8, 0xf
ori $8, $8, 0x317f
srav $10, $9, $8
sw $10, 572($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0x2
ori $8, $8, 0x43e0
srav $10, $9, $8
sw $10, 576($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0xe
ori $8, $8, 0x7b41
srav $10, $9, $8
sw $10, 580($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0xb
ori $8, $8, 0x1602
srav $10, $9, $8
sw $10, 584($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0x4
ori $8, $8, 0xd945
srav $10, $9, $8
sw $10, 588($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0x6
ori $8, $8, 0xd330
srav $10, $9, $8
sw $10, 592($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
lui $8, 0x1
ori $8, $8, 0x205f
srav $10, $9, $8
sw $10, 596($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0xf
ori $8, $8, 0x7720
srav $10, $9, $8
sw $10, 600($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0xa
ori $8, $8, 0xee41
srav $10, $9, $8
sw $10, 604($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0x2
ori $8, $8, 0x73a2
srav $10, $9, $8
sw $10, 608($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0xe
ori $8, $8, 0x925
srav $10, $9, $8
sw $10, 612($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0xd
ori $8, $8, 0x2590
srav $10, $9, $8
sw $10, 616($0)
lui $9, 0x8000
ori $9, $9, 0
lui $8, 0x9
ori $8, $8, 0x501f
srav $10, $9, $8
sw $10, 620($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x3
ori $8, $8, 0xfc0
srav $10, $9, $8
sw $10, 624($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x2
ori $8, $8, 0xd8a1
srav $10, $9, $8
sw $10, 628($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0xd
ori $8, $8, 0x1322
srav $10, $9, $8
sw $10, 632($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x7
ori $8, $8, 0x9aa5
srav $10, $9, $8
sw $10, 636($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x2
ori $8, $8, 0x7d30
srav $10, $9, $8
sw $10, 640($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
lui $8, 0x8
ori $8, $8, 0x101f
srav $10, $9, $8
sw $10, 644($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0xb
ori $8, $8, 0xb640
srav $10, $9, $8
sw $10, 648($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0x6
ori $8, $8, 0x7d41
srav $10, $9, $8
sw $10, 652($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0x4
ori $8, $8, 0x7922
srav $10, $9, $8
sw $10, 656($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0x9
ori $8, $8, 0x1985
srav $10, $9, $8
sw $10, 660($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0xa
ori $8, $8, 0xea70
srav $10, $9, $8
sw $10, 664($0)
lui $9, 0x125
ori $9, $9, 0xe591
lui $8, 0xc
ori $8, $8, 0x17ff
srav $10, $9, $8
sw $10, 668($0)
